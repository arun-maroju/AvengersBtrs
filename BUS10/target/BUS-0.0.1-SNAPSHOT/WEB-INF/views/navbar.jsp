<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Avengers BusBooking</title>
 <style>
  /* Navbar styles */
  .navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 45px;
    background-color: #333;
    padding: 10px;
  }
  
  .logo {
    color: #fff;
    font-size: 24px;
    text-decoration: none;
    font-weight: bold;
    margin-right: 20px;
  }
  
  .navbar-nav {
    list-style-type: none;
    margin: 0;
    padding: 0;
    display: inline-block;
  }
  
  .nav-item {
    display: inline-block;
    margin-right: 10px;
  }
  
  .nav-link {
    color: #fff;
    text-decoration: none;
    padding: 15px;
    border-radius: 5px;
  }
  
  .nav-link.active {
    background-color: #555;
  }
  
  .nav-link:hover {
    background-color: #555;
  }
  
  .nav-link:active {
    background-color: #777;
  }
  
  .nav-link:focus {
    outline: none;
    background-color: #777;
  }
  
  .navbar-right {
    display: inline-block;
    float: right;
  }
  
  .user-actions {
    position: relative;
  }
  
  .user-actions .login-btn {
    background-color: #555;
    margin: 20px 30px 0px 0px;
  }
  
  .user-actions .signup-btn {
    background-color: #777;
    margin: 20px 90px 0px 0px;
    
  }
  
  .user-actions a {
    color: #fff;
    text-decoration: none;
    padding: 10px;
    border-radius: 5px;
    margin-right: 5px;
  }
  
  .user-actions a:hover,
  .user-actions a:active {
    background-color: #999;
  }
  
  .user-actions .dropdown {
    position: absolute;
    top: 100%;
    left: 0;
    width: 150px;
    background-color: #333;
    padding: 10px;
    display: none;
  }
  
  .user-actions:hover .dropdown {
    display: block;
  }
  
  .user-actions .dropdown a {
    display: block;
    color: #fff;
    text-decoration: none;
    padding: 5px;
  }
  
  /* Rest of the styles remain the same */
</style>

</head>
<body>
<nav>
  <div class="navbar">
    <a href="#" class="logo">Avengers BTRS</a>
    <ul class="navbar-nav">
      <li class="nav-item"><a class="nav-link active" href="#" onclick="getContentData()">Home</a></li>
      <li class="nav-item"><a class="nav-link" href="#">My Bookings</a></li>
      <li class="nav-item"><a class="nav-link" href="#" onclick="showContactContent()">Contact Us</a></li>
      <li class="nav-item"><a class="nav-link" href="#" onclick="showAboutParagraph()">About</a></li>
    </ul>
    <div class="navbar-right">
      <div class="user-actions">
        <div class="dropdown">
          <a href="#">Admin Login</a>

          <a href="#">User Login</a>

        </div>
        <a href="#" class="login-btn">Login</a>
         <a href="#" class="signup-btn">Sign-Up</a>
      </div>

    </div>
  </div>
</nav>
<script>
  function openPopup(popupId) {
    document.getElementById(popupId).style.display = "flex";
  }
  function closePopup(popupId) {
    document.getElementById(popupId).style.display = "none";
  }
</script>
<script>
  function showAboutParagraph() {
    document.getElementById("contactContent").style.display = "none";
    document.getElementById("aboutParagraph").style.display = "block";
  }
</script>
<div>
  <div id="contentOfThePage"></div>
</div>
<script>
  function showContactContent() {
    document.getElementById("aboutParagraph").style.display = "none";
    document.getElementById("contactContent").style.display = "block";
  }
  function getContentData() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        document.getElementById("contentOfThePage").innerHTML = this.responseText;
      }
    };
    xhttp.open("GET", "/BUS/home", true);
    xhttp.send();
  }
</script>
</body>
</html>
