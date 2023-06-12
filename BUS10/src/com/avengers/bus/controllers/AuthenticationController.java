package com.avengers.bus.controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.avengers.bus.dtoModels.Email;
import com.avengers.bus.dtoModels.Userlist;

// controller
@Controller
public class AuthenticationController {

	Userlist ul = new Userlist();
	List<Email> el = ul.getuser();

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String Login() {
		return "loginPage";
	}

	@RequestMapping("/successlogin")
	public String login(@RequestParam("email") String username, @RequestParam("pwd") String password, Model model) {
		boolean isMatched = el.stream()
				.anyMatch(user -> user.getUsername().equals(username) && user.getPassword().equals(password));

		if (isMatched) {
			model.addAttribute("email", username);
			return "redirect:/";

		} else {
			model.addAttribute("alert", "Invalid login credentials");
			return "loginPage";
		}
	}

	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public String signup() {
		return "signup";
	}

	@RequestMapping(value = "/forgot", method = RequestMethod.GET)
	public String forgot() {
		return "forgot";
	}

	@RequestMapping(value = "/reset", method = RequestMethod.GET)
	public String reset() {
		return "reset";
	}

}
