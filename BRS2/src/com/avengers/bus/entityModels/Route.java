package com.avengers.bus.entityModels;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "btrs_routes")
public class Route {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	int route_id;
	String source;
	String destination;

	public int getRoute_id() {
		return route_id;
	}

	public void setRoute_id(int route_id) {
		this.route_id = route_id;
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

	@Override
	public String toString() {
		return "Route [route_id=" + route_id + ", source=" + source + ", destination=" + destination + "]";
	}

}
