package com.avengers.bus.daos;

import java.util.List;

import com.avengers.bus.dtoModels.ServicePassenger;
import com.avengers.bus.entityModels.Bus;
import com.avengers.bus.entityModels.Routes;
import com.avengers.bus.entityModels.Services;
import com.avengers.bus.entityModels.Ticket;

public interface ListsDAO {
	public List<Services> serviceList();

	public List<Routes> routeList();

	public List<Bus> busList();

	public List<Ticket> ticketList();
	
	public List<ServicePassenger> servicePassengerList(int service_id);

}
