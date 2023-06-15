package com.avengers.bus.services;

import java.util.List;

import com.avengers.bus.entityModels.UserPassengers;

public interface UserPassengersService {

	public List<UserPassengers> getAllUserPassengers(int userId);

}
