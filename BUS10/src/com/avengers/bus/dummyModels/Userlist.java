package com.avengers.bus.dummyModels;

import java.util.ArrayList;
import java.util.List;

public class Userlist {
	public List<User> getuser() {
		List<User> list = new ArrayList<>();
		User e1 = new User("vamsi", 21, "Male");
		User e2 = new User("imran", 22, "Male");
		User e3 = new User("arun", 22, "Male");
		User e4 = new User("venkat", 20, "Male");
		User e5 = new User("rabin", 22, "Male");
		User e6 = new User("renuka", 21, "Female");
		list.add(e1);
		list.add(e2);
		list.add(e3);
		list.add(e4);
		list.add(e5);
		list.add(e6);
		return list;
	}
}