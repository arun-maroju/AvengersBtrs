package com.avengers.bus.dtoModels;

import java.sql.Date;
import java.sql.Time;

public class BusSearchListDto {

	private int service_id;
	private int trip_id;
	private String source;
	private String destination;
	private Date trip_date;
	private Time depature;
	private Time arrival;
	private String bsty_title;
	private int available_seats;
	private int seat_fare;
	private int berth_fare;

	public int getService_id() {
		return service_id;
	}

	public void setService_id(int service_id) {
		this.service_id = service_id;
	}

	public int getTrip_id() {
		return trip_id;
	}

	public void setTrip_id(int trip_id) {
		this.trip_id = trip_id;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getDestination() {
		return destination;
	}

	public void setDestination(String destination) {
		this.destination = destination;
	}

	public Date getTrip_date() {
		return trip_date;
	}

	public void setTrip_date(Date trip_date) {
		this.trip_date = trip_date;
	}

	public Time getDepature() {
		return depature;
	}

	public void setDepature(Time depature) {
		this.depature = depature;
	}

	public Time getArrival() {
		return arrival;
	}

	public void setArrival(Time arrival) {
		this.arrival = arrival;
	}

	public String getBsty_title() {
		return bsty_title;
	}

	public void setBsty_title(String bsty_title) {
		this.bsty_title = bsty_title;
	}

	public int getAvailable_seats() {
		return available_seats;
	}

	public void setAvailable_seats(int available_seats) {
		this.available_seats = available_seats;
	}

	public int getSeat_fare() {
		return seat_fare;
	}

	public void setSeat_fare(int seat_fare) {
		this.seat_fare = seat_fare;
	}

	public int getBerth_fare() {
		return berth_fare;
	}

	public void setBerth_fare(int berth_fare) {
		this.berth_fare = berth_fare;
	}

	@Override
	public String toString() {
		return "BusSearchListDto [service_id=" + service_id + ", trip_id=" + trip_id + ", source=" + source
				+ ", destination=" + destination + ", trip_date=" + trip_date + ", depature=" + depature + ", arrival="
				+ arrival + ", bsty_title=" + bsty_title + ", available_seats=" + available_seats + ", seat_fare="
				+ seat_fare + ", berth_fare=" + berth_fare + "]";
	}

}