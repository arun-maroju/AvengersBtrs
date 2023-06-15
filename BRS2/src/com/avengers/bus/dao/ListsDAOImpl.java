package com.avengers.bus.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.context.annotation.Primary;
import org.springframework.stereotype.Repository;

import com.avengers.bus.entityModels.Bus;
import com.avengers.bus.entityModels.Route;
import com.avengers.bus.entityModels.Service;
import com.avengers.bus.entityModels.Ticket;

@Repository
@Primary
public class ListsDAOImpl implements ListsDAO {

	@PersistenceContext
	private EntityManager em;

	@Override
	public List<Service> serviceList() {
		return em.createQuery("SELECT s FROM Service s", Service.class).getResultList();

	}

	@Override
	public List<Route> routeList() {
		return em.createQuery("SELECT r FROM Route r", Route.class).getResultList();
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
