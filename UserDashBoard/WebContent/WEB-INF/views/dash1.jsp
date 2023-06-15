<!DOCTYPE html>
<html>
<head>
  <title>User Dashboard</title>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  <style>
    /* CSS styles for the dashboard */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #f1f1f1;
    }
    .sidebar {
      background-color: #333;
      color: #fff;
      width: 200px;
      height: 100vh;
      position: fixed;
      top: 0;
      left: 0;
      padding: 20px;
      display: flex;
      flex-direction: column;
      justify-content: space-between;
    }
    .sidebar ul {
      list-style-type: none;
      padding: 0;
      margin: 0;
      margin-top: auto;
      padding-bottom: 500px;
    }
    .sidebar li {
      margin-bottom: 10px;
    }
    .sidebar li a {
      color: #fff;
      text-decoration: none;
      display: block;
      padding: 10px;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }
    .sidebar li a:hover {
      background-color: #555;
    }
    .user-info {
      display: flex;
      flex-direction: column;
      align-items: center;
      margin-bottom: 20px;
    }
    .user-info img {
      width: 130px;
      height: 130px;
      border-radius: 50%;
      margin-bottom: 10px;
    }
    .user-info span {
      font-weight: bold;
      font-size: 18px;
      cursor: pointer;
      text-decoration: underline;
    }
    .logout-link {
      margin-top: auto;
      color: white;
    }
    .content {
      margin-left: 250px;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
      font-size: 24px;
      margin-bottom: 20px;
    }
    h2 {
      font-size: 20px;
      margin-bottom: 10px;
    }
    p {
      margin-bottom: 10px;
    }
    .user-details p {
      margin-bottom: 5px;
    }
    .user-details.show {
      display: block;
    }
    .user-details {
      display: none;
      margin: 20px auto;
      max-width: 400px;
      padding: 20px;
      background-color: #fff;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    .dashboard {
      display: flex;
      flex-wrap: wrap;
      gap: 20px;
    }
    .dashboard p {
      border: 1px solid #ccc;
      padding: 10px;
      border-radius: 5px;
      background-color: #f5f5f5;
      margin: 0;
      flex-basis: 50%;
    }
    
    /* Added styles and colors for the user profile */
    .user-details h2 {
      font-size: 24px;
      margin-bottom: 20px;
      color: #333;
      text-align: center;
    }
    .user-details label {
      font-weight: bold;
    }
    .user-details input[type="int"],
    .user-details input[type="text"],
    .user-details input[type="double"],
    .user-details input[type="password"],
    .user-details input[type="email"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .user-details button {
      padding: 10px 20px;
      background-color: #333;
      color: #fff;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    .user-details button:hover {
      background-color: #555;
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
  
   .ticket-details {
      display: none;
      }
      .passenger-details {
      display: none;
      }
    
    
    
  </style>
</head>
<body>
  <div class="sidebar">
    <div class="user-info">
      <img src="https://tse4.mm.bing.net/th?id=OIP.CUmXK7A3sWtCO2KP_yPztgAAAA&pid=Api&P=0&h=180" alt="User Icon">
      <li><a href="#" onclick="showUserDetails()">Renuka</a></li>
    </div>
    <ul>
      <li><a href="#" onclick="showDashboard()">Dashboard</a></li>
      <li><a href="#passengers" onclick="showPassengers()">Passengers</a></li>
      <li><a href="#booking-history" onclick="showBooking()">Booking History</a></li>
        
   <li>
    <div class="logout-link">
      <a href="#logout">Logout</a>

    </div> 
     </li>
     </ul>
  </div>

  <div class="content" id="content">
    <!-- Your dashboard content goes here -->
    <div style="display: flex; justify-content: space-between; align-items: center;">
      <h1>Welcome to the Avengers BTRS User Dashboard</h1>
    </div>

    <div class="dashboard2" id="dashboard2">
      <h2>Statistics</h2>
      <div class="dashboard" id="dashboard">
        <p><strong>Number of Times Travel:</strong> 5</p>
        <p><strong>Number of Tickets Booked:</strong> 10</p>
        <p><strong>Wallet Amount:</strong> $500</p>
        <!-- Add more <p> tags here as needed -->
      </div>
    </div>

    <div class="user-details" id="userDetails">
     <center><h2>Profile</h2> </center> 
      <form id="userForm"></form>
      <!-- User details will be loaded dynamically here -->
    </div>
    
    <div class="passenger-details" id="passengerDetails">
     <center><h2>Diaply all the passengers of the User</h2> </center> 
      <!-- User details will be loaded dynamically here -->
    </div>
    
    
    
    <div class="ticket-details" id="ticketDetails">
	<center>
	<table>
  	<thead>
    <tr>
      <th>Booking ID</th>
      <th>Payment ID</th> 
      <th>User ID</th>
      <th>Booking Date</th>
       <th>Booking Time</th>
      <th> route id </th>
     <th>Trip ID</th>
      <th>Service ID</th>
      <th>Payment Mode</th>
      <th>Total Fare</th>
      <th>Status</th>
      <th> No Of seats Booked </th>
     
    </tr>
  </thead>
  <tbody>
     
    <!-- Add more rows as needed -->
  </tbody>
</table>
	
	</center>
    </div>
    
</div>
  <script>
  function showDashboard() {
      document.getElementById("dashboard2").style.display = "grid";
      document.getElementById("userDetails").style.display = "none";
      document.getElementById("ticketDetails").style.display = "none";
      document.getElementById("passengerDetails").style.display = "none";
      
  }  
 
  
  function showUserDetails() {
	  $.ajax({
	    url: "UserList", // Replace with the actual URL of your service
	    method: "GET",
	    success: function(response) {
	      var users = JSON.parse(response);
	      var form = document.getElementById("userForm");
	      form.innerHTML = ""; // Clear existing form fields

	      // Iterate over the users and populate the form
	      for (var i = 0; i < users.length; i++) {
	        var user = users[i];

	        // Create label element
	        var label = document.createElement("label");
	        label.textContent = "User ID: " ;
	        label.style.fontWeight = "bold";
	        label.readOnly=true;
	        form.appendChild(label);
	        var input = document.createElement("input");
	        input.type = "int";
	        input.value = user.user_id;
	        input.disabled = true; // Disable input field
	        input.name = "userId";
	        input.id = 'userId';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user email
	        var label = document.createElement("label");
	        label.textContent = "User Email: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "email";
	        input.value = user.email;
	        input.disabled = true; // Disable input field
	        input.name = "userEmail";
	        input.id = 'userEmail';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));
	        
	        
	        // Create input element to display user password
	        var label = document.createElement("label");
	        label.textContent = "Password: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "password";
	        input.value = user.password;
	        input.disabled = true; // Disable input field
	        input.name = "password";
	        input.id = 'password';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user name
	        var label = document.createElement("label");
	        label.textContent = "User  Name: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "text";
	        input.value = user.full_name;
	        input.disabled = true; // Disable input field
	        input.name = "userName";
	        input.id = 'userName';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user age
	        var label = document.createElement("label");
	        label.textContent = "Age: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "int";
	        input.value = user.age;
	        input.disabled = true; // Disable input field
	        input.name = "age";
	        input.id = 'age';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user gender
	        var label = document.createElement("label");
	        label.textContent = "Gender: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "text";
	        input.value = user.gender;
	        input.disabled = true; // Disable input field
	        input.name = "gender";
	        input.id = 'gender';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user address
	        var label = document.createElement("label");
	        label.textContent = "cashback: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "double";
	        input.value = user.cashback;
	        input.disabled = true; // Disable input field
	        input.name = "cashback";
	        input.id = 'cashback';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));
	        
	        
	        // Create input element to display user address
	        var label = document.createElement("label");
	        label.textContent = "wallet: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "double";
	        input.value = user.wallet;
	        input.disabled = true; // Disable input field
	        input.name = "wallet";
	        input.id = 'wallet';
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));
	       

	        // Create Edit button
	        var editButton = document.createElement("button");
	        editButton.textContent = "Edit";
	        editButton.addEventListener("click", function() {
	          enableEdit(form, user.user_id);

	        });
	        form.appendChild(editButton);
	        form.appendChild(document.createTextNode("    "));
	       
	        //create save button
	        
	        var saveButton = document.createElement("input");
	        saveButton.type = "submit";
	        saveButton.textContent = "Save";
	        saveButton.id = 'Save';
	        saveButton.addEventListener("click", function() {
		          savedata(form, user.user_id);

		        });
	       
	        form.appendChild(saveButton);
	        
	        
	      }
	    },
	    error: function(xhr, status, error) {
	      console.error("AJAX request failed: " + status + ", " + error);
	    }
	  });

	  document.getElementById("dashboard2").style.display = "none";
	  document.getElementById("userDetails").style.display = "block";
	    document.getElementById("ticketDetails").style.display = "none";
	      document.getElementById("passengerDetails").style.display = "none";

	}

  var userId; // Declare a variable to store the user ID

  function enableEdit(form, id) {
    // Store the user ID
    userId = id;
    console.log(userId);
    

    // Enable all input fields in the form
    var inputs = form.getElementsByTagName("input");
    for (var i = 3; i < inputs.length; i++) {
      inputs[i].disabled = false;
    }
  }
  
  function savedata(form, id1){
	  $("#userForm").submit(function(event) {
		  
		  event.preventDefault();
		  var id= $("#userId").val();
		  var user = $("#userEmail").val();
		  var password= $("#password").val();
          var name = $("#userName").val();
          var age = $("#age").val();
          var gender = $("#gender").val();
          var cashback = $("#cashback").val();
          var wallet = $("#wallet").val();
          
          var user={
        		  "user_id": id,
                  "email": user,
                  "password": password,
                  "full_name": name,
                  "age": age,
                  "gender": gender,
                  "cashback": cashback,
                  "wallet":wallet
          };
          
		  var data=JSON.stringify(user);
		  
		  console.log(data); 
          $.ajax({
              type: "POST",
              url: "updateUser",
              data:data,  //{user_id:id,user_email:user,user_name:name,dob:dob,mobile:mobile,address:address,passwords:passwords},
              contentType: "application/json",
              success: function(response) {
                  // Handle success response
                  alert(data);
                  console.log(user);
                  console.log("Employee updated successfully!");
                  // Redirect to employee details page or show a success message
              },
              error: function(xhr, status, error) {
                  // Handle error response
                  console.log(user);
                  console.log("Error updating employee: " + error);
                  // Show an error message or handle the error case
              }
          });
	  });
  }
  
 
 function showBooking(){
 	$.ajax({
         url: "ticketList", // Replace with the actual URL of your service
         method: "GET",
         success: function(response) {
             var tickets = JSON.parse(response);
             var tableBody = document.querySelector("#ticketDetails table tbody");
             tableBody.innerHTML = ""; // Clear existing table rows
             
             // Iterate over the services and populate the table
             for (var i = 0; i < tickets.length; i++) {
                 var ticket = tickets[i];
                 var row = document.createElement("tr");

                 var bookingIdCell = document.createElement("td");
                 bookingIdCell.textContent = ticket.booking_id;
                 row.appendChild(bookingIdCell);
                 
                 var paymentIdCell = document.createElement("td");
                 paymentIdCell.textContent = ticket.payment_id;
                 row.appendChild(paymentIdCell);
                 
                 var userIdCell = document.createElement("td");
                 userIdCell.textContent = ticket.user_id;
                 row.appendChild(userIdCell);
                 
                 var bookingdateCell = document.createElement("td");
                 bookingdateCell.textContent = ticket.booking_date;
                 row.appendChild(bookingdateCell);
                 
                 var bookingtimeCell = document.createElement("td");
                 bookingtimeCell.textContent = ticket.booking_time;
                 row.appendChild(bookingtimeCell);
                 
                 
                 var routeIdCell = document.createElement("td");
                 routeIdCell.textContent = ticket.route_id;
                 row.appendChild(routeIdCell);
                 
                 var tripIdCell = document.createElement("td");
                 tripIdCell.textContent = ticket.trip_id;
                 row.appendChild(tripIdCell);
                 
                 var serviceIdCell = document.createElement("td");
                 serviceIdCell.textContent = ticket.service_id;
                 row.appendChild(serviceIdCell);
                 
  
                 var paymentModeCell = document.createElement("td");
                 paymentModeCell.textContent = ticket.payment_mode;
                 row.appendChild(paymentModeCell);
                 
                 
                 var totalfareCell = document.createElement("td");
                 totalfareCell.textContent = ticket.total_fare;
                 row.appendChild(totalfareCell);
                 
                 var statusCell = document.createElement("td");
                 statusCell.textContent = ticket.status;
                 row.appendChild(statusCell);
                 
                 
                 var noofseatsbokkedCell = document.createElement("td");
                 noofseatsbokkedCell.textContent = ticket.no_of_seats_booked;
                 row.appendChild(noofseatsbokkedCell);

                 
                 tableBody.appendChild(row);
             }
         },
         error: function(xhr, status, error) {
             console.error("AJAX request failed: " + status + ", " + error);
         }
     });

 	document.getElementById("dashboard2").style.display = "none";
    document.getElementById("userDetails").style.display = "none";
   document.getElementById("ticketDetails").style.display = "block";	
   document.getElementById("passengerDetails").style.display = "none";

 }
 
 function showPassengers(){
	 
	 document.getElementById("dashboard2").style.display = "none";
	    document.getElementById("userDetails").style.display = "none";
	   document.getElementById("ticketDetails").style.display = "none";	
	   document.getElementById("passengerDetails").style.display = "block";
	 
 }
 
  </script>
</body>
</html>
