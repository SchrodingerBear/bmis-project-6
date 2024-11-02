<?php
session_start();
include 'Clearance_and_Forms/connection.php';

$error_message = ''; // Initialize error message variable

if (isset($_POST['submit_request'])) {
  $first_name = $_POST['first_name'];
  $last_name = $_POST['last_name'];
  $date_of_birth = $_POST['date_of_birth']; // Capture the date of birth
  $contact_number = $_POST['contact_number']; // Capture the contact number
  $form = $_POST['forms'];
  $email = $_POST['email']; // Capture the email address

  // Insert the request into the database
  $sql = "INSERT INTO request_forms (first_name, last_name, date_of_birth, contact_number, clearance_form, email)
          VALUES ('$first_name', '$last_name', '$date_of_birth', '$contact_number', '$form', '$email')";

  if (mysqli_query($db, $sql)) {
    $success_message = "Request submitted successfully.";
  } else {
    $error_message = "Error: " . mysqli_error($db);
  }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <title>Request Form</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.css">
  <!-- Toastr CSS -->
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

    h2 {
      color: #14aa6c;
    }

    .btn-success {
      margin-top: 10px;
    }
  </style>
</head>

<body>

  <nav class="navbar navbar-expand-lg navbar-dark">
    <a class="navbar-brand font-weight-bold" href="#">Request Forms and Clearances</a>
  </nav>

  <div class="container mt-4">
    <h2>Request Form</h2>
    <form action="request.php" method="post">
      <div class="form-group">
        <label>First Name</label>
        <input class="form-control" type="text" name="first_name" required>
      </div>
      <div class="form-group">
        <label>Last Name</label>
        <input class="form-control" type="text" name="last_name" required>
      </div>
      <div class="form-group">
        <label>Date of Birth</label>
        <input class="form-control" type="date" name="date_of_birth" required>
      </div>
      <div class="form-group">
        <label>Contact Number</label>
        <input class="form-control" value="63" type="text" name="contact_number" required>
      </div>
      <div class="form-group">
        <label>Email</label>
        <input class="form-control" type="email" name="email" required>
      </div>
      <div class="form-group">
        <label>Select Clearance/Form</label>
        <select class="form-control" name="forms" required>
          <option value="Barangay Clearance">Barangay Clearance</option>
          <option value="Certificate of Indigency">Certificate of Indigency</option>
          <option value="Residency Certificate">Residency Certificate</option>
        </select>
      </div>

      <button type="submit" class="btn btn-success" name="submit_request">Submit</button>
    </form>
  </div>

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script> <!-- Toastr JS -->

  <script>
    // Show success message if set
    <?php if (isset($success_message)): ?>
      toastr.success('<?php echo $success_message; ?>'); // Display success message
    <?php endif; ?>

    // Show error message if set
    <?php if (!empty($error_message)): ?>
      toastr.error('<?php echo $error_message; ?>'); // Display error message
    <?php endif; ?>
  </script>
</body>

</html>