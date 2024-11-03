<?php
session_start();
require_once('db.php');
$sesID = $_SESSION['id'];
$z = mysqli_query($db, "SELECT * FROM `accounts` WHERE ID = '$sesID'");
$data = mysqli_fetch_array($z);
?>
<html>

<head>
	<link rel="shortcut icon" href="Icon/indang logo.png">
	<style type="text/css">
		body {

			background: linear-gradient(to bottom, #666666 0%, #111111 90%, #111111 70%, #111111 60%);
			/* background-color: #2E4A62; */
			margin-right: 0;
			margin-left: 0;
			margin-top: 0;
			font-family: calibri;
			color: white;


		}

		img {
			filter: invert(100%);
			padding-right: 10px;
			padding-left: 15px;
		}

		h1 {
			color: white;
			font-family: calibri;
		}

		a {
			display: block;
			text-decoration: none;
			padding: 10px 5px;
			font-size: 18;
			font-face: calibri;
			color: white;

		}

		a:hover {
			background: #686868;
			color: white;
			left: 0;
			-webkit-transition: background 0.3s ease-in-out;
			-moz-transition: background 0.3s ease-in-out;
			transition: background-color 0.3s ease-in-out;
		}

		.banner {
			width: auto;
			height: auto;
			padding-top: 12px;
			padding-bottom: 15px;
			padding-left: 5px;
			font-size: 25px;
			text-align: left;
			color: WHITE;
			margin-top: 0%;
			font-weight: bold;
			background: #FE1A1C;
			font-family: calibri;
			text-transform: uppercase;
		}

		.holder {
			text-indent: 20px;
			background: #212121;
			width: 100%;
			margin-top: 0%;
			margin-left: 0%;
			padding-top: 10px;
			padding-bottom: 10px;
			text-align: left;
		}

		/* width */
		::-webkit-scrollbar {
			width: 15px;
		}

		/* Track */
		::-webkit-scrollbar-track {
			background: white;


		}

		/* Handle */
		::-webkit-scrollbar-thumb {
			background: #8c8c8c;

		}

		/* Handle on hover */
		::-webkit-scrollbar-thumb:hover {
			background: #141414;
		}

		.avatar {
			border-radius: 30px;
		}
	</style>
</head>


<div class="banner">

	<img src="Picture/banaba.png" style="float:left; border-radius: 50%; filter: invert(0%)!important;" width="50"
		height="50">
	<p style="float:center; word-wrap: break-word;">Welcome <?php if (isset($_SESSION['position2'])) {
		echo $_SESSION['position2'];
	} else {
		echo $_SESSION['position'];
	} ?>
</div>
</div>

<?php
// Function to generate navigation links
function generateNavLink($href, $icon, $text)
{
	return '<a href="' . $href . '" target="FraDisplay" onclick="saveLastPage(\'' . $href . '\')">
                <img src="' . $icon . '" style="float:left" width="28">&nbsp;' . $text . '</a>';
}


if ($_SESSION['position'] == 'Barangay Secretary' || $_SESSION['position'] == 'Barangay Captain') {
	echo '<b><div class="holder"><b>GENERAL</b></div>';
	echo generateNavLink("Resident_Profiling/Dash/index.php", "Icon/home.png", "Dashboard");
	echo generateNavLink("account.php", "Icon/pen.png", "Account");
	echo generateNavLink("Resident_Profiling/resident.php", "Icon/residents.png", "Residents");
	echo generateNavLink("Clearance_and_Forms/index.php", "Icon/certificates.png", "Clearance");
	// echo generateNavLink("Health_and_Sanitation/index.php", "Icon/health.png", "Health and Sanitation");
	// echo generateNavLink("Peace_and_Order/incident.php", "Icon/blotter.png", "Peace and Order");
	// echo generateNavLink("Finance/index.php", "Icon/finance.png", "Finance");
	echo generateNavLink("Communication/index.php", "Icon/announcement.png", "Announcement");
	// echo generateNavLink("Special_Projects/index.php", "Icon/special.png", "Special Projects");
	// echo generateNavLink("Barangay_Officials/index.php", "Icon/add.png", "Barangay Officials");
	echo generateNavLink("fmgt", "Icon/file.png", "File Management");
	// echo generateNavLink("Report/viewreport.php", "Icon/clearances.png", "Reports");
	echo generateNavLink("adminedit.php?ID=" . $_SESSION['id'], "Icon/settings.png", "Account Setting");
}

if ($_SESSION['position'] == 'Barangay Councilor') {
	$committee = $_SESSION['committee'];
	echo '<h3><center><b>Committee on <u>' . $committee . '</u></center></b></h3>';

	echo '<b><div class="holder">GENERAL</b></div>';
	echo generateNavLink("Resident_Profiling/Dash/index.php", "Icon/home.png", "Dashboard");
	echo generateNavLink("account.php", "Icon/pen.png", "Account");
	echo generateNavLink("Clearance_and_Forms/index.php", "Icon/certificates.png", "Clearance and Forms");

	if ($committee == "Peace and Order") {
		echo generateNavLink("Peace_and_Order/incident.php", "Icon/blotter.png", "Peace and Order");
	} elseif ($committee == "Health,Education & Sport") {
		echo generateNavLink("Health_and_Sanitation/index.php", "Icon/health.png", "Health and Sanitation");
	}

	echo generateNavLink("Finance/index.php", "Icon/finance.png", "Finance");
	echo generateNavLink("Resident_Profiling/resident.php", "Icon/residents.png", "Resident Profiling");
	echo generateNavLink("Communication/index.php", "Icon/announcement.png", "Announcement");
	echo generateNavLink("Special_Projects/index.php", "Icon/special.png", "Special Projects");
	echo generateNavLink("Barangay_Officials/index.php", "Icon/add.png", "Barangay Officials");
}
?>

<a href="accountLogout.php" target="_Parent"><img src="Icon/logout.png" height="20"
		style="filter: none!important;">Logout</a>

</body>

<script>
	function saveLastPage(page) {
		// Send the page URL to a backend script that will store it in the session
		var xhr = new XMLHttpRequest();
		xhr.open("POST", "save_last_page.php", true);
		xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		xhr.send("last_page=" + encodeURIComponent(page));
	}
</script>

</html>