package com.avengers.bus.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

@Repository
@Primary
public class CountsDAOImpl implements CountsDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public int busCount() {
		Long count = em.createQuery("SELECT COUNT(*) FROM Bus b", Long.class).getSingleResult();
		return count.intValue();
	}

	@Override
	public int serviceCount() {

		Long count = em.createQuery("SELECT COUNT(*) FROM Service s", Long.class).getSingleResult();
		return count.intValue();
	}

	@Override
	public int totalPayments() {

		Long sum = em.createQuery("SELECT SUM(sc.collection) FROM Service sc", Long.class).getSingleResult();
		return sum != null ? sum.intValue() : 0;
	}

	@Override
	public int userCount() {
		Long count = em.createQuery("SELECT COUNT(*) FROM User u", Long.class).getSingleResult();
		return count.intValue();

	}

	@Override
	public int routeCount() {
		Long count = em.createQuery("SELECT COUNT(*) FROM Route r", Long.class).getSingleResult();
		return count.intValue();
	}

	@Override
	public int tripCount() {
		Long count = em.createQuery("SELECT COUNT(*) FROM Trip t", Long.class).getSingleResult();
		return count.intValue();
	}

}
