package com.avengers.bus.controllers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.avengers.bus.services.UserService;

@Controller
public class LoginController {

	@Autowired
	UserService userService;

	@PostMapping("/login")
	public String login(@RequestParam("username") String username, @RequestParam("password") String password,
			Model model, HttpSession session) {
		// Perform authentication logic and redirect based on the result
		if (userService.verifylogin(username, password)) {
			// User authentication successful
			System.out.println("im in login method");
			session.setAttribute("authenticatedUser", username);
			return "redirect:/home";
		} else {
			model.addAttribute("errorMessage", "Invalid username or password");
			return "login";
		}
	}

	@GetMapping("/login")
	public String showLoginPage(HttpSession session) {
		// Check if the user is already logged in
		if (session.getAttribute("authenticatedUser") != null) {
			// User is already logged in, redirect to the dashboard page
			return "redirect:/home";
		}

		// User is not logged in, show the login page
		return "login";
	}

	@GetMapping("/home")
	public String showDashboard(HttpSession session) {
		// Check if the user is logged in
		if (session.getAttribute("authenticatedUser") == null) {
			// User is not logged in, redirect to the login page
			return "redirect:/login";
		}

		// User is logged in, show the dashboard page
		return "home";
	}

	@GetMapping("/logout")
	public String logout(HttpServletRequest request) {
		// Perform logout logic
		request.getSession().invalidate();
		return "redirect:/login";
	}
}
