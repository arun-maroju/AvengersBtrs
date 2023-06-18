<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="ISO-8859-1">
  <title>Avengers BusBooking</title>


<style>
/* Styles */


.menu {
  list-style: none;
  padding: 0;
  margin: 0;
  background-color: #333;
  display: flex;
  align-items: center;
  justify-content: space-between;
}

.menu li {
  position: relative;
}

.menu li a {
  display: block;
  padding: 10px 20px;
  text-decoration: none;
  color: #fff;
  transition: background-color 0.3s ease;
}

.menu li a:hover {
  background-color: green;
}

.menu .submenu {
  display: none;
  position: absolute;
  background-color: #fff;
  border: 1px solid #ccc;
  padding: 10px;
}

.menu li:hover .submenu {
  display: block;
  background-color: white;
}

.menu .submenu li {
  display: block;
}

.menu .submenu li a {
  display: block;
  padding: 5px 10px;
  color: #333;
  text-decoration: none;
}

.menu .submenu li:hover a {
  background-color: gray;
}

.menu li h4{
  color: white;
  margin-right: 20px;
  margin-left: 20px;
  font-size: 20px;
  font-weight: bold;
}

.menu li:first-child {
  margin-right: inherit;
}
</style>

</head>
<body>


<nav>
    <ul class="menu">
      <li><h4>AVENGERS BTRS</h4></li>
      <li><a href="home">Home</a></li>
      <li><a href="">Dashboard</a></li>
      <li><a href="about">About Us</a></li>
      <li><a href="contact">Contact Us</a></li>
      <li>
        <a href="#">Login</a>
        <ul class="submenu">
          <li><a href="login">User</a></li>
          <li><a href="login">Admin</a></li>
        </ul>
      </li>
      <li><a href="signup">SignUp</a></li>
    </ul>
  </nav>

</body>
</html>
