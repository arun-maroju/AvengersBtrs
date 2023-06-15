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
    .user-details input[type="text"],
    .user-details input[type="date"],
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
  </style>
</head>
<body>
  <div class="sidebar">
    <div class="user-info">
      <img src="https://tse4.mm.bing.net/th?id=OIP.CUmXK7A3sWtCO2KP_yPztgAAAA&pid=Api&P=0&h=180" alt="User Icon">
      <li><a href="#" onclick="showUserDetails()">John Doe</a></li>
    </div>
    <ul>
      <li><a href="#" onclick="showDashboard()">Dashboard</a></li>
      <li><a href="#passengers" onclick="showPassengers()">Passengers</a></li>
      <li><a href="#booking-history" onclick="showBooking()">Booking History</a></li>
      <li><a href="#tickets" onclick="showTickets()">Tickets</a></li>
        
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
    
</div>
  <script>
  function showDashboard() {
      document.getElementById("dashboard2").style.display = "grid";
      document.getElementById("userDetails").style.display = "none";
     // document.getElementById("routeList").style.display = "none";
      
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
	        label.textContent = "User ID: " + user.user_id;
	        label.style.fontWeight = "bold";
	        form.appendChild(label);
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user email
	        var label = document.createElement("label");
	        label.textContent = "User Email: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "email";
	        input.value = user.user_email;
	        input.disabled = true; // Disable input field
	        input.name = "userEmail";
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user name
	        var label = document.createElement("label");
	        label.textContent = "User Name: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "text";
	        input.value = user.user_name;
	        input.disabled = true; // Disable input field
	        input.name = "userName";
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user DOB
	        var label = document.createElement("label");
	        label.textContent = "User DOB: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "date";
	        input.value = user.dob;
	        input.disabled = true; // Disable input field
	        input.name = "dob";
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user mobile
	        var label = document.createElement("label");
	        label.textContent = "Mobile: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "text";
	        input.value = user.mobile;
	        input.disabled = true; // Disable input field
	        input.name = "mobile";
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create input element to display user address
	        var label = document.createElement("label");
	        label.textContent = "Address: ";
	        form.appendChild(label);
	        label.style.fontWeight = "bold";
	        var input = document.createElement("input");
	        input.type = "text";
	        input.value = user.address;
	        input.disabled = true; // Disable input field
	        input.name = "address";
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
	        input.value = user.passwords;
	        input.disabled = true; // Disable input field
	        input.name = "password";
	        form.appendChild(input);
	        input.style.width = "200px";
	        form.appendChild(document.createElement("br"));
	        form.appendChild(document.createElement("br"));

	        // Create Edit button
	        var editButton = document.createElement("button");
	        editButton.textContent = "Edit";
	        editButton.addEventListener("click", function() {
	          enableEdit(form, user.user_id);
	          console.log(user.user_id);
	        });
	        form.appendChild(editButton);
	        form.appendChild(document.createTextNode("    "));
	       
	        //create save button
	        var saveButton = document.createElement("button");
	        saveButton.textContent = "Save";
	        saveButton.addEventListener("click", function() {
		          updateUser(form);
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
	}

  var userId; // Declare a variable to store the user ID

  function enableEdit(form, id) {
    // Store the user ID
    userId = id;

    // Enable all input fields in the form
    var inputs = form.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
      inputs[i].disabled = false;
    }
  }
	
	function updateUser() {
		  // Get the form and retrieve the updated user data
		  var form = document.getElementById("userForm");
		  var user = {
		    user_id: 3,
		    user_email: form.querySelector('input[name="userEmail"]').value,
		    user_name: form.querySelector('input[name="userName"]').value,
		    dob: form.querySelector('input[name="dob"]').value,
		    mobile: form.querySelector('input[name="mobile"]').value,
		    address: form.querySelector('input[name="address"]').value,
		    passwords: form.querySelector('input[name="password"]').value
		  };

		  $.ajax({
		    type: "POST",
		    url: "updateUser",
		    data: JSON.stringify(user),
		    contentType: "application/json",
		    success: function(response) {
		      // Handle the success response, if needed
		      console.log("data updated sucessfully");
		    },
		    error: function(xhr, status, error) {
		      // Handle the error response, if needed
		    	console.log("error while updating the data ");
		    }
		  });
		}
  </script>
</body>
</html>