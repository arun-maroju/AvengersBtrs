<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
	      url: '/',
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
		<div id="nav-bar">
		
		
		</div>
		<div></div><div></div>
		<div id="content">
		
		
		</div>
</body>
</html>