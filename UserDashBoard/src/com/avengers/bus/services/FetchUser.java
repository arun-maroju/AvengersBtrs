package com.avengers.bus.services;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.avengers.bus.dao.ListsDao;
import com.avengers.bus.entityModels.User;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class FetchUser implements FetchUserservice {
	@Autowired
	private ListsDao ldao;
	//
	// public FetchUser(ListsDao ldao) {
	// super();
	// this.ldao = ldao;
	// }

	public String getUserList() {
		List<User> Users = ldao.UserList(8);
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(Users);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	@Transactional
	public void add(User user) {
		// TODO Auto-generated method stub
		ldao.updateUser(user);

	}

}
