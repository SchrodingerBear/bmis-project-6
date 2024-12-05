<?php

session_start();
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
include('db.php');

if (isset($_POST['submit'])) {
	$username = $_POST['username'];
	$password = $_POST['password'];

	$qry = mysqli_query($db, "SELECT * FROM accounts WHERE Username ='$username'");
	if (!$qry) {
		echo "<script>alert('SQL Error: " . mysqli_error($db) . "');</script>";
	} else {
		$count = mysqli_num_rows($qry);

		if ($count > 0) {
			$accnt = mysqli_fetch_array($qry);
			$pass = $accnt['Password'];

			$_SESSION['id'] = $accnt['ID'];

			if ($pass == $password && $username == $username) {
				$pos = $accnt['position_id'];
				$position = $accnt['Position'];
				$committee = $accnt['Committee'];
				$fullname = $accnt['Fullname'];
				$_SESSION['LOGIN_STATUS'] = true;
				$_SESSION['position'] = $position;

				if ($_SESSION['position'] === 'Barangay Secretary') {
					$_SESSION['position2'] = 'Barangay Admin';
				}

				$_SESSION['USER'] = $username;
				$_SESSION['committee'] = $committee;
				$_SESSION['password'] = $password;
				$_SESSION['emailaddress'] = $accnt['Emailaddress'];
				$_SESSION['device_Id'] = $accnt['Position'];
				$_SESSION['positionID'] = $pos;
				$_SESSION['fullname'] = $fullname;
				$_SESSION['position_id'] = $accnt['position_id'];

				echo '<script>window.location = "home.php";</script>';
			} else {
				echo "<script>alert('Incorrect Password.');</script>";
			}
		} else {
			echo "<script>alert('Invalid username.');</script>";
		}
	}
}


if (isset($_SESSION['id'])) {
	header('location:home.php');
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Barangay Management Information System</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<link rel="icon" href="Picture/banaba.png" type="image/png">

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pannellum/build/pannellum.css">
	<style>
		.pnlm-container {
			background: #f4f4f4;
		}

		#panorama {
			position: absolute;
			top: 0;
			left: 0;
			width: 100%;
			height: 100%;
		}

		.login-container {
			position: relative;
			z-index: 10;
			display: flex;
			justify-content: center;
			align-items: center;
			min-height: 100vh;
		}

		.login-box {
			background: rgba(255, 255, 255, 0.9);
			padding: 30px;
			border-radius: 10px;
			box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
			width: 100%;
			max-width: 400px;
		}

		.login-box img {
			display: block;
			margin: 0 auto 20px;
		}
	</style>
</head>

<body>
	<div id="panorama"></div>

	<div class="login-container">
		<div class="login-box">
			<h3 class="text-center">Sign In</h3>
			<img src="Picture/banaba.png" height="100" width="100" alt="Logo">

			<form method="POST" action="index.php">
				<div class="form-group">
					<input type="text" class="form-control shadow-none" name="username" placeholder="Enter Username"
						required autofocus>
				</div>
				<div class="form-group">
					<input type="password" class="form-control shadow-none" name="password" placeholder="Enter Password"
						required>
				</div>
				<button type="submit" name="submit" class="btn btn-primary btn-block shadow-none">Enter</button>
			</form>
		</div>
	</div>

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/pannellum/build/pannellum.js"></script>
	<script>
		function loadBase64FromTextFile(url) {
			return fetch(url) // Fetch the Base64 text file
				.then(response => {
					if (!response.ok) {
						throw new Error('Network response was not ok');
					}
					return response.text(); // Read the text as Base64
				});
		}

		// Load the Base64 image from the text file and initialize Pannellum
		loadBase64FromTextFile('base64.txt') // Use your Base64 text file path
			.then(base64 => {
				const imageSrc = 'data:image/png;base64,' + base64; // Prepend data URI scheme
				pannellum.viewer('panorama', {
					"type": "equirectangular",
					"panorama": imageSrc,  // Use the Base64 string as panorama
					"autoLoad": true,
					"autoRotate": 5,  // Speed of auto-rotation
					"showControls": false,  // Disable all controls
					"mouseZoom": false,  // Disable mouse zoom
					"keyboardZoom": false,  // Disable keyboard zoom
					"showFullscreenCtrl": false,  // Hide fullscreen button
					"showZoomCtrl": false,  // Hide zoom control buttons
					"showCompass": false,  // Hide compass
					"disableKeyboardCtrl": true,  // Disable keyboard controls
				});
			})
			.catch(error => {
				console.error('Error loading Base64 from text file:', error);
			});
	</script>

</body>

</html>