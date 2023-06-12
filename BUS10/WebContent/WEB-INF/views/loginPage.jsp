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
    
    #btn1 {
      background-color: #337ab7;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-top: 10px;
    }
    
    #btn1:hover,
    input[type="submit"]:hover {
      background-color: #23527c;
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Login</h1>
    
    <% if (request.getAttribute("alert") != null) { %>
        <p style="color: red;"><%= request.getAttribute("alert") %></p>
    <% } %>
    
    <form action="successlogin" method="post">
      <label>Username:</label>
      <input type="email" name="email" id="email"><br>
      <label for="pwd">Password:</label>
      <input type="password" name="pwd" id="pwd"><br>
      <input type="submit" value="Login">
    </form>
    <div class="forgot-password">
      <button id="btn">Forgot Password</button>
      <button id="btn1">SignUp</button>
    </div>
  </div>
  <script>
    $(document).ready(function() {
      $('#btn').click(function() {
        var inputData = $('#email').val();
        if(inputData!=''){
        	window.location.href = 'forgot?data=' + inputData;
        }
        
      });
    });
  </script>
  
  <script>
    $(document).ready(function() {
      $('#btn1').click(function() {
        window.location.href = 'signup';
      });
    });
  </script>
</body>
</html>
