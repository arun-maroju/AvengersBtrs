package com.avengers.bus.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.avengers.bus.dao.ListsDao;
import com.avengers.bus.entityModels.UserTickets;
import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class FetchTicketsImpl implements FetchTickets {

	@Autowired
	private ListsDao ldao;

	public FetchTicketsImpl(ListsDao ldao) {
		super();
		this.ldao = ldao;
	}

	public String getticketList() {
		List<UserTickets> tickets = ldao.ticketList();
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(tickets);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
}
