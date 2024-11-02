<?php
session_start();
include('../Resident_Profiling/connections.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/jquery.dataTables.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.11.5/css/dataTables.bootstrap4.min.css">

  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.js"></script>
  <script src="https://cdn.datatables.net/1.11.5/js/dataTables.bootstrap4.min.js"></script>

  <title>Clearance and Forms</title>
  <style>
    body {
      font-family: Arial, sans-serif;
    }

    nav {
      background-color: #14aa6c;
    }

    .nav-link {
      color: white !important;
    }

    .table-container {
      margin-top: 20px;
    }

    h2,
    h3 {
      color: #14aa6c;
    }

    .btn-success {
      margin-top: 10px;
    }

    .warning {
      color: red;
      font-weight: bold;
      text-align: center;
      margin-top: 20px;
    }

    .nav-link,
    .logo {
      color: white !important;
      font-weight: bold;
    }
  </style>
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand font-weight-bold" href="#">Forms and Clearances</a>
    <div class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item"><a class="nav-link" href="index.php">Back</a></li>
      </ul>
    </div>
  </nav>

  <div class="container mt-5">
    <table id="requestsTable" class="table table-striped">
      <thead>
        <tr>
          <th>Name</th>
          <th>Date of Birth</th>
          <th>Contact Number</th>
          <th>Form</th>
          <th>Email</th>
          <th>Created At</th>
          <th>Action</th>
        </tr>
      </thead>
      <tbody>
        <?php
        // Query to fetch data from request_forms table
        $query = "SELECT first_name, last_name, date_of_birth, contact_number, clearance_form, email, created_at FROM request_forms";
        $result = mysqli_query($db, $query);

        // Loop through the results and display in table rows
        if ($result) {
          while ($row = mysqli_fetch_assoc($result)) {
            echo "<tr>";
            echo "<td>" . htmlspecialchars($row['first_name'] . " " . $row['last_name']) . "</td>";
            echo "<td>" . htmlspecialchars($row['date_of_birth']) . "</td>";
            echo "<td class='contact-number'>" . htmlspecialchars($row['contact_number']) . "</td>";
            echo "<td class='clearance-form'>" . htmlspecialchars($row['clearance_form']) . "</td>";
            echo "<td>" . htmlspecialchars($row['email']) . "</td>";
            echo "<td>" . htmlspecialchars($row['created_at']) . "</td>";
            echo '<td><button class="btn btn-primary send-sms-btn" data-toggle="modal" data-target="#smsModal">Send SMS</button></td>';
            echo "</tr>";
          }
        } else {
          echo "<tr><td colspan='7' class='warning'>No data found</td></tr>";
        }
        ?>
      </tbody>
    </table>
  </div>

  <!-- SMS Modal -->
  <div class="modal fade" id="smsModal" tabindex="-1" role="dialog" aria-labelledby="smsModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="smsModalLabel">Send SMS</h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">
          <form id="smsForm">
            <div class="form-group">
              <label for="phoneNumber">Phone Number</label>
              <input type="text" class="form-control" id="phoneNumber">
            </div>
            <div class="form-group">
              <label for="message">Message</label>
              <textarea class="form-control" id="message" rows="3"></textarea>
            </div>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary" id="sendSmsButton">Send SMS</button>
        </div>
      </div>
    </div>
  </div>

  <script>
    $(document).ready(function () {
      // Initialize DataTable
      $('#requestsTable').DataTable();

      // JavaScript to handle Send SMS button click
      $('.send-sms-btn').on('click', function () {
        // Get contact number and clearance form from the selected row
        const contactNumber = $(this).closest('tr').find('.contact-number').text();
        const clearanceForm = $(this).closest('tr').find('.clearance-form').text();

        // Set values in modal fields
        $('#phoneNumber').val(contactNumber);
        $('#message').val(`Your form ${clearanceForm} is ready for pickup.`);
      });

      $('#sendSmsButton').on('click', function () {
        const phoneNumber = $('#phoneNumber').val();
        const message = $('#message').val();

        if (phoneNumber && message) {
          // Here you would normally send the SMS using an API
          alert(`SMS sent to ${phoneNumber}: ${message}`);
          $('#smsModal').modal('hide'); // Close the modal
        } else {
          alert('Please enter both phone number and message.');
        }
      });
    });
  </script>

</body>

</html>