package com.avengers.bus.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.avengers.bus.daos.DetailsDAO;
import com.avengers.bus.services.FetchDetails;

@Controller
public class AdminDetailsController {

	DetailsDAO ddao;

	@Autowired
	public AdminDetailsController(DetailsDAO detaildao) {
		ddao = detaildao;
	}

	@RequestMapping(value = "/viewServiceDetails", method = RequestMethod.GET)
	@ResponseBody
	public String getServiceDetails(@RequestParam("serviceId") String service) {

		FetchDetails fl = new FetchDetails(ddao);
		String sdJson = fl.getServiceDetails(service);
		return sdJson;

	}

	@RequestMapping(value = "/viewRouteDetails", method = RequestMethod.GET)
	@ResponseBody
	public String getRouteDetails(@RequestParam("routeNumber") String route) {

		FetchDetails fl = new FetchDetails(ddao);
		String rdJson = fl.getRouteDetails(route);
		return rdJson;

	}

}
