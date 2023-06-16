<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<style>
  body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    margin: 0;
    padding: 0;
  }

  .container {
    max-width: 400px;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
  }

  h1 {
    text-align: center;
    margin-top: 0;
    color: #333;
  }

  .form-container {
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 5px;
  }

  label {
    display: block;
    margin-bottom: 10px;
    color: #555;
    font-weight: bold;
  }

  .input-field {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-bottom: 10px;
    font-size: 16px;
  }

  .confirmButton {
    background-color: #4CAF50;
    color: #fff;
    padding: 10px 40px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    display: block;
    margin: 10px auto;
    font-size: 16px;
  }

  #otpContainer {
    display: none;
    margin-top: 20px;
  }
  
  #signupContainer {
    display: none;
    margin-top: 20px;
    background-color: #f9f9f9;
    padding: 20px;
    border-radius: 5px;
  }
  
  .radio-container {
    display: flex;
    gap: 10px;
    margin-bottom: 10px;
  }

  .radio-container input[type="radio"],
  .radio-container label {
    display: inline-block;
    vertical-align: middle;
  }

  .radio-container .radio-label {
    margin-right: 10px;
  }
</style>







</head>
<jsp:include page="navbar.jsp">
  <jsp:param name="currentPage" value="home" />
</jsp:include>
<body>
  <div class="container">
  	<div id="otp-block">
    <h1>Sign Up</h1>
    <div class="form-container">
      <label for="to">Email:</label>
      <input type="email" name="to" id="to" class="input-field">
      <button type="button" id="sendEmailButton" class="confirmButton">Send Email</button>
    </div>
    <div id="otpContainer">
      <label for="otp">OTP:</label>
      <input type="text" name="otp" id="otp" class="input-field">
      <input type="button" id="otpButton" class="confirmButton" value="Confirm">
    </div>
    </div>
   <div id="signupContainer">
  <form id="myForm" action="registerUser" method="POST">
  
			    <label for="name">Full Name:</label>
			  			  <input type="text" name="full_name" id="name" class="input-field" required>
			    <label for="email">Email-Id:</label>
			   				 <input type="email" name="email" id="user-email" class="input-field" readonly>
			    
			    <label for="age">Age:</label>
			    			<input type="number" name="age" id="age" class="input-field" required>
			    <label for="gender">Gender:</label>
						    <select name="gender" id="gender" class="input-field" required>
						      <option value="Male">Male</option>
						      <option value="Female">Female</option>
						      <option value="Other">Other</option>
						    </select>
				<label for="password">Password:</label>
						<input type="password" id="password" name="password" class="input-field" required>
				
				<label for="confirmPassword">Confirm Password:</label>
						<input type="password" id="confirmPassword" class="input-field" required>
				
						<input type="checkbox" id="togglePassword" onchange="togglePasswordVisibility()">
				<label for="togglePassword">Show Password</label>
				
		<button type="submit" id="signupbtn" class="confirmButton" onclick="validatePassword()">Sign Up</button>
  </form>
</div>

  </div>

<script>
function togglePasswordVisibility() {
	  var passwordField = document.getElementById("password");
	  var confirmPasswordField = document.getElementById("confirmPassword");
	  var toggleCheckbox = document.getElementById("togglePassword");

	  if (toggleCheckbox.checked) {
	    passwordField.type = "text";
	    confirmPasswordField.type = "text";
	  } else {
	    passwordField.type = "password";
	    confirmPasswordField.type = "password";
	  }
	}

function validatePassword() {
	  var password = document.getElementById("password").value;
	  var confirmPassword = document.getElementById("confirmPassword").value;

	  // Validate password length (between 8 and 16 characters)
	  if (password.length < 8 || password.length > 16) {
	    alert("Password must be between 8 and 16 characters");
	    return;
	  }

	  // Validate at least one special symbol, one letter, and one digit
	  var passwordRegex = /^(?=.*[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?])(?=.*[a-zA-Z])(?=.*\d).{8,16}$/;
	  if (!passwordRegex.test(password)) {
	    alert("Password must contain at least one special symbol, one letter, and one digit");
	    return;
	  }

	  // Check if password and confirm password match
	  if (password !== confirmPassword) {
		  alert("Passwords do not match");
		  //  event.preventDefault(); // Prevent form submission
	  }

	  // Password is valid
	 // alert("Password is valid");
	}

document.getElementById("myForm").addEventListener("submit", function(event) {
	  var password = document.getElementById("password").value;
	  var confirmPassword = document.getElementById("confirmPassword").value;

	  if (password !== confirmPassword) {
	   // alert("Passwords do not match");
	    event.preventDefault(); // Prevent form submission
	  }
	});


  $(document).ready(function() {
    var urlParams = new URLSearchParams(window.location.search);
    var inputData = urlParams.get('data');
    $('#to').val(inputData);

    $('#sendEmailButton').click(function() {
      $('#otpContainer').show();
      var to = $('#to').val();
      $.ajax({
        url: 'email',
        method: 'GET',
        data: { to: to },
        success: function(response) {
          alert("Email Sent Successfully");
        },
        error: function(xhr, status, error) {
          alert('Failed to send email:', error);
        }
      });
    });

    $('#otpButton').click(function() {  	
      var otp = $('#otp').val();
      $.ajax({
        url: 'validateOTP1',
        method: 'POST',
        data: { otp: otp },
        success: function(response) {
          console.log(response); 
          var data = JSON.parse(response);
          if(data.key1 == 'success') {
            var signupContainer = document.getElementById('signupContainer');
            var prevBlock= document.getElementById('otp-block');
            signupContainer.style.display = 'block';
            prevBlock.style.display='none';
            var emailId = document.getElementById("to").value;            
            document.getElementById("user-email").value=emailId;
            
            
          }
        },
        error: function(xhr, status, error) {
          alert('Failed to match OTP:', error);
        }
      });
    });
  });
</script>
</body>
</html>
