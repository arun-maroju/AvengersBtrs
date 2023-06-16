


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.avengers.bus.entityModels.*,java.util.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Bus Booking System</title>

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- Font Awesome icons -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">


<style>
/* Styles */

body {
  background-color: white;
  padding: 20px;
  
}

.container {
  max-width: 500px;
  margin: 0 auto;
}

.form-group {
  margin-bottom: 20px;
  margin-top: 50px;
}

label {
  font-weight: bold;
}

select,
input[type="date"],
button {
  width: 100%;
  padding: 12px;
  border-radius: 6px;
  border: 1px solid #ccc;
  font-size: 16px;
}

.button-group {
  display: flex;
  justify-content: space-between;
}

button {
  background-color: #4CAF50;
  color: white;
  border: none;
  cursor: pointer;
}

button:hover {
  background-color: #45a049;
}
.smaller-btn {
  font-size: 16px;
  padding: 1px;
  height: 30px;
  width: 30px;
}

#swap-button
{
	margin-top: 34px;
	margin-bottom: 20px;
}




body{
  background-image: url('https://static.abhibus.com/assets/img/bus-seach-bg.png');
  background-repeat: no-repeat;
  background-size: 100% 150%;
}


.container {
  max-width: 500px;
  margin: 0 auto;
}





</style>



</head>
<body>

<div>
<jsp:include page="navbar.jsp">
  <jsp:param name="currentPage" value="about" />
</jsp:include>
<div>
<h2>About Avengers BTRS</h2>
</div>
</div>
</body>
</html>
