<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        h1 {
            color: #333;
            margin-bottom: 20px;
        }
        h2 {
            color: #666;
            margin-bottom: 10px;
        }
        nav {
            background-color: #333;
            padding: 10px;
            margin-bottom: 20px;
        }
        nav a {
            color: #fff;
            text-decoration: none;
            padding: 8px;
            margin-right: 10px;
            border-radius: 5px;
        }
        nav a:hover {
            background-color: #666;
        }
        p {
            margin: 5px 0;
        }
        .dashboard {
            display: grid;
            grid-template-columns: repeat(2, 1fr);
            grid-gap: 20px;
        }
        .dashboard p {
            border: 1px solid #ccc;
            padding: 10px;
            border-radius: 5px;
            background-color: #f5f5f5;
            margin: 0;
        }
        #serviceList,
        #busList,
        #routeList,
        #ticketList,
        #paymentList {
            display: none;
        }
        
          table {
    width: 100%;
    border-collapse: collapse;
  }

  table thead {
    background-color: #333;
    color: #fff;
  }

  table th,
  table td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ccc;
  }

  table tbody tr:nth-child(even) {
    background-color: #f5f5f5;
  }
  .popup {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-color: rgba(0, 0, 0, 0.5);
    z-index: 9999;
}

.popup div {
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
    font-size: 16px;
    text-align: center;
    max-width: 80%;
}
  
    </style>
</head>
<body>
    <nav>
        <a class="nav-link" href="#" onclick="showDashboard()">Dashboard</a>
        <a class="nav-link" href="#" onclick="showRoutes()">Routes</a>
        <a class="nav-link" href="#" onclick="showServices()">Services</a>
        <a class="nav-link" href="#" onclick="showBuses()">Buses</a>
        <a class="nav-link" href="#" onclick="showTickets()">Tickets</a>
        <a class="nav-link" href="#" onclick="showPayments()">Payments</a>
    </nav>

    <div style="display: flex; justify-content: space-between; align-items: center;">
        <h1>Welcome to the Avengers BTRS Admin Dashboard</h1>
    </div>
    
    
    <div class="dashboard2" id="dashboard2"><h2>Statistics</h2>
    <div class="dashboard" id="dashboard">
    
    	
        <p><strong>Number of Routes:</strong> ${routeCount}</p>
        
        <p><strong>Number of Trips:</strong> ${tripCount}</p>
        
        <p><strong>Number of Services:</strong> ${serviceCount}</p>
        
        <p><strong>Number of Buses:</strong> ${busCount}</p>
        
        <%-- Get the number of services --%>
        <%-- int numberOfServices = getNumberOfServices(); --%>
        
        
        <%-- Get the number of users --%>
        <%-- int numberOfUsers = getNumberOfUsers(); --%>
        <p><strong>Number of Users:</strong> ${userCount}</p>
        
        <%-- Get the total payments collected --%>
        <%-- double totalPayments = getTotalPayments(); --%>
        <p><strong>Total Payments Collected:</strong> ${collection}</p>
    </div></div>
    
    <div id="serviceList">
	<center>
	<table>
  <thead>
    <tr>
      <th>Service ID</th>
      <th>Trip ID</th>
      <th>Trip Date</th>
      <th>Seats Available</th>
      <th>Collection</th>
      <th>       </th>
      
    </tr>
  </thead>
  <tbody>
     
    <!-- Add more rows as needed -->
  </tbody>
</table>
	
	</center>
    </div>
    
    
    <div id="routeList">
	<center>
	<table>
  <thead>
    <tr>
      <th>Route ID</th>
      <th>Source</th>
      <th>Destination</th>
      <th>     </th>
      
    </tr>
  </thead>
  <tbody>
     
    <!-- Add more rows as needed -->
  </tbody>
