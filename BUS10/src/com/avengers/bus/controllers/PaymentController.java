package com.avengers.bus.controllers;

import org.json.JSONException;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.razorpay.Order;
import com.razorpay.RazorpayClient;
import com.razorpay.RazorpayException;

@Controller
public class PaymentController {

	@RequestMapping(value = "/makePayment", method = RequestMethod.GET, produces = "application/json")
	@ResponseBody
	public String pay(String ticketNumber, String amount, String currency, Model model)
			throws RazorpayException, JSONException {
		System.out.println(ticketNumber + amount + currency);
		RazorpayClient razorpayClient = new RazorpayClient("rzp_test_j9AU4Na98kCuvD", "OjyDABQUyWEfafePUqBlqILA");
		JSONObject options = new JSONObject();
		int amt = Integer.parseInt(amount) * 100;
		options.put("amount", amt); // Amount in paise (e.g., 1000 paise = Rs 10)
		options.put("currency", "INR");
		options.put("receipt", ticketNumber + System.currentTimeMillis());
		Order order = razorpayClient.orders.create(options);
		System.out.println(order);
		return order.toString();
	}

}
