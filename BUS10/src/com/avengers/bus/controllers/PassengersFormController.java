package com.avengers.bus.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.avengers.bus.entityModels.UserPassengers;
import com.avengers.bus.services.UserPassengersServiceImpl;

@Controller
public class PassengersFormController {

	@Autowired
	private UserPassengersServiceImpl userPassengersService;

	public PassengersFormController(UserPassengersServiceImpl userPassengersDao) {
		this.userPassengersService = userPassengersService;
	}

	@RequestMapping(value = "/passengers", method = RequestMethod.POST)
	public ModelAndView getPassengersForm(@RequestParam("seatsData") String seatsData,
			@RequestParam("noOfSeatsSelected") int seatsCount) {

		int CurrentUserId = 9;

		List<UserPassengers> userList = userPassengersService.getAllUserPassengers(CurrentUserId);

		for (UserPassengers up : userList) {
			System.out.println(up);
		}

		System.out.println(seatsData);
		System.out.println(seatsCount);
		// UserPassengersList userPassengers = new UserPassengersList();
		// List<UserPassengers> userList = userPassengers.getuser();

		ModelAndView mav = new ModelAndView("passengers");
		mav.addObject("seatsData", seatsData);
		mav.addObject("count", seatsCount);
		mav.addObject("userList", userList);

		return mav;
	}

}