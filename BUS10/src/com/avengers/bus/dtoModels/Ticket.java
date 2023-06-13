package com.avengers.bus.dtoModels;

import java.sql.Date;
import java.sql.Time;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import com.avengers.bus.inputModels.Passengers;

public class Ticket {
	
	
	
	
	private int ticketNo;
	public int getTicketNo() {
		return ticketNo;
	}
	public void setTicketNo(int ticketNo) {
		this.ticketNo = ticketNo;
	}
	private String from;
	private String to;
	private int service_no;
	private int trip_no;
	private String bus_type;
	private Date journey_date;
	private Time departure_time;
	private Time arrival_time;
	private int numberOfPassengers;
	private List<Passengers> passengers;
	private double totalFare;
	
	
	
	
	
	
	public Time getArrival_time() {
		return arrival_time;
	}
	public void setArrival_time(Time arrival_time) {
		this.arrival_time = arrival_time;
	}


	
	
	
	
	
	

	@Override
	public String toString() {
		return "Ticket [ticketNo=" + ticketNo + ", from=" + from + ", to=" + to + ", service_no=" + service_no
				+ ", trip_no=" + trip_no + ", bus_type=" + bus_type + ", journey_date=" + journey_date
				+ ", departure_time=" + departure_time + ", arrival_time=" + arrival_time + ", numberOfPassengers="
				+ numberOfPassengers + ", passengers=" + passengers + ", totalFare=" + totalFare + "]";
	}
	public String getFrom() {
		return from;
	}
	public void setFrom(String from) {
		this.from = from;
	}
	public String getTo() {
		return to;
	}
	public void setTo(String to) {
		this.to = to;
	}
	public int getService_no() {
		return service_no;
	}
	public void setService_no(int service_no) {
		this.service_no = service_no;
	}
	public int getTrip_no() {
		return trip_no;
	}
	public void setTrip_no(int trip_no) {
		this.trip_no = trip_no;
	}
	public String getBus_type() {
		return bus_type;
	}
	public void setBus_type(String bus_type) {
		this.bus_type = bus_type;
	}
	public Date getJourney_date() {
		return journey_date;
	}
	public void setJourney_date(Date journey_date) {
		this.journey_date = journey_date;
	}
	public Time getDeparture_time() {
		return departure_time;
	}
	public void setDeparture_time(Time departure_time) {
		this.departure_time = departure_time;
	}
	public int getNumberOfPassengers() {
		return numberOfPassengers;
	}
	public void setNumberOfPassengers(int numberOfPassengers) {
		this.numberOfPassengers = numberOfPassengers;
	}
	public List<Passengers> getPassengers() {
		return passengers;
	}
	public void setPassengers(List<Passengers> passengers) {
		this.passengers = passengers;
	}
	public double getTotalFare() {
		return totalFare;
	}
	public void setTotalFare(double totalFare) {
		this.totalFare = totalFare;
	}


	
}