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
</style>

</head>

<body>

<jsp:include page="navbar.jsp">
  <jsp:param name="currentPage" value="home" />
</jsp:include>
  <div class="container">
    <h1>Send Email</h1>
    <div class="form-container">
      <label for="to">Username:</label>
      <input type="email" name="to" id="to" class="input-field" readonly>
      <button type="button" id="sendEmailButton" class="confirmButton">Send Email</button>
    </div>
    <div id="otpContainer">
      <form action="validateOTP" method="POST">
      	<input type="hidden" name="enotp" id="enotp">
        <label for="otp">OTP:</label>
        <input type="text" name="otp" id="otp" class="input-field">
        <button type="submit" id="otpButton" class="confirmButton">Confirm</button>
      </form>
    </div>
  </div>

<script>
  $(document).ready(function() {
	  
      var alertMessage = "${msg}";
      if (alertMessage) {
          alert(alertMessage);
      }
	  
    var urlParams = new URLSearchParams(window.location.search);
    var inputData = urlParams.get('data');
   
    if(inputData==null)
    	{
    		inputData="${email}"
    	}
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
    });

</script>
</body>
</html>
