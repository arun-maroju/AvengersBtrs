package com.avengers.bus.services;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.avengers.bus.daos.DetailsDAO;
import com.avengers.bus.dtoModels.ServiceDetails;
import com.avengers.bus.entityModels.Stop;
import com.fasterxml.jackson.databind.ObjectMapper;

@Service
@Transactional
public class FetchDetails {

	private DetailsDAO ddao;

	public FetchDetails(DetailsDAO ddao) {
		this.ddao = ddao;
	}

	public String getServiceDetails(String service) {

		int service_id = Integer.parseInt(service);
		ServiceDetails sd = ddao.serviceDetails(service_id);
		System.out.println(sd);
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(sd);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	public String getRouteDetails(String route) {
		int routeNum = Integer.parseInt(route);
		List<Stop> sd = ddao.routeDetails(routeNum);
		System.out.println(sd);
		ObjectMapper om = new ObjectMapper();

		try {
			// Convert the list to JSON
			String json = om.writeValueAsString(sd);
			System.out.println(json);
			return json;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

}
