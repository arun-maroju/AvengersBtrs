package com.avengers.bus.controllers;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.avengers.bus.dtoModels.BusSearchListDto;
import com.avengers.bus.dtoModels.Passenger;
import com.avengers.bus.dtoModels.Ticket;

@Controller
public class TicketController {
	
	@Autowired
	private HttpSession httpSession;

//	@RequestMapping(value = "passengerPreview1", method = RequestMethod.POST)
//	public String showTicketPreview(Model model) {
//
//		
//		BusSearchListDto bus= (BusSearchListDto) httpSession.getAttribute("selectedBus");
//		
//		Ticket ticket=new Ticket();
//		ticket.setTo(bus.getDestination());
//		ticket.setFrom(bus.getSource());
//		ticket.setBus_type(bus.getBsty_title());
//		ticket.setJourney_date(bus.getTrip_date());
//		ticket.setDeparture_time(bus.getDepature());
//		ticket.setArrival_time(bus.getArrival());
//		ticket.setService_no(bus.getService_id());
//		ticket.setTrip_no(bus.getTrip_id());
//		ticket.setPassengers(null);
//		
//		
//		
//		
//		
//		
//		System.out.println(bus);
//		
//		System.out.println("IN show Ticket Preview..");
//		// Create ticket object
//		Ticket ticket = createTicket();
//
//		// Add ticket object to the model
//		model.addAttribute("ticket", ticket);
//
//		return "ticketPreview";
//	}

	@RequestMapping(value = "confirm", method = RequestMethod.GET)
	public String showTicketConfirmation(Model model) {
		System.out.println("Show ticket confirmation method..");
		// Create ticket object
		//Ticket ticket = createTicket();

		// Add ticket object to the model
		//model.addAttribute("ticket", ticket);
		//model.addAttribute("passengers", ticket.getPassengers()); // Add passengers to the model

		return "confirm";
	}

//	private Ticket createTicket() {
//		// Create passenger objects
//		Passenger passenger1 = new Passenger(1, "John Doe", 25, "Male", 50.0, 101);
//		Passenger passenger2 = new Passenger(2, "Jane Smith", 30, "Female", 60.0, 102);
//		Passenger passenger3 = new Passenger(3, "Alex Johnson", 35, "Male", 55.0, 103);
//
//		// Create list of passengers
//		List<Passenger> passengers = new ArrayList<>();
//		passengers.add(passenger1);
//		passengers.add(passenger2);
//		passengers.add(passenger3);
//
//		// Create ticket object
//		Ticket ticket = new Ticket("ABC Station", "XYZ Station", "1234", "5678", "AC Deluxe", LocalDate.of(2023, 6, 12),
//				LocalTime.of(10, 0), passengers.size(), passengers);
//		int fare = 0;
//		for (Passenger p : passengers) {
//			fare += p.getFare();
//			System.out.println(fare);
//		}
//
//		ticket.setTotalFare(fare);
//		System.out.println(ticket.getTotalFare());
//
//		return ticket;
//
//	}

}
