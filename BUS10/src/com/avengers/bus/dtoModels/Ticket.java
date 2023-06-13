package com.avengers.bus.dtoModels;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

public class Ticket {
	private String from;
	private String to;
	private String serviceNo;
	private String ticketNo;
	private String busType;
	private String bookingDateTime;
	private String transactionId;
	private LocalDate journeyDate;
	private LocalTime departureTime;
	private int numberOfPassengers;
	private List<Passenger> passengers;

	private double totalFare;

	public Ticket(String from, String to, String serviceNo, String ticketNo, String busType, LocalDate journeyDate,
			LocalTime departureTime, int numberOfPassengers, List<Passenger> passengers) {
		this.from = from;
		this.to = to;
		this.serviceNo = serviceNo;
		this.ticketNo = ticketNo;
		this.busType = busType;
		this.journeyDate = journeyDate;
		this.departureTime = departureTime;
		this.numberOfPassengers = numberOfPassengers;
		this.passengers = passengers;
		this.totalFare = totalFare;
		this.bookingDateTime = "";
		this.transactionId = "";
	}

	// Getters and Setters

	@Override
	public String toString() {
		return "Ticket Confirmation\n" + "From Station: " + from + "\n" + "To Station: " + to + "\n" + "Service No: "
				+ serviceNo + "\n" + "Ticket No: " + ticketNo + "\n" + "Bus Type: " + busType + "\n"
				+ "Date of Journey: " + journeyDate + "\n" + "Departure Time: " + departureTime + "\n"
				+ "Number of Passengers: " + numberOfPassengers + "\n\n" + "Passenger Details:\n"
				+ generatePassengerDetailsTable();
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

	public String getServiceNo() {
		return serviceNo;
	}

	public void setServiceNo(String serviceNo) {
		this.serviceNo = serviceNo;
	}

	public String getTicketNo() {
		return ticketNo;
	}

	public void setTicketNo(String ticketNo) {
		this.ticketNo = ticketNo;
	}

	public String getBusType() {
		return busType;
	}

	public void setBusType(String busType) {
		this.busType = busType;
	}

	public LocalDate getJourneyDate() {
		return journeyDate;
	}

	public void setJourneyDate(LocalDate journeyDate) {
		this.journeyDate = journeyDate;
	}

	public LocalTime getDepartureTime() {
		return departureTime;
	}

	public void setDepartureTime(LocalTime departureTime) {
		this.departureTime = departureTime;
	}

	public int getNumberOfPassengers() {
		return numberOfPassengers;
	}

	public void setNumberOfPassengers(int numberOfPassengers) {
		this.numberOfPassengers = numberOfPassengers;
	}

	public int getTotalFare() {
		return numberOfPassengers;
	}

	public void setTotalFare(int totalFare) {
		this.totalFare = totalFare;
	}

	public List<Passenger> getPassengers() {
		return passengers;
	}

	public void setPassengers(List<Passenger> passengers) {
		this.passengers = passengers;
	}

	public String getBookingDateTime() {
		return bookingDateTime;
	}

	public void setBookingDateTime(String bookingDateTime) {
		this.bookingDateTime = bookingDateTime;
	}

	public String getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(String transactionId) {
		this.transactionId = transactionId;
	}

	private String generatePassengerDetailsTable() {
		StringBuilder table = new StringBuilder();
		table.append("Passenger ID\tName\tAge\tGender\tFare\tSeat ID\n");
		for (Passenger passenger : passengers) {
			table.append(passenger.getPassengerId()).append("\t\t").append(passenger.getName()).append("\t")
					.append(passenger.getAge()).append("\t").append(passenger.getGender()).append("\t")
					.append(passenger.getFare()).append("\t").append(passenger.getSeatId()).append("\n");
		}
		return table.toString();
	}
}