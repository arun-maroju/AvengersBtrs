package com.avengers.bus.daos;

import java.util.List;

import com.avengers.bus.entityModels.UserPassengers;

public interface UserPassengersDao {

	public List<UserPassengers> getAllUserPassengers(int userId);

}
