<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    margin-bottom: 5px;
    color: #555;
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

<body>
 <div class="container">
    <h1>SignUp</h1>
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
    <div id="signupContainer">
      <form action="Home" method="get">
        <label>Full Name:</label>
        <input type="text" name="name" id="name"><br>
        <label>Age:</label>
        <input type="number" name="age" id="age"><br>
        
        <div class="radio-container">
         <label class="label">Gender:</label>
         <input type="radio" name="gender" value="male" id="male">
  		 <label for="male">Male</label>

  		 <input type="radio" name="gender" value="female" id="female">
 		 <label for="female">Female</label>

	    <input type="radio" name="gender" value="other" id="other">
  		<label for="other">Other</label>
         </div>
         <label>Set Password:</label>
         <input type="password" name="pwd" id="pwd"><br>
        <button type="submit" id="signupbtn" class="confirmButton">SignUp</button>
      </form>
    </div>
  </div>

<script>
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
            	if(data.key1=='success'){
            		var signupContainer = document.getElementById('signupContainer');
            		signupContainer.style.display = 'block';
            	}
            },
            error: function(xhr, status, error) {
              alert('Hello .. Failed to match otp:', error);
            }
          });
	});
  });
</script>
</body>
</html>