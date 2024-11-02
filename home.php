<?php
session_start();
include('db.php');

// Redirect if session doesn't exist
if (!isset($_SESSION['id'])) {
	header('location:index.php');
	exit;
}

// Check if the last visited page exists in the session, default to index.php if not
$lastVisitedPage = isset($_SESSION['last_page']) ? $_SESSION['last_page'] : "Communication/index.php";
?>

<html>
<title>Admin Panel</title>
<link rel="icon" href="Picture/banaba.png" type="image/png">

<link rel="shortcut icon" href="indang logo.png">

<Style>
	body {
		background-color: white;
	}
</style>

<head>
	<frameset rows="80%,5.5%" frameborder="0">
		<frameset cols="20%,80%">
			<frame src="modules.php" name="FraLink">
				<frame src="<?php echo $lastVisitedPage; ?>" name="FraDisplay">
		</frameset>
		<frame src="footer.php" name="FraFooter">
	</frameset>
</head>

</html>