<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>


<style>
 .navbar {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 45px;
    background-color: #333;
    padding: 10px;
  }
  
  .content
  {
  		
  }


</style>

	<script>
  $(document).ready(function() {
	  
	  
	  $.ajax({
	      url: 'navbar',
	      method: 'GET',
	      success: function(response) {
	    	console.log("nav page getted..")

	    	  $('#nav-bar').html(response);
	      },
	      error: function(xhr, status, error) {
	        // Handle the error
	        console.log(error);
	      }
	    });
	  $.ajax({
	      url: 'home',
	      method: 'GET',
	      success: function(response) {
	    	  console.log("home page getted..")
	    	  $('#content').html(response);
	      },
	      error: function(xhr, status, error) {
	        // Handle the error
	        console.log("Error loading home page")
	        console.log(error);
	      }
	    });
	  
	  
  });
</script>
		


</head>
<body>
		<div id="nav-bar" class="navbar">
		
		
		</div>
		<div><h1>Hello This is seperation..</h1></div>
		<div></div>
		
		
		<div id="content" class="content">
		</div>
		
</body>
</html>