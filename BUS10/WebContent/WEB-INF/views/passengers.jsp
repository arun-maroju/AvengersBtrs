<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="com.google.gson.Gson" %>
<%@ page import="com.avengers.bus.entityModels.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Passenger Management</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <style>
  body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    font-family: Arial, sans-serif;
  }

  .container {
    max-width: 800px;
    padding: 20px;
    background-color: #f2f2f2;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
  }

  h1 {
    text-align: center;
    margin-bottom: 20px;
  }

  .passenger-container {
    display: grid;
    grid-template-columns: 1fr 1fr;
    grid-gap: 10px;
    margin-bottom: 10px;
  }

  .passenger-container input,
  .passenger-container select {
    width: 100%;
    padding: 8px;
    border-radius: 3px;
    border: 1px solid #ccc;
    box-sizing: border-box;
  }

  .dropbtn {
    background-color: #04AA6D;
    color: white;
    padding: 8px;
    font-size: 12px;
    border: none;
  }

  .dropdown {
    position: relative;
    display: inline-block;
  }

  .dropdown-content {
    display: none;
    position: absolute;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    z-index: 1;
  }

  .dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
  }

  .dropdown-content a:hover {
    background-color: #ddd;
  }

  .dropdown:hover .dropdown-content {
    display: inline;
  }

  .dropdown:hover .dropbtn {
    background-color: #3e8e41;
  }

  .grid-container {
    display: flex;
    justify-content: flex-end;
    gap: 200px;
  }

  .table-container {
    flex-shrink: 0;
    margin-left: auto; 
    margin-top: 0px;
  }

  .container {
    flex-grow: 1;
    padding: 20px;
  }

  .table-container table {
    width: 100%;
    font-size: 14px;
    padding: 5px;
  }
</style>


    
    <!-- Add Bootstrap CDN link here -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
          integrity="sha384-pzjw8f+ua6UY3Buvv+XX8mejph6vPJS5TO6E8hSW/qn2U2iKPXp8j2DqbvlVN7F2"
          crossorigin="anonymous">
</head>
<body>
<%
    int counter = (Integer) request.getAttribute("count");
    System.out.println(counter);
    String seatsData = (String) request.getAttribute("seatsData");
    System.out.println(seatsData);

    Gson gson = new Gson();
    Map<String, String> selectedSeatsData = gson.fromJson(seatsData, Map.class);
    int i = 1;
%>

<div class="grid-container">
<div class="container">
    <h1>Passengers Details</h1>
    <form action="passengerPreview" method="POST">
        <div id="passenger-list">
            <%
                for (Map.Entry<String, String> entry : selectedSeatsData.entrySet()) {
                    String seatNumber = entry.getKey();
                    String genderStatus1 = entry.getValue();
                    String genderStatus = selectedSeatsData.getOrDefault(seatNumber, "Any");
            %>
            <div class="passenger-container">
                <label>Passenger Id</label>
                <label>Seat Number</label>
                <input type="text" name="passenger_id[]" value="P<%= String.format("%03d", i) %>" required readonly>
                <input type="text" name="seat_number[]" value="<%= seatNumber %>" required readonly>
                <input type="text" name="passenger_name[]" placeholder="Passenger Name" required>
                <input type="text" name="passenger_age[]" placeholder="Passenger Age" required>
                <select name="passenger_gender[]" <%= genderStatus.equals("Female") ? "disabled" : "" %> required>
                    <option value="Male" <%= genderStatus.equals("Male") ? "selected" : "" %>>Male</option>
                    <option value="Female" <%= genderStatus.equals("Female") ? "selected" : "" %>>Female</option>
                    <option value="Other" <%= genderStatus.equals("Other") ? "selected" : "" %>>Other</option>
                </select>
                <input type="hidden" name="passenger_gender[]" value="<%= genderStatus %>"
                       <%= genderStatus.equals("Female") ? "" : "disabled" %>>
            </div>
            <%
                i++;
            }
            %>
        </div>
        <br>
        <button type="submit" class="btn btn-primary">Submit</button>
        
    </form>
    <button onclick="goBack()" class="btn btn-secondary">Go Back</button>
</div>

<div class="table-container">
<h3>Previous passenger details</h3>
<table class="table table-striped" border='1'>
    <thead class="thead-dark">
    <tr>
        <th>Name</th>
        <th>Age</th>
        <th>Gender</th>
        <th>Action</th>
    </tr>
    </thead>
    <tbody>
    <%
   
        List<UserPassengers> userList = (List<UserPassengers>) request.getAttribute("userList");
        for (UserPassengers user : userList) {
    %>
    <tr>
        <td><%= user.getPassenger_name() %></td>
        <td><%= user.getAge() %></td>
        <td><%= user.getGender() %></td>
        <td>
            <div class="dropdown">
                <button class="dropbtn">Select Seat Number</button>
                <div class="dropdown-content">
                    <%
                        for (Map.Entry<String, String> entry : selectedSeatsData.entrySet()) {
                            String seatNumber = entry.getKey();
                    %>
                    <a href="#" onclick='fillFormFields(this)'><%= seatNumber %></a>
                    <%
                        }
                    %>
                </div>
            </div>
        </td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
</div>

</div>

<script>
	
    function goBack() {
    	
    	
    	  if (window.location.href.indexOf("#") > -1) {
    		    window.history.back();
    		  }
        window.history.back();
    }

    function fillFormFields(button) {
        console.log("in function");
        var row = button.parentNode.parentNode.parentNode.parentNode;
        var name = row.cells[0].innerText;
        var age = row.cells[1].innerText;
        var gender = row.cells[2].innerText;

        var selectedSeatNumber = button.textContent;
        var passengerContainers = document.getElementsByClassName('passenger-container');

        for (var i = 0; i < passengerContainers.length; i++) {
            var seatNumberField = passengerContainers[i].querySelector('input[name="seat_number[]"]');
            if (seatNumberField.value === selectedSeatNumber) {
                var passengerNameField = passengerContainers[i].querySelector('input[name="passenger_name[]"]');
                var passengerAgeField = passengerContainers[i].querySelector('input[name="passenger_age[]"]');
                var passengerGenderField = passengerContainers[i].querySelector('select[name="passenger_gender[]"]');

                if (passengerGenderField.disabled && gender === 'Female') {
                    passengerNameField.value = name;
                    passengerAgeField.value = age;
                    passengerGenderField.value = gender;
                } else if (!passengerGenderField.disabled) {
                    passengerNameField.value = name;
                    passengerAgeField.value = age;
                    passengerGenderField.value = gender;
                } else {
                    alert('Only female can book this seat');
                }
                return;
            }
        }

        alert('Invalid seat number. Please try again.');
    }
</script>

<!-- Add Bootstrap JavaScript CDN link here -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-pzjw8f+ua6UY3Buvv+XX8mejph6vPJS5TO6E8hSW/qn2U2iKPXp8j2DqbvlVN7F2"
        crossorigin="anonymous"></script>
</body>
</html>

