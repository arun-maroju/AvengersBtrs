package com.avengers.bus.daos;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Component;

import com.avengers.bus.entityModels.User;

@Component
public class UserDaoImpl implements UserDao {

	@PersistenceContext
	EntityManager em;

	@Override
	public void persistUser(User user) {
		System.out.println("Im in user persist method..");
		em.persist(user);
	}

}
