package com.avengers.bus.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.avengers.bus.daos.CountsDAO;
import com.avengers.bus.services.FetchCount;

@Controller
public class AdminController {

	CountsDAO cdao;

	@Autowired
	public AdminController(CountsDAO countdao) {
		cdao = countdao;
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin(Model model) {
		FetchCount fc = new FetchCount(cdao);
		System.out.println(fc.getBusCount());
		System.out.println(fc.getCollection());
		System.out.println(fc.getServiceCount());
		System.out.println(fc.getRouteCount());
		System.out.println(fc.getTripCount());

		ModelAndView mv = new ModelAndView("AdminDashboard");
		mv.addObject("userCount", fc.getUserCount());
		mv.addObject("busCount", fc.getBusCount());
		mv.addObject("collection", fc.getCollection());
		mv.addObject("serviceCount", fc.getServiceCount());
		mv.addObject("routeCount", fc.getRouteCount());
		mv.addObject("tripCount", fc.getTripCount());

		return mv;
	}

}
