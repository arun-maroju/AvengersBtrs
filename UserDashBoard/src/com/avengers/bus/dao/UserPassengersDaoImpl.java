package com.avengers.bus.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import com.avengers.bus.entityModels.UserPassengers;

public class UserPassengersDaoImpl implements UserPassengersDao {
	@PersistenceContext
	EntityManager em;

	@Override
	public List<UserPassengers> getAllUserPassengers(int userId) {
		// TODO Auto-generated method stub
		return em.createQuery("Select up From UserPassengers up where up.user_id=" + userId).getResultList();
	}
}
