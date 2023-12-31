package com.avengers.bus.controllers;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.avengers.bus.dtoModels.BusSearchListDto;
import com.avengers.bus.dtoModels.Ticket;
import com.avengers.bus.inputModels.Passengers;

@Controller
public class PassengerPreviewController {

	@Autowired
	private HttpSession httpSession;

	@RequestMapping(value = "passengerPreview", method = RequestMethod.POST)
	public ModelAndView getPassengerDetails(@RequestParam("passenger_id[]") String[] passengerIds,
			@RequestParam("seat_number[]") int[] passengerSeatNos,
			@RequestParam("passenger_name[]") String[] passengerNames,
			@RequestParam("passenger_age[]") int[] passengerAges,
			@RequestParam("passenger_gender[]") String[] passengerGenders) {

		System.out.println(passengerIds.length);
		System.out.println(passengerSeatNos.length);
		System.out.println(passengerNames.length);
		System.out.println(passengerAges.length);
		System.out.println(passengerGenders.length);

		for (int i = 0; i < passengerIds.length; i++) {
			System.out.println("Passenger ID: " + passengerIds[i]);
			System.out.println("Seat ID: " + passengerSeatNos[i]);
			System.out.println("Passenger Name: " + passengerNames[i]);
			System.out.println("Passenger Age: " + passengerAges[i]);
			System.out.println("Passenger Gender: " + passengerGenders[i]);
			System.out.println("-------------------------");
		}
		BusSearchListDto bus = (BusSearchListDto) httpSession.getAttribute("selectedBus");
		List<Passengers> passengersList = new ArrayList<Passengers>();
		double totalFare = 0;
		for (int i = 0; i < passengerIds.length; i++) {
			Passengers p = new Passengers();
			p.setPassenger_id(passengerIds[i]);
			p.setSeat_id(passengerSeatNos[i]);
			p.setPassenger_name(passengerNames[i]);
			p.setPassenger_age(passengerAges[i]);
			p.setPassenger_gender(passengerGenders[i]);
			if (passengerSeatNos[i] <= 16)
				p.setSeat_fare(bus.getSeat_fare());
			else
				p.setSeat_fare(bus.getBerth_fare());
			passengersList.add(p);
			totalFare += p.getSeat_fare();
			System.out.println("-------------------------");
		}

		for (Passengers p : passengersList) {
			System.out.println(p);
		}

		Ticket ticket = new Ticket();
		ticket.setTo(bus.getDestination());
		ticket.setFrom(bus.getSource());
		ticket.setBus_type(bus.getBsty_title());
		ticket.setJourney_date(bus.getTrip_date());
		ticket.setDeparture_time(bus.getDepature());
		ticket.setArrival_time(bus.getArrival());
		ticket.setService_no(bus.getService_id());
		ticket.setTrip_no(bus.getTrip_id());
		ticket.setPassengers(passengersList);
		ticket.setTotalFare(totalFare);

		LocalDate currentDate = LocalDate.now();
		int year = currentDate.getYear();
		int month = currentDate.getMonthValue();
		int day = currentDate.getDayOfMonth();
		String ticketNo = bus.getService_id() + "" + bus.getTrip_id() + "" + year + "" + month + "" + day + "";
		// + System.currentTimeMillis();
		ticket.setTicketNo(ticketNo);
		ticket.setNumberOfPassengers(passengersList.size());
		httpSession.setAttribute("ticket", ticket);
		System.out.println(ticket);

		ModelAndView mav = new ModelAndView("ticketPreview");
		mav.addObject("ticket", ticket);

		System.out.println("IN passenger preview controller..");
		return mav;
	}
}