package com.avengers.bus.entityModels;

import java.io.Serializable;

import javax.persistence.Id;

public class TicketPassengerId implements Serializable {
	
	int booking_id;
	
	int passenger_index;

	public int getBooking_id() {
		return booking_id;
	}

	public void setBooking_id(int booking_id) {
		this.booking_id = booking_id;
	}

	public int getPassenger_index() {
		return passenger_index;
	}

	public void setPassenger_index(int passenger_index) {
		this.passenger_index = passenger_index;
	}

	@Override
	public String toString() {
		return "TicketPassengerId [booking_id=" + booking_id + ", passenger_index=" + passenger_index + "]";
	}
	
	

}
