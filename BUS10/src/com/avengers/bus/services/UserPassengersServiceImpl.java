package com.avengers.bus.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.avengers.bus.daos.UserPassengersDao;
import com.avengers.bus.entityModels.UserPassengers;

public class UserPassengersServiceImpl implements UserPassengersService {

	@Autowired
	private UserPassengersDao userPassengersDao;

	public UserPassengersServiceImpl(UserPassengersDao userPassengersDao) {
		this.userPassengersDao = userPassengersDao;
	}

	@Override
	public List<UserPassengers> getAllUserPassengers(int userId) {
		return userPassengersDao.getAllUserPassengers(userId);
	}

}
