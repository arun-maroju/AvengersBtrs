package com.avengers.bus.daos;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Component;

import com.avengers.bus.entityModels.User;

@Component
public class UserDaoImpl implements UserDao {

	@PersistenceContext
	EntityManager em;

	// public User findByEmail(String email) {
	// boolean e = em.contains(email);
	// return null;
	// }

	@Override
	public User findByEmail(String email) {
		System.out.println("im in findby email method");

		TypedQuery<User> query = em.createQuery("SELECT u FROM User u WHERE u.email = :email", User.class);
		query.setParameter("email", email);
		List<User> users = query.getResultList();
		if (!users.isEmpty()) {
			return users.get(0);
		}
		return null;
	}

	public List<User> getAllUsers() {
		return em.createQuery("SELECT u FROM User u").getResultList();
	}

}
