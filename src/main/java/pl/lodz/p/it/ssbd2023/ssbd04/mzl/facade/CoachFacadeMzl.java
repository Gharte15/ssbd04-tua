package pl.lodz.p.it.ssbd2023.ssbd04.mzl.facade;

import jakarta.annotation.security.PermitAll;
import jakarta.ejb.Stateless;
import jakarta.ejb.TransactionAttribute;
import jakarta.ejb.TransactionAttributeType;
import jakarta.interceptor.Interceptors;
import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import pl.lodz.p.it.ssbd2023.ssbd04.common.AbstractFacade;
import pl.lodz.p.it.ssbd2023.ssbd04.entities.Coach;
import pl.lodz.p.it.ssbd2023.ssbd04.interceptors.GenericFacadeExceptionsInterceptor;
import pl.lodz.p.it.ssbd2023.ssbd04.interceptors.TrackerInterceptor;

import java.util.List;

@PermitAll
@Stateless
@TransactionAttribute(TransactionAttributeType.MANDATORY)
@Interceptors({GenericFacadeExceptionsInterceptor.class, TrackerInterceptor.class})
public class CoachFacadeMzl extends AbstractFacade<Coach> {
    @PersistenceContext(unitName = "siatka_mzl")
    private EntityManager em;
    public CoachFacadeMzl() {
        super(Coach.class);
    }

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    @Override
    public void create(Coach entity) {
        super.create(entity);
    }

    @Override
    public void edit(Coach entity) {
        super.edit(entity);
    }

    @Override
    public void remove(Coach entity) {
        super.remove(entity);
    }

    @Override
    protected List<Coach> findAll() {
        return super.findAll();
    }

    @Override
    public Coach find(Object id) {
        return super.find(id);
    }
}
