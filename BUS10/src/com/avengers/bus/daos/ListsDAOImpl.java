package com.avengers.bus.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.avengers.bus.entityModels.Bus;
import com.avengers.bus.entityModels.Routes;
import com.avengers.bus.entityModels.Services;
import com.avengers.bus.entityModels.Ticket;

@Repository
@Primary
public class ListsDAOImpl implements ListsDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Services> serviceList() {
		return em.createQuery("SELECT s FROM Services s", Services.class).getResultList();

	}

	@Override
	public List<Routes> routeList() {
		return em.createQuery("SELECT r FROM Routes r", Routes.class).getResultList();
	}

	@Override
	public List<Bus> busList() {
		return em.createQuery("SELECT b FROM Bus b", Bus.class).getResultList();
	}

	@Override
	public List<Ticket> ticketList() {
		return em.createQuery("SELECT t FROM Ticket t", Ticket.class).getResultList();
	}

}
