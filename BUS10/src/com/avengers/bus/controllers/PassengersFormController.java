package com.avengers.bus.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PassengersFormController {

	@RequestMapping(value = "/passengers", method = RequestMethod.POST)
	public ModelAndView getPassengersForm(@RequestParam("seatsData") String seatsData,
			@RequestParam("noOfSeatsSelected") int seatsCount) {

		System.out.println(seatsData);
		System.out.println(seatsCount);

		ModelAndView mav = new ModelAndView("passengers");
		mav.addObject("seatsData", seatsData);
		mav.addObject("count", seatsCount);
		return mav;
	}

}