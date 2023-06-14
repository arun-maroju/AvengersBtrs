package com.avengers.bus.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.avengers.bus.entityModels.SeatsBookedForOneService;

@Component
public class BookedSeatsDaoImpl implements BookedSeatsDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public List<SeatsBookedForOneService> getBookedSeats(int service_id) {

		return em.createQuery("Select seats From SeatsBookedForOneService seats where seats.service_id=" + service_id)
				.getResultList();
	}

}
