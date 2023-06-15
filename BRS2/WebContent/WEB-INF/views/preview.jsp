<!DOCTYPE html>
<html>
<head>
  <title>Bus Ticket Reservation System</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f4f4f4;
      margin: 0;
      padding: 20px;
      display: flex;
      justify-content: center;
      background-color: #e5f6fd;
       background-image: url('file:///D:/Robin%20Java%20Practice/BTRS/WebContent/resource/buspic.jpg');
      align-items: center;
      min-height: 100vh;
    }
    
    .container {
      max-width: 500px;
      background-color: #fff;
      padding: 20px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    h1 {
      color: #333;
      text-align: center;
    }
    
    h2 {
      color: #666;
    }
    
    .preview-section {
      margin-bottom: 20px;
    }
    
    label {
      font-weight: bold;
      color: #333;
    }
    
    input[type="text"],
    select {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 4px;
      font-size: 14px;
      margin-bottom: 10px;
    }
    
    input[type="submit"] {
      background-color: #4CAF50;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      font-size: 16px;
      width: 100%;
    }
    
    input[type="submit"]:hover {
      background-color: #45a049;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 8px;
      text-align: left;
      border-bottom: 1px solid #ddd;
    }

    th {
      background-color: #f2f2f2;
    }
  </style>
  
  <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  <script>
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
                  console.log(response.razorpay_payment_id);
                  console.log(response.razorpay_order_id);
                  console.log(response.razorpay_signature);
                  alert("Success");

                  // Clear the input fields
                  $('#amount').val('');
                  $('#ticketNumber').val('');
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
  <div class="container">
    <h1>Bus Ticket Reservation System</h1>

    <div class="preview-section">
      <h2>Preview</h2>
      <p><strong>From:</strong> <span id="from"></span></p>
      <p><strong>To:</strong> <span id="to"></span></p>
      <p><strong>Service No:</strong> <span id="serviceNo"></span></p>
      <p><strong>Ticket Number:</strong> <span id="ticketNumberPreview"></span></p>
      <p><strong>Bus Type:</strong> <span id="busType"></span></p>
      <p><strong>Date of Journey:</strong> <span id="dateOfJourney"></span></p>
      <p><strong>Departure Time:</strong> <span id="departureTime"></span></p>
      <p><strong>Number of Passengers:</strong> <span id="numberOfPassengers"></span></p>
      <h3><strong>Passenger Details:</strong></h3>
      <table id="passengerDetailsTable">
        <tr>
          <th>S.No</th>
          <th>Name</th>
          <th>Age</th>
          <th>Gender</th>
          <th>Fare</th>
        </tr>
      </table>
      <p><strong>Total Fare:</strong> <span id="totalFare"></span></p>
    </div>

    <form action="makePayment" method="get">
      <label for="ticketNumber">Ticket Number:</label>
      <input type="text" id="ticketNumber" name="ticketNumber" required><br><br>

      <label for="amount">Amount:</label>
      <input type="text" id="amount" name="amount" required><br><br>

      <input type="submit" value="Make Payment">
    </form>

    <script>
      $(document).ready(function() {
        // Sample passenger details data
        var passengerDetails = [
          { sno: 1, name: "John Doe", age: 25, gender: "Male", fare: 100 },
          { sno: 2, name: "Jane Smith", age: 30, gender: "Female", fare: 120 },
          { sno: 3, name: "Alice Johnson", age: 35, gender: "Female", fare: 100 }
        ];

        // Populate the passenger details table
        var passengerDetailsTable = $('#passengerDetailsTable');
        $.each(passengerDetails, function(index, passenger) {
          var row = $('<tr>');
          row.append($('<td>').text(passenger.sno));
          row.append($('<td>').text(passenger.name));
          row.append($('<td>').text(passenger.age));
          row.append($('<td>').text(passenger.gender));
          row.append($('<td>').text(passenger.fare));
          passengerDetailsTable.append(row);
        });

        // Update the preview section with sample data
        $('#from').text("Sample Origin");
        $('#to').text("Sample Destination");
        $('#serviceNo').text("1234");
        $('#ticketNumberPreview').text("Sample Ticket Number");
        $('#busType').text("AC Sleeper");
        $('#dateOfJourney').text("2023-06-05");
        $('#departureTime').text("08:00 AM");
        $('#numberOfPassengers').text(passengerDetails.length);
        $('#totalFare').text("320");
      });
    </script>
  </div>
</body>
</html>
