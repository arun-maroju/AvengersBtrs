package com.avengers.bus.entityModels;

import java.sql.Time;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "btrs_trips")
public class Trip {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int service_id;
	String source;
	String destination;
	Time departure;
	Time arrival;
	int bus_type;
	int inter_stops;
	int route_id;

	public int getService_id() {
		return service_id;
	}

	public void setService_id(int service_id) {
		this.service_id = service_id;
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

	public Time getDeparture() {
		return departure;
	}

	public void setDeparture(Time departure) {
		this.departure = departure;
	}

	public Time getArrival() {
		return arrival;
	}

	public void setArrival(Time arrival) {
		this.arrival = arrival;
	}

	public int getBus_type() {
		return bus_type;
	}

	public void setBus_type(int bus_type) {
		this.bus_type = bus_type;
	}

	public int getInter_stops() {
		return inter_stops;
	}

	public void setInter_stops(int inter_stops) {
		this.inter_stops = inter_stops;
	}

	@Override
	public String toString() {
		return "Service [service_id=" + service_id + ", source=" + source + ", destination=" + destination
				+ ", departure=" + departure + ", arrival=" + arrival + ", bus_type=" + bus_type + ", inter_stops="
				+ inter_stops + "]";
	}

}
