package com.avengers.bus.dao;

import java.util.List;

import com.avengers.bus.entityModels.Bus;
import com.avengers.bus.entityModels.Route;
import com.avengers.bus.entityModels.Service;
import com.avengers.bus.entityModels.Ticket;

public interface ListsDAO {
	public List<Service> serviceList();

	public List<Route> routeList();

	public List<Bus> busList();

	public List<Ticket> ticketList();

}
