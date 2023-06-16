package com.avengers.bus.controllers;

import org.springframework.stereotype.Controller;

import com.avengers.bus.services.UserService;

// controller
@Controller
public class AuthenticationController {

	public Object userDetailsService(UserService userService) {
		// TODO Auto-generated method stub
		return null;
	}
	//
	// Userlist ul = new Userlist();
	// List<Email> el = ul.getuser();
	//
	// UserService userService;
	//
	// public AuthenticationController(UserService userService) {
	// this.userService = userService;
	// }
	//
	// @RequestMapping(value = "/login", method = RequestMethod.GET)
	// public String Login() {
	// return "loginPage";
	// }
	//
	// @RequestMapping("/successlogin")
	// public String login(@RequestParam("email") String username, @RequestParam("pwd") String password, Model model) {
	// // boolean isMatched = el.stream()
	// // .anyMatch(user -> user.getUsername().equals(username) && user.getPassword().equals(password));
	//
	// boolean isMatched = username.equals("arun123@gmail.com") && password.equals("arun");
	// if (isMatched) {
	// model.addAttribute("email", username);
	// return "redirect:/home";
	//
	// } else {
	// model.addAttribute("alert", "Invalid login credentials");
	// return "loginPage";
	// }
	// }
	//
	// @RequestMapping(value = "/signup", method = RequestMethod.GET)
	// public String signup() {
	// return "signup";
	// }
	//
	// @RequestMapping(value = "/forgot", method = RequestMethod.GET)
	// public String forgot() {
	// return "forgot";
	// }
	//
	// @RequestMapping(value = "/reset", method = RequestMethod.GET)
	// public String reset() {
	// return "reset";
	// }
	//
	// @RequestMapping(value = "/registerUser", method = RequestMethod.POST)
	// public String registerUser(User u) {
	// System.out.println(u);
	// userService.addUser(u);
	// return "redirect:login";
	// }

}
