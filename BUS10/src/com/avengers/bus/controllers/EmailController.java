package com.avengers.bus.controllers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.avengers.bus.services.EmailService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class EmailController {

	EmailService mailService;
	int OTP;
	String email;

	@Autowired
	public EmailController(EmailService mailService) {
		this.mailService = mailService;
	}

	@RequestMapping(value = "/email", method = RequestMethod.GET)
	@ResponseBody
	public String email(@RequestParam("to") String to_mail) {
		email = to_mail;
		OTP = mailService.sendmail(to_mail);
		System.out.println(OTP);
		return "Email Sent Successfully";

	}

	@RequestMapping(value = "/validateOTP", method = RequestMethod.POST)
	public ModelAndView email(@RequestParam("otp") int OTP) {

		ModelAndView mav = new ModelAndView();
		if (this.OTP == OTP) {
			mav.setViewName("reset");

			return mav;
		}
		mav.setViewName("forgot");
		mav.addObject("msg", "Please Enter Valid OTP");
		mav.addObject("email", email);
		return mav;
	}

	@RequestMapping(value = "/validateOTP1", method = RequestMethod.POST)
	@ResponseBody
	public String email1(@RequestParam("otp") int OTP) {
		System.out.println("Arun this otpp1");

		Map<String, String> data = new HashMap<>();

		if (this.OTP == OTP) {
			System.out.println("SUccess" + this.OTP + " " + OTP);
			data.put("key1", "success");
			ObjectMapper om = new ObjectMapper();
			String json;
			try {
				json = om.writeValueAsString(data);
			} catch (JsonProcessingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				return null;
			}
			return json;
		}
		System.out.println("Failed" + this.OTP + " " + OTP);
		data.put("key1", "failed");
		ObjectMapper om = new ObjectMapper();
		String json;
		try {
			json = om.writeValueAsString(data);
		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		return json;

	}

}
