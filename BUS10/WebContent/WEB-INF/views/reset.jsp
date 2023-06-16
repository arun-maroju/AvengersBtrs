<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      margin: 0;
      padding: 20px;
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
    
    form {
      background-color: #fff;
      border-radius: 5px;
      padding: 20px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
    
    label {
      display: block;
      margin-bottom: 10px;
    }
    
    input[type="email"],
    input[type="password"] {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      margin-bottom: 15px;
    }
    
    input[type="submit"] {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }
    
    .forgot-password {
      text-align: center;
      margin-top: 10px;
    }
    
    #btn {
      background-color: #337ab7;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 10px;
    }
    
    #btn:hover,
    input[type="submit"]:hover {
      background-color: #23527c;
    }
  </style>
  
  <script>
    function validatePassword() {
      var newPassword = document.getElementById("pwd1").value;
      var reEnterPassword = document.getElementById("pwd2").value;

      if (newPassword !== reEnterPassword) {
        alert("Passwords do not match!");
      }
      else if(newPassword==="" || reEnterPassword===""){
    	  alert("Please provide data for all fields");
      }
      else{
    	  alert("Password changed successfully..you will redirect to login page");
    	  window.location.href = "Home"; 
      }
    }
  </script>
  
</head>
<body>
<jsp:include page="navbar.jsp">
  <jsp:param name="currentPage" value="home" />
</jsp:include>

<div class="container">
  <h1>Reset Password</h1>
  
    <label for="pwd1">New Password</label>
    <input type="password" name="pwd1" id="pwd1">
    <label for="pwd2">Re-enter Password</label>
    <input type="password" name="pwd2" id="pwd2">
    <button id="btn" onclick="validatePassword()">Reset</button>
</div>
</body>
</html>
