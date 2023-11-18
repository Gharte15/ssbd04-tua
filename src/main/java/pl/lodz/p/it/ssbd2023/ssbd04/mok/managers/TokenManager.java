package pl.lodz.p.it.ssbd2023.ssbd04.mok.managers;

import jakarta.annotation.security.PermitAll;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.inject.Inject;
import jakarta.interceptor.Interceptors;
import org.eclipse.microprofile.config.Config;
import org.eclipse.microprofile.config.ConfigProvider;
import pl.lodz.p.it.ssbd2023.ssbd04.exceptions.InvalidTokenException;
import pl.lodz.p.it.ssbd2023.ssbd04.exceptions.TokenExpiredException;
import pl.lodz.p.it.ssbd2023.ssbd04.exceptions.AccountNotApprovedException;
import pl.lodz.p.it.ssbd2023.ssbd04.interceptors.GenericManagerExceptionsInterceptor;
import pl.lodz.p.it.ssbd2023.ssbd04.interceptors.TrackerInterceptor;
import pl.lodz.p.it.ssbd2023.ssbd04.entities.Token;
import pl.lodz.p.it.ssbd2023.ssbd04.entities.TokenType;
import pl.lodz.p.it.ssbd2023.ssbd04.entities.Account;
import pl.lodz.p.it.ssbd2023.ssbd04.mok.facades.TokenFacade;

import java.time.LocalDateTime;
import java.util.UUID;

@PermitAll
@Stateless
@TransactionAttribute(TransactionAttributeType.MANDATORY)
@Interceptors({GenericManagerExceptionsInterceptor.class, TrackerInterceptor.class})
public class TokenManager {

    @Inject
    private TokenFacade tokenFacade;

    Config config = ConfigProvider.getConfig();

    private void checkToken(Token token, TokenType tokenType) {
        if (LocalDateTime.now().isAfter(token.getExpiryDate())) {
            throw new TokenExpiredException();
        }
        if (token.getTokenType() != tokenType) {
            throw new InvalidTokenException();
        }
    }

    public Account findAccountByResetToken(String token) {
        Token resetToken = tokenFacade.findByToken(token);
        checkToken(resetToken, TokenType.RESET_PASSWORD);
        return resetToken.getAccount();
    }

    public Account findAccountByChangeEmailToken(String token) {
        Token changeEmailToken = tokenFacade.findByToken(token);
        checkToken(changeEmailToken, TokenType.CHANGE_EMAIL);
        return changeEmailToken.getAccount();
    }

    public Account findAccountByActivationToken(String token) {
        Token resetToken = tokenFacade.findByToken(token);
        checkToken(resetToken, TokenType.ACTIVATION);
        return resetToken.getAccount();
    }

    private void validateAccountForPasswordReset(Account account) {
        if (!account.isActive() || !account.isApproved() || account.isBlocked()) {
            throw new AccountNotApprovedException();
        }
    }

    public void removeUsedToken(String token){
        tokenFacade.remove(tokenFacade.findByToken(token));
    }


    public String generateResetPasswordToken(Account account) {
        validateAccountForPasswordReset(account);
        Token token = new Token(UUID.randomUUID().toString(), account, TokenType.RESET_PASSWORD);
        token.setExpiryDate(LocalDateTime.now().plusDays(config.getValue("token.expiration", Long.class)));
        tokenFacade.create(token);
        return token.getToken();
    }

    public String generateEmailChangeToken(Account account) {
        validateAccountForPasswordReset(account);
        Token token = new Token(UUID.randomUUID().toString(), account, TokenType.CHANGE_EMAIL);
        token.setExpiryDate(LocalDateTime.now().plusDays(config.getValue("token.expiration", Long.class)));
        tokenFacade.create(token);
        return token.getToken();
    }

    public String generateActivationToken(Account account) {
        Token token;
        if (!tokenFacade.findByAccountIDAndType(account, TokenType.ACTIVATION).isEmpty()) {
            token = tokenFacade.findByAccountIDAndType(account, TokenType.ACTIVATION).get(0);
            token.setExpiryDate(LocalDateTime.now().plusDays(config.getValue("token.expiration", Long.class)));
            tokenFacade.edit(token);
        } else {
            token = new Token(UUID.randomUUID().toString(), account, TokenType.ACTIVATION);
            tokenFacade.create(token);
        }
        return token.getToken();
    }

    public Token getObjByToken(String token){
        return tokenFacade.findByToken(token);
    }
}
