package com.avengers.bus.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avengers.bus.daos.ListsDAO;
import com.avengers.bus.services.FetchList;

@Controller
public class AdminListController {

	ListsDAO ldao;

	@Autowired
	public AdminListController(ListsDAO listdao) {
		ldao = listdao;
	}

	@RequestMapping(value = "/serviceList", method = RequestMethod.GET)
	@ResponseBody
	public String servicesController() {
		FetchList fl = new FetchList(ldao);
		String servicesJson = fl.getServiceList();
		return servicesJson;

	}

	@RequestMapping(value = "/routeList", method = RequestMethod.GET)
	@ResponseBody
	public String routesController() {
		FetchList fl = new FetchList(ldao);
		String routesJson = fl.getRouteList();
		return routesJson;

	}

	@RequestMapping(value = "/busList", method = RequestMethod.GET)
	@ResponseBody
	public String busesController() {
		FetchList fl = new FetchList(ldao);
		String busesJson = fl.getBusList();
		return busesJson;

	}

	@RequestMapping(value = "/ticketList", method = RequestMethod.GET)
	@ResponseBody
	public String ticketController() {
		FetchList fl = new FetchList(ldao);
		String routesJson = fl.getTicketList();
		return routesJson;

	}
}
