package com.avengers.bus.controllers;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.avengers.bus.dtoModels.Ticket;

@Controller
public class TicketController {

	@Autowired
	private HttpSession httpSession;

	@RequestMapping(value = "confirm", method = RequestMethod.GET)
	public String showTicketConfirmation(Model model, @RequestParam("paymentId") String payment_id) {
		System.out.println("Show ticket confirmation method..");
		System.out.println(payment_id);
		Ticket ticket = (Ticket) httpSession.getAttribute("ticket");
		ticket.setTicketNo((String) httpSession.getAttribute("ticketNumber"));
		ticket.setPayment_id(payment_id);
		System.out.println("In confirm ticket controller method.." + ticket);
		return "confirm";
	}

}