</table>
	
	</center>
    </div>

    <div id="busList">
        <center>
	<table>
  <thead>
    <tr>
      <th>Bus ID</th>
      <th>Registration Number</th>
      <th>Bus Type Id</th>
      <th>No of Seats</th>
      <th>Status</th>
      
    </tr>
  </thead>
  <tbody>
     
    <!-- Add more rows as needed -->
  </tbody>
</table>
	
	</center>
    </div>
    
    <div id="ticketList">
        <center>
	<table>
  <thead>
    <tr>
      <th>Ticket ID</th>
      <th>Payment ID</th>
      <th>User Id</th>
      <th>Booking Date</th>
      <th>Booking Time</th>
      <th>Route Id</th>
      <th>Trip ID</th>
      <th>Service ID</th>
      <th>Payment Mode</th>
      <th>Total Fare</th>
      <th>Status</th>
      <th>No of Seats Booked</th>
      <th>          </th>

    </tr>
  </thead>
  <tbody>
     
    <!-- Add more rows as needed -->
  </tbody>
</table>
	
	</center>
    </div>
    
    
    <div id="paymentList">
        <center>
	<table>
  <thead>
    <tr>
      <th>Ticket ID</th>
      <th>Payment ID</th>
      <th>User Id</th>
      <th>Payment Date</th>
      <th>Payment Time</th>
      <th>Payment Mode</th>
      <th>Total Fare</th>
      <th>          </th>

    </tr>
  </thead>
  <tbody>
     
    <!-- Add more rows as needed -->
  </tbody>
</table>
	
	</center>
    </div>
    
    
    <div id="popupContent" style="display: none;">
    <table>
        <tr>
            <td>Service ID:</td>
            <td id="serviceId"></td>
        </tr>
        <tr>
            <td>Source:</td>
            <td id="source"></td>
        </tr>
        <tr>
            <td>Destination:</td>
            <td id="destination"></td>
        </tr>
        <tr>
            <td>Departure:</td>
            <td id="departure"></td>
        </tr>
        <tr>
            <td>Arrival:</td>
            <td id="arrival"></td>
        </tr>
        <tr>
            <td>Trip Date:</td>
            <td id="tripDate"></td>
        </tr>
        <tr>
            <td>Bus Type:</td>
            <td id="busType"></td>
        </tr>
        <tr>
            <td>Route ID:</td>
            <td id="routeId"></td>
        </tr>
        <tr>
            <td>Collection:</td>
            <td id="collection"></td>
        </tr>
        <tr>
            <td>Seats Available:</td>
            <td id="seatsAvailable"></td>
        </tr>
        <tr>
            <td>Seats Booked:</td>
            <td id="seatsBooked"></td>
        </tr>
        <tr>
            <td>Bus Type Title:</td>
            <td id="busTypeTitle"></td>
        </tr>
        <tr>
            <td>Bus Type Description:</td>
            <td id="busTypeDescription"></td>
        </tr>
    </table>
</div>


<div id="routePopupContent" style="display: none;">
    <table>
        <tr>
            <td>Route ID:</td>
            <td id="routeNumber"></td>
        </tr>
        <tr>
            <td>Source:</td>
            <td id="routeSource"></td>
        </tr>
        <tr>
            <td>Destination:</td>
            <td id="routeDestination"></td>
        </tr>
        
    </table>
</div>

<div id="routePopupContent" style="display: none;">
    <!-- Content for the popup -->
    Route Number: <span id="routeNumber"></span>
