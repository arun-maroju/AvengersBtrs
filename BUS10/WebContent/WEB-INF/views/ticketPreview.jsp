<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Ticket Preview</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #F5F5F5;
            padding: 20px;
        }

        h1 {
            color: #333333;
            text-align: center;
            margin-bottom: 30px;
        }

        h2 {
            color: #666666;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #CCCCCC;
        }

        th {
            background-color: #EEEEEE;
        }

        .preview-container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #FFFFFF;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 4px;
        }

        .passenger-table {
            margin-top: 20px;
        }

        .payment-form {
            margin-top: 20px;
            text-align: center;
        }

        .payment-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3399cc;
            color: #FFFFFF;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .payment-button:hover {
            background-color: #2288bb;
        }

        .container {
            display: flex;
            justify-content: space-between;
            width: 800px;
            margin: 0 auto;
        }

       .left,
        .right{
        
            width: 48%;
        }
        
      
        
        .ticket-details {
            background-color: #EEEEEE;
            padding: 10px;
            border-radius: 4px;
        }
        
        .passenger-details {
            background-color: #FFFFFF;
            padding: 20px;
            border-radius: 4px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        
        .payment-form {
            margin-top: 20px;
            text-align: center;
        }

        .payment-button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3399cc;
            color: #FFFFFF;
            font-size: 16px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .payment-button:hover {
            background-color: #2288bb;
        }
    </style>
    
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
    <script>
    var ticketNum;
    var payment_id;
    $(document).ready(function() {
        $('form').submit(function(e) {
            e.preventDefault(); // Prevent form submission
            var form = $(this);

            $.ajax({
                url: form.attr('action'),
                type: form.attr('method'),
                data: form.serialize(),
                dataType: 'json',
                success: function(response) {
                    // Handle the success response here
                    console.log(response);
                    if (response.status == 'created') {
                        var options = {
                            "key": "rzp_test_j9AU4Na98kCuvD",
                            "amount": response.amount,
                            "currency": "INR",
                            "name": "BRS",
                            "description": "Test Transaction",
                            "image": "https://example.com/your_logo",
                            "order_id": response.id,
                            "handler": function(response) {
                                payment_id=response.razorpay_payment_id.toString();
                                console.log(response.razorpay_payment_id);
                                console.log(response.razorpay_order_id);
                                console.log(response.razorpay_signature);
                                alert("Success");

                                // Clear the input fields
                                $('#amount').val('');
                                $('#ticketNumber').val('');
                                window.location.href = "confirm?paymentId="+payment_id;
                            },
                            "prefill": {
                                "name": "",
                                "email": "",
                                "contact": ""
                            },
                            "notes": {
                                "address": "Razorpay Corporate Office"
                            },
                            "theme": {
                                "color": "#3399cc"
                            }
                        };

                        var rzp1 = new Razorpay(options);
                        rzp1.on('payment.failed', function(response) {
                            console.log(response.error.code);
                            console.log(response.error.description);
                            console.log(response.error.source);
                            console.log(response.error.step);
                            console.log(response.error.reason);
                            console.log(response.error.metadata.order_id);
                            console.log(response.error.metadata.payment_id);
                            alert("Failed");

                            window.location.href = "home";           
                        });

                        rzp1.open();
                    }
                },
                error: function(xhr, status, error) {
                    // Handle the error response here
                    console.log(xhr.responseText);
                }
            });
        });
    });
    </script>
</head>
<body>
    <div class="preview-container">
        <h1>Ticket Preview</h1>

        <div class="container">
            <div class="left">
                <div class="ticket-details">
                    <h2>From Station&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;${ticket.from}</h2>
                    <h2>Departure Time&nbsp;:&nbsp; ${ticket.departure_time}</h2>
                    <h2>Route No&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp; ${ticket.trip_no}</h2>
                    <h2>Bus Type&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp; ${ticket.bus_type}</h2>
                    
                </div>
            </div>
            <div class="right">
                <div class="ticket-details">
                    <h2>To Station&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ${ticket.to}</h2>
                    <h2>Arrival Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : ${ticket.arrival_time}</h2>
                    <h2>Date of Journey&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;: ${ticket.journey_date}</h2>
                    <h2>Number of Passengers&nbsp;: ${ticket.numberOfPassengers}</h2>
                </div>
            </div>
        </div>
        
        <div class="passenger-details">
            <h2>Passenger Details:</h2>

            <table>
                <tr>
                    <th>Passenger ID</th>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>Seat ID</th>
                    <th>Fare</th>
                </tr>
                <c:forEach var="passenger" items="${ticket.passengers}">
                    <tr>
                        <td>${passenger.passenger_id}</td>
                        <td>${passenger.passenger_name}</td>
                        <td>${passenger.passenger_age}</td>
                        <td>${passenger.passenger_gender}</td>
                        <td>${passenger.seat_id}</td>
                        <td>${passenger.seat_fare}</td>
                    </tr>
                </c:forEach>
            </table>
            
            <h2>Total Fare: ${ticket.totalFare}</h2>
            
            <div class="payment-form">
                <form action="makePayment" method="get">
                    <input type="hidden" id="ticketNumber" name="ticketNumber" value=${ticket.ticketNo}>
                    <br><br>
                    <input type="hidden" id="amount" name="amount" value=${ticket.totalFare}>
                    <br><br>
                    <input type="submit" value="Make Payment" class="payment-button">
                </form>
            </div>
        </div>
    </div>
</body>
</html>
