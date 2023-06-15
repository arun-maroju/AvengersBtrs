package com.avengers.bus.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;

import com.avengers.bus.daos.UserDao;
import com.avengers.bus.entityModels.User;

public class UserServiceImpl implements UserService {

	@Autowired
	private UserDao userdao;

	@Override
	public boolean verifylogin(String email, String password) {
		System.out.println("im in service  verify method");

		User user = userdao.findByEmail(email);
		if (user != null && user.getPassword().equals(password)) {
			return true;
		}
		return false;
	}

	@Transactional()
	public List<User> listAll() {
		List<User> u1 = userdao.getAllUsers();
		System.out.println(u1.toString());
		return userdao.getAllUsers();

	}

}
