package com.avengers.bus.services;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.avengers.bus.daos.UserDao;
import com.avengers.bus.entityModels.User;

public class UserServiceImpl implements UserService {

	UserDao userDao;

	@Autowired
	public UserServiceImpl(UserDao userDao) {
		this.userDao = userDao;
	}

	@Override
	@Transactional
	public void addUser(User user) {
		userDao.persistUser(user);
	}

}
