package com.avengers.bus.daos;

import java.util.List;

import com.avengers.bus.entityModels.SeatsBookedForOneService;

public interface BookedSeatsDao {
	public List<SeatsBookedForOneService> getBookedSeats(int service_id);
}
