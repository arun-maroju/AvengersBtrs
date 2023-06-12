package com.avengers.bus.controllers;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.avengers.bus.dtoModels.BusSearchListDto;
import com.avengers.bus.dtoModels.SeatsBookedForOneService;

@Controller
public class BusLayoutController {
	@RequestMapping(value = "/layout", method = RequestMethod.GET)
	public ModelAndView handleFormSubmission(@RequestParam("service_id") int serviceId,
			@RequestParam("trip_id") int tripId, @RequestParam("source") String source,
			@RequestParam("destination") String destination, @RequestParam("trip_date") String tripDate,
			@RequestParam("arrival") String arrival, @RequestParam("depature") String depature,
			@RequestParam("bsty_title") String bstyTitle, @RequestParam("available_seats") int availableSeats) {
		//
		// System.out.println("service_id: " + serviceId);
		// System.out.println("trip_id: " + tripId);
		// System.out.println("source: " + source);
		// System.out.println("destination: " + destination);
		// System.out.println("arrival: " + arrival);
		// System.out.println("depature: " + depature);
		// System.out.println("trip_date: " + tripDate);
		// System.out.println("bsty_title: " + bstyTitle);
		// System.out.println("available_seats: " + availableSeats);
		//
		System.out.println("User Selected Bus Details are..");

		BusSearchListDto bus = new BusSearchListDto();
		bus.setService_id(serviceId);
		bus.setTrip_id(tripId);
		bus.setArrival(Time.valueOf(arrival));
		bus.setDepature(Time.valueOf(depature));
		bus.setSource(source);
		bus.setDestination(destination);
		bus.setTrip_date(Date.valueOf(tripDate));
		bus.setAvailable_seats(availableSeats);
		bus.setBsty_title(bstyTitle);
		System.out.println(bus);

		SeatsBookedForOneService s1 = new SeatsBookedForOneService();
		SeatsBookedForOneService s2 = new SeatsBookedForOneService();
		SeatsBookedForOneService s3 = new SeatsBookedForOneService();
		SeatsBookedForOneService s4 = new SeatsBookedForOneService();

		SeatsBookedForOneService s5 = new SeatsBookedForOneService();
		SeatsBookedForOneService s6 = new SeatsBookedForOneService();
		SeatsBookedForOneService s7 = new SeatsBookedForOneService();
		SeatsBookedForOneService s8 = new SeatsBookedForOneService();

		s1.setSeat_id(1);
		s1.setService_id(1);
		s1.setGender("Male");
		s1.setStatus(true);

		s2.setSeat_id(2);
		s2.setService_id(1);
		s2.setGender("Female");
		s2.setStatus(true);

		s3.setSeat_id(8);
		s3.setService_id(1);
		s3.setGender("Female");
		s3.setStatus(true);

		s4.setSeat_id(7);
		s4.setService_id(1);
		s4.setGender("Female");
		s4.setStatus(false);

		s5.setSeat_id(23);
		s5.setService_id(1);
		s5.setGender("Male");
		s5.setStatus(true);

		s6.setSeat_id(24);
		s6.setService_id(1);
		s6.setGender("Male");
		s6.setStatus(true);

		s7.setSeat_id(19);
		s7.setService_id(1);
		s7.setGender("Female");
		s7.setStatus(true);

		s8.setSeat_id(20);
		s8.setService_id(1);
		s8.setGender("Female");
		s8.setStatus(false);

		List<SeatsBookedForOneService> seatsList = new ArrayList<>();
		seatsList.add(s1);
		seatsList.add(s2);
		seatsList.add(s3);
		seatsList.add(s4);
		seatsList.add(s5);
		seatsList.add(s6);
		seatsList.add(s7);
		seatsList.add(s8);

		ModelAndView mav = new ModelAndView("busLayout");
		mav.addObject("sl", seatsList);
		mav.addObject("selectedBusDetails", bus);
		return mav;
	}

}