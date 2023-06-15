package com.avengers.bus.entityModels;

public class Stop {
	String stop_id;
	String stop_name;

	public String getStop_id() {
		return stop_id;
	}

	public void setStop_id(String stop_id) {
		this.stop_id = stop_id;
	}

	public String getStop_name() {
		return stop_name;
	}

	public void setStop_name(String stop_name) {
		this.stop_name = stop_name;
	}

	@Override
	public String toString() {
		return "Stop [stop_id=" + stop_id + ", stop_name=" + stop_name + "]";
	}

}
