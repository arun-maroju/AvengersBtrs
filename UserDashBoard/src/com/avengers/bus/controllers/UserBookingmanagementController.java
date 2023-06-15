package com.avengers.bus.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avengers.bus.dao.ListsDao;
import com.avengers.bus.services.FetchUser;

@Controller
public class UserBookingmanagementController {

	ListsDao ldao;

	@Autowired
	public UserBookingmanagementController(ListsDao listdao) {
		ldao = listdao;
	}

	@RequestMapping(value = "/ticketList", method = RequestMethod.GET)
	@ResponseBody
	public String ticketsDetails() {
		System.out.println("im working...");
		FetchUser fl = new FetchUser(ldao);
		String userJson = fl.getticketList();
		return userJson;

	}

}
