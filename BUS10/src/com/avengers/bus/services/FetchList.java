package com.avengers.bus.services;

import java.util.List;

import com.avengers.bus.daos.ListsDAO;
import com.avengers.bus.entityModels.Bus;
import com.avengers.bus.entityModels.Routes;
import com.avengers.bus.entityModels.Services;
import com.avengers.bus.entityModels.Ticket;
import com.fasterxml.jackson.databind.ObjectMapper;

public class FetchList {

	private ListsDAO ldao;

	public FetchList(ListsDAO ldao) {
		super();
		this.ldao = ldao;
	}

	public String getServiceList() {
		List<Services> services = ldao.serviceList();
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(services);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String getRouteList() {
		List<Routes> routes = ldao.routeList();
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(routes);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}

	}

	public String getBusList() {
		List<Bus> buses = ldao.busList();
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(buses);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public String getTicketList() {
		List<Ticket> tickets = ldao.ticketList();
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
