<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.avengers.bus.entityModels.*,com.avengers.bus.dtoModels.*,com.avengers.bus.inputModels.*,java.util.*" %>
<%@ page import="com.google.gson.Gson" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bus Seat Layout</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
 
    <style>
    
     body {
            margin: 0;
            padding: 0;
            font-family: "Brush Script MT", cursive;
        }
        
        .deck-names
        {
 		font-family: "Times New Roman";
 		 display: flex;
            justify-content: center;
            align-items: center;
         }
    
    .whole-bus-seat-layout{
     		display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin-top: 50px;
    
    
    }
    
    
    
       .bus-seat-layout {
        
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 10px;
        }
        
          .space-layout {
          
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 10px;
           
        }
            .bus-seat-layout1 {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            align-items: center;
            margin: 5px;
            height: 463.5px;
       		}
       		
       		.bus-seat1 {
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 87px;
            margin: 5px;
            text-align: center;
            line-height: 40px;
            border: 1px solid #ccc;
            background-color: #fff;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
        	}
       		
       		
       	.bus-seat1.selected {
       		
            background-color: #2ecc71;
            color: rgb(256, 256, 256);
        }

        .bus-seat1.disabled {
            background-color: #ddd;
            color: black;
            cursor: not-allowed;
        }
       		
       		
       		
       		

        .bus-seat {
        
            display: flex;
            align-items: center;
            justify-content: center;
            width: 40px;
            height: 40px;
            margin: 5px;
            text-align: center;
            line-height: 40px;
            border: 1px solid #ccc;
            background-color: #fff;
            cursor: pointer;
            font-size: 14px;
            font-weight: bold;
        }

        .bus-seat.selected {
            background-color: #2ecc71;
            color: rgb(256, 256, 256);
        }

        .bus-seat.disabled {
            background-color: #ddd;
            color: black;
            cursor: not-allowed;
        }
        
            .bus-container {            
            border: 1px solid black;
            border-top: 20px solid maroon;
            border-bottom: 3px solid black;
          	background-color: silver;            
        }              
          #FirstBookingBlock {
  	  transform: rotate(0deg);
  }       
  
  
  
  
    .btn-addPassengers {
            background-color: #0069d9;
            border-color: #007bff;
            margin-top: 10px;            
            margin-left: 1000px;
        }

        .btn-addPassengers:hover {
            background-color:#4CAF50 ;
            border-color: #4CAF50;
        }
        
        
              .bus-block {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            margin-bottom: 20px;
            background-color: #fff;
        }

        .bus-block:hover {
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            background-color:#d8f2f0 ;
            
            
        }

        .bus-title {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .bus-details {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .bus-details p {
            margin: 0;
        }

        .bus-details .label {
            font-weight: 500;
        }

        .bus-details .time {
            font-weight: bold;
            font-size: 18px;
        }

        .bus-details .date {
            margin-right: 20px;
        }

        .bus-details .seats {
            font-weight: bold;
        }
        
         
        .green {
    color: black;
}

	.black{
	color: #249630;
	}

        .red {
    color: #7d2215;
}

.bold {
            font-weight: bold;
            font-size: 25px;
            font-family: "Brush Script MT", cursive;
        }
        
        
    </style>
</head>
<body>

<jsp:include page="navbar.jsp">
  <jsp:param name="currentPage" value="home" />
</jsp:include>

    <% 
   		 List<SeatsBookedForOneService> sl = (List<SeatsBookedForOneService>) request.getAttribute("sl");
    		BusSearchListDto b= (BusSearchListDto) request.getAttribute("selectedBusDetails");
    		System.out.println(b);
    %>    
           
     
     
     <div class="bus-block">
                <h4 class="bus-title">Service No: <span class="bold red"><%= b.getTrip_id()+""+b.getService_id() %></span></h4>
                <div class="bus-details">
                	<div>
                    <p><span class="label">Type:</span> <span class="time black"><%= b.getBsty_title() %></span></p>
                     
                    </div>
                     <div>
                        <p><span class="label ">Source:</span> <span class="time green"><%= b.getSource() %></span></p>
                        <p><span class="label">Departure:</span> <span class="time green"><%= b.getDepature() %></span></p>
                    </div>
                    <div>
                    <p><span class="label ">Destination :</span> <span class="time green"><%= b.getDestination() %></span></p>
                        
                        <p><span class="label">Arrival:</span> <span class="time green"><%= b.getArrival() %></span></p>
                    </div>
                    <div>
                        <p><span class="label date">Date:</span> <span class="time green"><%= b.getTrip_date() %></span></p>
                        <p><span class="label ">Available Seats:</span> <span class="time green"><%= b.getAvailable_seats() %></span></p>
                    </div>
                    <div>
                        <p><span class="label date">Seat Fare:</span> <span class="time green" id='sf'><%= b.getSeat_fare() %></span></p>
                        <p><span class="label ">Berth Fare:</span> <span class="time green" id='bf'><%= b.getBerth_fare() %></span></p>
                    </div>
                    
                </div>
 
            </div>
     
     
     
     
     
     
    <div class="whole-bus-seat-layout">    
    <div class="bus-container">
   	
   					          
    <canvas id="canvas" width="50" height="50" style="position: relative ;left:150px"></canvas>
       <script>
    // Get the canvas element
    var canvas = document.getElementById("canvas");
    var ctx = canvas.getContext("2d");

    // Define the center point of the canvas
    var centerX = canvas.width / 2;
    var centerY = canvas.height / 2;

    // Define the outer radius of the steering wheel
    var outerRadius = 20;
    var innerRadius = 15;

    // Define colors
    var backgroundColor = "#f2f2f2";
    var spokeColor = "#000000";

    // Draw the inner circle
    ctx.beginPath();
    ctx.arc(centerX, centerY, innerRadius, 0, 2 * Math.PI);
    ctx.fillStyle = backgroundColor;
    ctx.fill();
    ctx.lineWidth = 2;
    ctx.strokeStyle = spokeColor;
    ctx.stroke();

    // Draw the spokes of the steering wheel
    var numSpokes = 3;
    var angle = (2 * Math.PI) / numSpokes;

    for (var i = 0; i < numSpokes; i++) {
      ctx.save();
      ctx.translate(centerX, centerY);
      ctx.rotate(i * angle);

      ctx.beginPath();
      ctx.moveTo(0, 0);
      ctx.lineTo(innerRadius, 0);
      ctx.lineWidth = 3;
      ctx.strokeStyle = spokeColor;
      ctx.stroke();

      ctx.restore();
    }
  </script>  
    		<div id="FirstBookingBlock" class="bus-seat-layout">   		
        <%-- Loop to generate bus seats dynamically --%>
					      <!-- 1,2 -->  <div class="bus-seat-layout">
					      <hr>
					          <% int arr[][]={{1,2},{3,4},{5,6},{7,8},{9,10},{11,12},{13,14},{15,16}};
					         	for(int col=0;col<2;col++)	{%>
					         	 <div class="bus-seat-row">					         	
					         	<%  for(int row=0;row<8;row++)
					         		{
					         			int seatNumber = arr[row][col];
					         			
					         			 %>
						                    <%-- Output the seat element with dynamic seat number --%>
						                     <div class="bus-seat" id="<%= seatNumber %>">
						                        <%= seatNumber %>
						                    </div>
						                <% 	}%>
					         		</div>
					         		<% } %>
					      <!-- 1,2 -->   </div>
					       <!-- 3 -->   <div class="bus-seat-layout">
				        <%-- Loop to generate bus seats dynamically --%>
				       
				            <div class="bus-seat-row">
				                <% for (int col = 25; col <= 28; col++) { %>
				                    <%-- Generate seat numbers dynamically based on row and col --%>
				                    <% int seatNumber = col; %>
				                    <%-- Output the seat element with dynamic seat number --%>
				                    <div class="bus-seat1" id="<%= seatNumber %>">
				                        <%= seatNumber %>
				                    </div>
				                <% } %>
				                    
				            </div>
				
				     
				        <!-- 3 -->  </div>
        
         </div>
         <h3 class="deck-names"> Lower Deck</h3>
         
        </div>
     <div class="space-layout">
     </div>
        <div class="space-layout">
     </div>
        <div class="space-layout">
     </div>
    
    <div class="bus-container">
  
   							 <div id="SecondBookingBlock" class="bus-seat-layout1">
    	
						    	<div class="bus-seat-layout1">
						    	
						    	
						    	       
						            <div class="bus-seat-row">
						                <% for (int col = 17; col <= 23; col++) { %>
						                    <%-- Generate seat numbers dynamically based on row and col --%>
						                    <% int seatNumber =col;
						                    col++;%>
						                    <%-- Output the seat element with dynamic seat number --%>
						                    <div class="bus-seat1" id="<%= seatNumber %>">
						                        <%= seatNumber %>
						                    </div>
						                <% } %>
						                    
						            </div>
						
						     
						    	
						            <%-- Loop to generate bus seats dynamically --%>
						      
						            <div class="bus-seat-row">
						                <% for (int col = 18; col <= 24; col++) { %>
						                    <%-- Generate seat numbers dynamically based on row and col --%>
						                    <% int seatNumber = col ;
						                    col++;%>
						                    <%-- Output the seat element with dynamic seat number --%>
						                    <div class="bus-seat1" id="<%= seatNumber %>">
						                        <%= seatNumber %>
						                    </div>
						                <% } %>
						                    
						            </div>
				        
			 </div>

       <div class="space-layout">
       </div>
				
				         <div class="bus-seat-layout1">
				        <%-- Loop to generate bus seats dynamically --%>
				        
				            <div class="bus-seat-row">
				                <% for (int col = 29; col <= 32; col++) { %>
				                    <%-- Generate seat numbers dynamically based on row and col --%>
				                    <% int seatNumber = col; %>
				                    <%-- Output the seat element with dynamic seat number --%>
				                    <div class="bus-seat1" id="<%= seatNumber %>">
				                        <%= seatNumber %>
				                    </div>
				                <% } %>
				                    
				            </div>
				
				 
				   		 </div>
    </div>
    <h3 class="deck-names"> Upper Deck</h3>
    </div>
    </div>
    <div class='fare' id='fare' name='fare'>
    <table id='fareTable'>
    <tr><th>Seat</th><th>Fare</th></tr>
    
    </table>
    <p><span class="label ">Total Fare:</span> <span class="time green" id='tf'>0</span></p>
    </div>
    
    	  <% Gson gson = new Gson();
	    String seatStatusJson = gson.toJson(sl);
	    System.out.println(seatStatusJson); %>
	    
    
  <script>
  $(document).ready(function() {
  	    var maxSeats = <%=5%>; // Maximum number of seats allowed
	    var seats_selected_count = 0;
	    var selected_seats = {};

	    
	    var seatStatusData = <%= seatStatusJson %>;
	    disableSeats(seatStatusData);
	    // Add event listener to each bus seat
	    $('.bus-seat').click(function() {
	        // Check if the maximum seat count has been reached
	        if (seats_selected_count >= maxSeats && !$(this).hasClass('selected')) {
	            showPopup("You can choose "+maxSeats+" seats only");
	            return; // Exit the function if the maximum count is reached and the seat is not selected
	        }

	        // Check if the seat is disabled
	        if ($(this).hasClass('disabled')) {
	            showPopup("This seat is not available");
	            return; // Exit the function if the seat is disabled
	        }

	        // Toggle selected class on seat click
	        $(this).toggleClass('selected');

	        var seatId = $(this).attr('id');
	        if ($(this).hasClass('selected')) {
	            // Increment count and add seat to selected_seats object
	            seats_selected_count++;
	            var fareDiv = document.getElementById('fareTable');
	            var trElement = document.createElement('tr');

	            var td1 = document.createElement('td');
	            td1.textContent =seatId ;

	            var td2 = document.createElement('td');
	            var sf=document.getElementById('sf').textContent;
	            var sfInt = parseInt(sf);
	            td2.textContent = sfInt;
	            trElement.appendChild(td1);
	            trElement.appendChild(td2);
	            fareDiv.appendChild(trElement);
	            var tf=document.getElementById('tf').textContent;
	            var tfInt=parseInt(tf);
	            tfInt=tfInt+sfInt;
	            tfstr=tfInt.toString();
	            console.log("Hello tfstr "+tfstr);
	            document.getElementById('tf').textContent=tfstr;
	            
	            
	            
	            if ($(this).css('background-color') === 'rgb(255, 192, 203)') {
	            	selected_seats[seatId] = "Female";
	              }
	            else
	            	{
		            selected_seats[seatId] = "Any";
	            	}  
	            console.log("seat selected");
	        } else {
	            // Decrement count and remove seat from selected_seats object
	            seats_selected_count--;
	            var fareDiv = document.getElementById('fare');
	            var table = fareDiv.querySelector('table');
	            var rowsToDelete = table.querySelectorAll("tr td:first-child");
	            var rowFare;
	            for (var i = 0; i < rowsToDelete.length; i++) {
	              if (rowsToDelete[i].textContent === seatId) {
	                var row = rowsToDelete[i].parentNode;
	                
	                
	                var fareCell = row.querySelector("td:last-child");
	                var sf=fareCell.textContent;
	                var sfInt = parseInt(sf);
	                var tf=document.getElementById('tf').textContent;
		            var tfInt=parseInt(tf);
		            tfInt=tfInt-sfInt;
		            tfstr=tfInt.toString();
		            console.log("Hello tfstr "+tfstr);
		            document.getElementById('tf').textContent=tfstr;
		            
	                row.parentNode.removeChild(row);
	              }
	            }
	            delete selected_seats[seatId];
	            console.log("seat de-selected");

	        }

	        // Output selected seat count and seat data in JSON format
	        console.log('Seats selected:', seats_selected_count);
	        console.log('Selected seats:', JSON.stringify(selected_seats));
	    });

	    $('.bus-seat1').click(function() {
	        // Check if the maximum seat count has been reached
	        if (seats_selected_count >= maxSeats && !$(this).hasClass('selected')) {
	            showPopup("You can choose "+maxSeats+" seats only");
	            return; // Exit the function if the maximum count is reached and the seat is not selected
	        }

	        // Check if the seat is disabled
	        if ($(this).hasClass('disabled')) {
	            showPopup("This seat is not available");
	            return; // Exit the function if the seat is disabled
	        }

	        // Toggle selected class on seat click
	        $(this).toggleClass('selected');

	        var seatId = $(this).attr('id');
	        if ($(this).hasClass('selected')) {
	        	seats_selected_count++;
	        	var fareDiv = document.getElementById('fareTable');
	            var trElement = document.createElement('tr');

	            var td1 = document.createElement('td');
	            td1.textContent =seatId ;

	            var td2 = document.createElement('td');
	            var bf=document.getElementById('bf').textContent;
	            var bfInt = parseInt(bf);
	            td2.textContent = bfInt;
	            
	            var tf=document.getElementById('tf').textContent;
	            var tfInt=parseInt(tf);
	            tfInt=tfInt+bfInt;
	            tfstr=tfInt.toString();
	            console.log("Hello tfstr "+tfstr);
	            document.getElementById('tf').textContent=tfstr;
	            
	            
	            
	            

	            trElement.appendChild(td1);
	            trElement.appendChild(td2);

	            fareDiv.appendChild(trElement);
	            // Increment count and add seat to selected_seats object
	        	if ($(this).css('background-color') === 'rgb(255, 192, 203)') {
	            	selected_seats[seatId] = "Female";
	              }
	            else
	            	{
		            selected_seats[seatId] = "Any";
	            	}  
	            console.log("seat selected");
	            

	            
	            
	        } else {
	            // Decrement count and remove seat from selected_seats object
	            seats_selected_count--;
	            var fareDiv = document.getElementById('fare');
	            var table = fareDiv.querySelector('table');
	            var rowsToDelete = table.querySelectorAll("tr td:first-child");
	            
	            var rowFare;

	            for (var i = 0; i < rowsToDelete.length; i++) {
	              if (rowsToDelete[i].textContent === seatId) {
	                var row = rowsToDelete[i].parentNode;
	                
	                var fareCell = row.querySelector("td:last-child");
	                var bf=fareCell.textContent;
	                var bfInt = parseInt(bf);
	                var tf=document.getElementById('tf').textContent;
		            var tfInt=parseInt(tf);
		            tfInt=tfInt-bfInt;
		            tfstr=tfInt.toString();
		            console.log("Hello tfstr "+tfstr);
		            document.getElementById('tf').textContent=tfstr;
	                
	                row.parentNode.removeChild(row);
	              }
	            }
	            delete selected_seats[seatId];
	            console.log("seat de-selected");

	        }

	        // Output selected seat count and seat data in JSON format
	        console.log('Seats selected:', seats_selected_count);
	        console.log('Selected seats:', JSON.stringify(selected_seats));
	    });

	    // Function to show the popup message
	    function showPopup(message) {
	        alert(message);
	    } 
  function disableSeats(seats) {
      for (var i = 0; i < seats.length; i++) {
          var seatId = seats[i].seat_id;
          var status = seats[i].status;
          var gender = seats[i].gender;

          var seatElement = $('#' + seatId);

          // Check seat status and gender to determine blocking and color
          if (status) {
        	  console.log("Executing..1");
              if (gender === 'Male' || gender==='Other') {
            	  console.log("Executing..2");

                  seatElement.addClass('disabled');
                  seatElement.css('background-color', 'orange');
              } else if (gender === 'Female') {
            	  
            	  console.log("Executing..3");

            	  
                  seatElement.addClass('disabled');
                  
                  seatElement.css('background-color', 'rgb(255, 105, 180)');
              }
              else{
            	  console.log("Executing..4");

              }
          }
          else{
        	  
        	  
				if (gender === 'Female') {
            	  
            	  console.log("Executing..5");

            	 seatElement.css('background-color', 'rgb(255, 192, 203)');
              }
        	  
          }
      }
  }
  
  
  document.getElementById("submitButton").addEventListener("click", function() {
	  
	  if (seats_selected_count > 0) {
		  var form = document.createElement("form");
		    form.method = "POST";
		    form.action = "/BUS/passengers";

		    // Add input fields for data
		    var data1 = document.createElement("input");
		    data1.type = "hidden";
		    data1.name = "noOfSeatsSelected";
		    data1.value = seats_selected_count;
		    form.appendChild(data1);

		    var data2 = document.createElement("input");
		    data2.type = "hidden";
		    data2.name = "seatsData";
		    data2.value = JSON.stringify(selected_seats);;
		    form.appendChild(data2);

		    // Submit the form
		    document.body.appendChild(form);
		    form.submit();
	  }
	  else
		  {
		  console.log("O seats selected..");
		  alert("Select at least one seat");
		  }
	    // Create a form
	   
	  });
  
  });

    </script>   
    <!-- JSP -->
<button id="submitButton" class="btn btn-primary btn-addPassengers">Add Passengers</button>
<button onclick="goBack()" class="btn btn-primary btn-addPassengers">Go Back</button>

     <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.0/js/bootstrap.bundle.min.js"></script>
     
     <script>
function goBack() {
  window.history.back();
}
</script>
</body>
</html>