<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.avengers.bus.dtoModels.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ticket Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f3f3f3;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        .container {
            margin: 20px auto;
            width: 80%;
            max-width: 800px;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f5f5f5;
        }

        .passenger-table {
            margin-top: 20px;
        }

        .passenger-table th {
            text-align: center;
        }

        .passenger-table td {
            text-align: center;
        }

        .total-fare {
            text-align: right;
            margin-top: 20px;
            font-size: 18px;
            font-weight: bold;
        }
          .print-button {
            text-align: center;
            margin-top: 20px;
        }

        .centered {
            display: flex;
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Ticket Confirmation</h1>

        <table>
            <tr>
                <th>Field</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>From Station</td>
                <td>${ticket.from}</td>
            </tr>
            <tr>
                <td>To Station</td>
                <td>${ticket.to}</td>
            </tr>
            <tr>
                <td>Service No</td>
                <td>${ticket.serviceNo}</td>
            </tr>
            <tr>
                <td>Ticket No</td>
                <td>${ticket.ticketNo}</td>
            </tr>
            <tr>
                <td>Bus Type</td>
                <td>${ticket.busType}</td>
            </tr>
            <tr>
                <td>Date of Journey</td>
                <td>${ticket.journeyDate}</td>
            </tr>
            <tr>
                <td>Departure Time</td>
                <td>${ticket.departureTime}</td>
            </tr>
            <tr>
                <td>Number of Passengers</td>
                <td>${ticket.numberOfPassengers}</td>
            </tr>
        </table>

        <h2 class="total-fare">Total Fare: ${ticket.totalFare}</h2>
       
        <h2>Passenger Details:</h2>

        <table class="passenger-table">
            <tr>
                <th>Passenger ID</th>
                <th>Name</th>
                <th>Age</th>
                <th>Gender</th>
                <th>Fare</th>
                <th>Seat ID</th>
            </tr>
            <c:forEach var="passenger" items="${ticket.passengers}">
                <tr>
                    <td>${passenger.passengerId}</td>
                    <td>${passenger.name}</td>
                    <td>${passenger.age}</td>
                    <td>${passenger.gender}</td>
                    <td>${passenger.fare}</td>
                    <td>${passenger.seatId}</td>
                </tr>
            </c:forEach>
        </table>
         <div class="print-button">
            <div class="centered">
                <button onclick="printTicket()">Print Ticket</button>
            </div>
    </div>
    <script>
        function printTicket() {
            window.print();
        }
    </script>
    
</body>
</html>
