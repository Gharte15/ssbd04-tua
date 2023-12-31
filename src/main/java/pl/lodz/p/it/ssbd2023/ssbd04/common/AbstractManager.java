package pl.lodz.p.it.ssbd2023.ssbd04.common;

import jakarta.annotation.Resource;
import jakarta.ejb.*;
import lombok.Getter;

import java.util.concurrent.ThreadLocalRandom;
import java.util.logging.Level;
import java.util.logging.Logger;
public abstract class AbstractManager implements TransactionInterface {
    @Resource
    SessionContext sctx;

    protected static final Logger LOGGER = Logger.getGlobal();

    private String transactionId;


    @Getter
    private boolean lastTXRollback;


    @AfterBegin
    public void afterBegin() {
        transactionId = Long.toString(System.currentTimeMillis())
                + ThreadLocalRandom.current().nextLong(Long.MAX_VALUE);
        LOGGER.log(Level.INFO, "Transakcja TXid={0} rozpoczęta w {1}, "
                + " tożsamość: {2}", new Object[]{transactionId,
                this.getClass().getName(), sctx.getCallerPrincipal().getName()});
    }

    @BeforeCompletion
    public void beforeCompletion() {
        LOGGER.log(Level.INFO, "Transakcja TXid={0} przed zatwierdzeniem w"
                + " {1} tożsamość: {2}", new Object[]{transactionId,
                this.getClass().getName(), sctx.getCallerPrincipal().getName()});
    }

    @AfterCompletion
    public void afterCompletion(boolean committed) {
        lastTXRollback = !committed;
        LOGGER.log(Level.INFO, "Transakcja TXid={0} zakończona w {1}"
                + "poprzez {3}, tożsamość {2}", new Object[]{transactionId,
                this.getClass().getName(), sctx.getCallerPrincipal().getName(),
                committed ? "ZATWIERDZENIE" : "ODWOŁANIE"});
    }
}