</div>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	
    <script>
        function showDashboard() {
            document.getElementById("dashboard2").style.display = "grid";
            document.getElementById("serviceList").style.display = "none";
            document.getElementById("busList").style.display = "none";
            document.getElementById("routeList").style.display = "none";
            document.getElementById("ticketList").style.display = "none";
            document.getElementById("paymentList").style.display = "none";
            
            
        }
        
        function showPayments() {
            $.ajax({
                url: "ticketList", // Replace with the actual URL of your service
                method: "GET",
                success: function(response) {
                    var payments = JSON.parse(response);
                    var tableBody = document.querySelector("#paymentList table tbody");
                    tableBody.innerHTML = ""; // Clear existing table rows
                    
                    // Iterate over the routes and populate the table
                    for (var i = 0; i < payments.length; i++) {
                        var payment = payments[i];
                        var row = document.createElement("tr");

                        var cell1 = document.createElement("td");
                        cell1.textContent = payment.booking_id;
                        row.appendChild(cell1);
                        
                        var cell2 = document.createElement("td");
                        cell2.textContent = payment.payment_id;
                        row.appendChild(cell2);
                        
                        var cell3 = document.createElement("td");
                        cell3.textContent = payment.user_id;
                        row.appendChild(cell3);
                        
                        var cell4 = document.createElement("td");
                        cell4.textContent = payment.booking_date;
                        row.appendChild(cell4);
                        
                        var cell5 = document.createElement("td");
                        cell5.textContent = payment.booking_time;
                        row.appendChild(cell5);
                        
                        
                        var cell9 = document.createElement("td");
                        cell9.textContent = payment.payment_mode;
                        row.appendChild(cell9);
                        
                        var cell10 = document.createElement("td");
                        cell10.textContent = payment.total_fare;
                        row.appendChild(cell10);
                        

                        
                        
                        
                        var actionsCell = document.createElement("td");
                        var viewDetailsButton = document.createElement("button");
                        viewDetailsButton.textContent = "View Details";
                        viewDetailsButton.addEventListener("click", createViewRouteDetailsHandler(payment));
                        actionsCell.appendChild(viewDetailsButton);
                        row.appendChild(actionsCell);
                        
                        tableBody.appendChild(row);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX request failed: " + status + ", " + error);
                }
            });

            document.getElementById("dashboard2").style.display = "none";
            document.getElementById("serviceList").style.display = "none";
            document.getElementById("busList").style.display = "none";
            document.getElementById("routeList").style.display = "none";
            document.getElementById("ticketList").style.display = "none";
            document.getElementById("paymentList").style.display = "block";
        }
        
        
        function showTickets() {
            $.ajax({
                url: "ticketList", // Replace with the actual URL of your service
                method: "GET",
                success: function(response) {
                    var tickets = JSON.parse(response);
                    var tableBody = document.querySelector("#ticketList table tbody");
                    tableBody.innerHTML = ""; // Clear existing table rows
                    
                    // Iterate over the routes and populate the table
                    for (var i = 0; i < tickets.length; i++) {
                        var ticket = tickets[i];
                        var row = document.createElement("tr");

                        var cell1 = document.createElement("td");
                        cell1.textContent = ticket.booking_id;
                        row.appendChild(cell1);
                        
                        var cell2 = document.createElement("td");
                        cell2.textContent = ticket.payment_id;
                        row.appendChild(cell2);
                        
                        var cell3 = document.createElement("td");
                        cell3.textContent = ticket.user_id;
                        row.appendChild(cell3);
                        
                        var cell4 = document.createElement("td");
                        cell4.textContent = ticket.booking_date;
                        row.appendChild(cell4);
                        
                        var cell5 = document.createElement("td");
                        cell5.textContent = ticket.booking_time;
                        row.appendChild(cell5);
                        
                        var cell6 = document.createElement("td");
                        cell6.textContent = ticket.route_id;
                        row.appendChild(cell6);
                        
                        var cell7 = document.createElement("td");
                        cell7.textContent = ticket.trip_id;
                        row.appendChild(cell7);
                        
                        var cell8 = document.createElement("td");
                        cell8.textContent = ticket.service_id;
                        row.appendChild(cell8);
                        
                        var cell9 = document.createElement("td");
                        cell9.textContent = ticket.payment_mode;
                        row.appendChild(cell9);
                        
                        var cell10 = document.createElement("td");
                        cell10.textContent = ticket.total_fare;
                        row.appendChild(cell10);
                        
                        var cell11 = document.createElement("td");
                        cell11.textContent = ticket.status;
                        row.appendChild(cell11);
                        
                        var cell12 = document.createElement("td");
                        cell12.textContent = ticket.no_of_seats_booked;
                        row.appendChild(cell12);
                        
                        
                        
                        var actionsCell = document.createElement("td");
                        var viewDetailsButton = document.createElement("button");
                        viewDetailsButton.textContent = "View Details";
                        viewDetailsButton.addEventListener("click", createViewRouteDetailsHandler(ticket));
                        actionsCell.appendChild(viewDetailsButton);
                        row.appendChild(actionsCell);
                        
                        tableBody.appendChild(row);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX request failed: " + status + ", " + error);
                }
            });

            document.getElementById("dashboard2").style.display = "none";
            document.getElementById("serviceList").style.display = "none";
            document.getElementById("busList").style.display = "none";
            document.getElementById("routeList").style.display = "none";
            document.getElementById("ticketList").style.display = "block";
            document.getElementById("paymentList").style.display = "none";
        }

        function createViewTicketDetailsHandler(routeNumber,source,destination) {
            return function() {
                // AJAX call to retrieve route details
                $.ajax({
                    url: "viewRouteDetails", // Replace with the actual URL of your controller endpoint
                    method: "GET",
                    data: { routeNumber: routeNumber },
                    success: function(response) {
                        // Handle the success response from the controller
                        console.log("Route details retrieved successfully:", response);
                        
                        // Process the retrieved route details as needed
                        
                        // Get the necessary data from the response and populate the popup content
                        var routePopupContent = document.getElementById("routePopupContent");
                        var routeNumberElement = document.getElementById("routeNumber");
                        var routeSourceElement = document.getElementById("routeSource");
                        var routeDestinationElement = document.getElementById("routeDestination");
                        var stopsTable = routePopupContent.querySelector("table");
                        
                        // Clear existing stops from the table
                        stopsTable.innerHTML = "";
                        
                        // Set the route number value
                        routeNumberElement.textContent = routeNumber;
                        var row = document.createElement("tr");
                        var routeNumberCell = document.createElement("td");
                        routeNumberCell.textContent = "Route: ";
                        row.appendChild(routeNumberCell);
                        stopsTable.appendChild(row);
                        
                        var routeNumberCell2 = document.createElement("td");
                        routeNumberCell2.textContent = routeNumber;
                        row.appendChild(routeNumberCell2);
                        stopsTable.appendChild(row);
                        
                        
                        var row = document.createElement("tr");
                        var sourceCell = document.createElement("td");
                        sourceCell.textContent = "Source: ";
                        row.appendChild(sourceCell);
                        stopsTable.appendChild(row);
                        
                        var sourceCell2 = document.createElement("td");
                        sourceCell2.textContent = source;
                        row.appendChild(sourceCell2);
                        stopsTable.appendChild(row);
                        
                        var row = document.createElement("tr");
                        var destinationCell = document.createElement("td");
                        destinationCell.textContent = "Destination: ";
                        row.appendChild(destinationCell);
                        stopsTable.appendChild(row);
                        
                        var destinationCell2 = document.createElement("td");
                        destinationCell2.textContent = destination;
                        row.appendChild(destinationCell2);
                        stopsTable.appendChild(row);
                        
                        
                        // Show the popup content
                        routePopupContent.style.display = "block";
                        
                        // Iterate over the stops in the response and populate the stops table
                        var stops = JSON.parse(response);
                        for (var i = 0; i < stops.length; i++) {
                            var stop = stops[i];
                            var row = document.createElement("tr");
                            
                            var stopNumberCell = document.createElement("td");
                            stopNumberCell.textContent = "Stop " + (i + 1);
                            row.appendChild(stopNumberCell);
                            
                            var stopNameCell = document.createElement("td");
                            stopNameCell.textContent = stop.stop_name;
                            row.appendChild(stopNameCell);
                            
                            stopsTable.appendChild(row);
                        }
                        
                        var popup = document.createElement("div");
                        popup.classList.add("popup");
                        var content = routePopupContent.cloneNode(true);
                        content.style.display = "block";
                        popup.appendChild(content);
                        
                        // Append the popup to the body
                        document.body.appendChild(popup);
                        
                        // Close the popup when clicked outside of it
                        
                        popup.addEventListener("click", function(event) {
                            if (event.target === popup) {
                                popup.remove();
                                routePopupContent.style.display = "none";
                            }
                        });
                    },

                    error: function(xhr, status, error) {
                        // Handle the error response from the controller
                        console.error("AJAX request failed: " + status + ", " + error);
                    }
                });
            };
        }

        
        
        
        function showRoutes() {
            $.ajax({
                url: "routeList", // Replace with the actual URL of your service
                method: "GET",
                success: function(response) {
                    var routes = JSON.parse(response);
                    var tableBody = document.querySelector("#routeList table tbody");
                    tableBody.innerHTML = ""; // Clear existing table rows
                    
                    // Iterate over the routes and populate the table
                    for (var i = 0; i < routes.length; i++) {
                        var route = routes[i];
                        var row = document.createElement("tr");

                        var routeIdCell = document.createElement("td");
                        routeIdCell.textContent = route.route_id;
                        row.appendChild(routeIdCell);
                        
                        var sourceCell = document.createElement("td");
                        sourceCell.textContent = route.source;
                        row.appendChild(sourceCell);
                        
                        var destinationCell = document.createElement("td");
                        destinationCell.textContent = route.destination;
                        row.appendChild(destinationCell);
                        
                        var actionsCell = document.createElement("td");
                        var viewDetailsButton = document.createElement("button");
                        viewDetailsButton.textContent = "View Details";
                        viewDetailsButton.addEventListener("click", createViewRouteDetailsHandler(route.route_id,route.source,route.destination));
                        actionsCell.appendChild(viewDetailsButton);
                        row.appendChild(actionsCell);
                        
                        tableBody.appendChild(row);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX request failed: " + status + ", " + error);
                }
            });

            document.getElementById("dashboard2").style.display = "none";
            document.getElementById("serviceList").style.display = "none";
            document.getElementById("busList").style.display = "none";
            document.getElementById("routeList").style.display = "block";
            document.getElementById("ticketList").style.display = "none";
            document.getElementById("paymentList").style.display = "none";
        }

        function createViewRouteDetailsHandler(routeNumber,source,destination) {
            return function() {
                // AJAX call to retrieve route details
                $.ajax({
                    url: "viewRouteDetails", // Replace with the actual URL of your controller endpoint
                    method: "GET",
                    data: { routeNumber: routeNumber },
                    success: function(response) {
                        // Handle the success response from the controller
                        console.log("Route details retrieved successfully:", response);
                        
                        // Process the retrieved route details as needed
                        
                        // Get the necessary data from the response and populate the popup content
                        var routePopupContent = document.getElementById("routePopupContent");
                        var routeNumberElement = document.getElementById("routeNumber");
                        var routeSourceElement = document.getElementById("routeSource");
                        var routeDestinationElement = document.getElementById("routeDestination");
                        var stopsTable = routePopupContent.querySelector("table");
                        
                        // Clear existing stops from the table
                        stopsTable.innerHTML = "";
                        
                        // Set the route number value
                        routeNumberElement.textContent = routeNumber;
                        var row = document.createElement("tr");
                        var routeNumberCell = document.createElement("td");
                        routeNumberCell.textContent = "Route: ";
                        row.appendChild(routeNumberCell);
                        stopsTable.appendChild(row);
                        
                        var routeNumberCell2 = document.createElement("td");
                        routeNumberCell2.textContent = routeNumber;
                        row.appendChild(routeNumberCell2);
                        stopsTable.appendChild(row);
                        
                        
                        var row = document.createElement("tr");
                        var sourceCell = document.createElement("td");
                        sourceCell.textContent = "Source: ";
                        row.appendChild(sourceCell);
                        stopsTable.appendChild(row);
                        
                        var sourceCell2 = document.createElement("td");
                        sourceCell2.textContent = source;
                        row.appendChild(sourceCell2);
                        stopsTable.appendChild(row);
                        
                        var row = document.createElement("tr");
                        var destinationCell = document.createElement("td");
                        destinationCell.textContent = "Destination: ";
                        row.appendChild(destinationCell);
                        stopsTable.appendChild(row);
                        
                        var destinationCell2 = document.createElement("td");
                        destinationCell2.textContent = destination;
                        row.appendChild(destinationCell2);
                        stopsTable.appendChild(row);
                        
                        
                        // Show the popup content
                        routePopupContent.style.display = "block";
                        
                        // Iterate over the stops in the response and populate the stops table
                        var stops = JSON.parse(response);
                        for (var i = 0; i < stops.length; i++) {
                            var stop = stops[i];
                            var row = document.createElement("tr");
                            
                            var stopNumberCell = document.createElement("td");
                            stopNumberCell.textContent = "Stop " + (i + 1);
                            row.appendChild(stopNumberCell);
                            
                            var stopNameCell = document.createElement("td");
                            stopNameCell.textContent = stop.stop_name;
                            row.appendChild(stopNameCell);
                            
                            stopsTable.appendChild(row);
                        }
                        
                        var popup = document.createElement("div");
                        popup.classList.add("popup");
                        var content = routePopupContent.cloneNode(true);
                        content.style.display = "block";
                        popup.appendChild(content);
                        
                        // Append the popup to the body
                        document.body.appendChild(popup);
                        
                        // Close the popup when clicked outside of it
                        
                        popup.addEventListener("click", function(event) {
                            if (event.target === popup) {
                                popup.remove();
                                routePopupContent.style.display = "none";
                            }
                        });
                    },

                    error: function(xhr, status, error) {
                        // Handle the error response from the controller
                        console.error("AJAX request failed: " + status + ", " + error);
                    }
                });
            };
        }



        function showServices() {
            $.ajax({
                url: "serviceList", // Replace with the actual URL of your service
                method: "GET",
                success: function(response) {
                    var services = JSON.parse(response);
                    var tableBody = document.querySelector("#serviceList table tbody");
                    tableBody.innerHTML = ""; // Clear existing table rows

                    // Iterate over the services and populate the table
                    for (var i = 0; i < services.length; i++) {
                        var service = services[i];
                        var row = document.createElement("tr");

                        var serviceIdCell = document.createElement("td");
                        serviceIdCell.textContent = service.service_id;
                        row.appendChild(serviceIdCell);

                        var tripIdCell = document.createElement("td");
                        tripIdCell.textContent = service.trip_id;
                        row.appendChild(tripIdCell);

                        var tripDateCell = document.createElement("td");
                        tripDateCell.textContent = new Date(service.trip_date).toLocaleDateString();
                        row.appendChild(tripDateCell);

                        var seatsBookedCell = document.createElement("td");
                        seatsBookedCell.textContent = service.seats_available;
                        row.appendChild(seatsBookedCell);

                        var collectionCell = document.createElement("td");
                        collectionCell.textContent = service.collection;
                        row.appendChild(collectionCell);

                        var viewDetailsCell = document.createElement("td");
                        var viewDetailsButton = document.createElement("button");
                        viewDetailsButton.textContent = "View Details";
                        viewDetailsButton.addEventListener("click", createViewDetailsHandler(service));
                        viewDetailsCell.appendChild(viewDetailsButton);
                        row.appendChild(viewDetailsCell);

                        tableBody.appendChild(row);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX request failed: " + status + ", " + error);
                }
            });

            document.getElementById("dashboard2").style.display = "none";
            document.getElementById("serviceList").style.display = "block";
            document.getElementById("busList").style.display = "none";
            document.getElementById("routeList").style.display = "none";
            document.getElementById("ticketList").style.display = "none";
            document.getElementById("paymentList").style.display = "none";
        }

        function createViewDetailsHandler(service) {
            return function() {
                $.ajax({
                    url: "viewServiceDetails", // Replace with the actual URL of your controller endpoint
                    method: "GET",
                    data: { serviceId: service.service_id },
                    success: function(response) {
                        // Handle the success response from the controller
                        console.log("Service details retrieved successfully:", response);
                        
                        // Process the retrieved service details as needed
                        var popupContent = document.getElementById("popupContent");
                        
                        // Parse the JSON response
                        var serv = JSON.parse(response);
                        
                        // Set the values in the popup content
                        document.getElementById("serviceId").textContent = serv.serviceId;
                        document.getElementById("source").textContent = serv.source;
                        document.getElementById("destination").textContent = serv.destination;
                        document.getElementById("departure").textContent = serv.departure;
                        document.getElementById("arrival").textContent = serv.arrival;
                        document.getElementById("tripDate").textContent = serv.tripDate;
                        document.getElementById("busType").textContent = serv.busType;
                        document.getElementById("routeId").textContent = serv.routeId;
                        document.getElementById("collection").textContent = serv.collection;
                        document.getElementById("seatsAvailable").textContent = serv.seatsAvailable;
                        document.getElementById("seatsBooked").textContent = serv.seatsBooked;
                        document.getElementById("busTypeTitle").textContent = serv.busTypeTitle;
                        document.getElementById("busTypeDescription").textContent = serv.busTypeDescription;
                        
                        // Show the popup content
                        popupContent.style.display = "block";
                        
                        // Create a popup element
                        var popup = document.createElement("div");
                        popup.classList.add("popup");
                        
                        // Clone the popup content and append it to the popup element
                        var content = popupContent.cloneNode(true);
                        content.style.display = "block";
                        popup.appendChild(content);
                        
                        // Append the popup to the body
                        document.body.appendChild(popup);
                        
                        // Close the popup when clicked outside of it
                        popup.addEventListener("click", function(event) {
                            if (event.target === popup) {
                                popup.remove();
                                popupContent.style.display = "none";
                            }
                        });
                    },
                    error: function(xhr, status, error) {
                        // Handle the error response from the controller
                        console.error("AJAX request failed: " + status + ", " + error);
                    }
                });
            };
        }






        function showBuses() {
            $.ajax({
                url: "busList", // Replace with the actual URL of your service
                method: "GET",
                success: function(response) {
                    var buses = JSON.parse(response);
                    var tableBody = document.querySelector("#busList table tbody");
                    tableBody.innerHTML = ""; // Clear existing table rows
                    
                    // Iterate over the services and populate the table
                    for (var i = 0; i < buses.length; i++) {
                        var bus = buses[i];
                        var row = document.createElement("tr");

                        var busIdCell = document.createElement("td");
                        busIdCell.textContent = bus.bus_id;
                        row.appendChild(busIdCell);
                        
                        
                        var regnoCell = document.createElement("td");
                        regnoCell.textContent = bus.regno;
                        row.appendChild(regnoCell);
                        
                        
                        var typeIdCell = document.createElement("td");
                        typeIdCell.textContent = bus.type_id;
                        row.appendChild(typeIdCell);
                        
                        
                        var seatCell = document.createElement("td");
                        seatCell.textContent = bus.bus_no_seats;
                        row.appendChild(seatCell);
                        
                        
                        var statusCell = document.createElement("td");
                        statusCell.textContent = bus.bus_status;
                        row.appendChild(statusCell);
                        

                        tableBody.appendChild(row);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("AJAX request failed: " + status + ", " + error);
                }
            });
            document.getElementById("dashboard2").style.display = "none";
            document.getElementById("serviceList").style.display = "none";
            document.getElementById("busList").style.display = "block";
            document.getElementById("routeList").style.display = "none";
            document.getElementById("ticketList").style.display = "none";
            document.getElementById("paymentList").style.display = "none";
        }
    </script>
</body>
</html>
