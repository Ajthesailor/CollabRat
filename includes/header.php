<?php
include("includes/config.php");
include("includes/classes/Artist.php");
include("includes/classes/Album.php");
include("includes/classes/Song.php");

//Temporary Manual Logout
// session_destroy();

if(isset($_SESSION['userLoggedIn'])) {
	$userLoggedIn = $_SESSION['userLoggedIn'];
  echo "<script>userLoggedIn = '$userLoggedIn';</script>";
}
else {
	header("Location: register.php");
}

?>

<html>
<head>

  <title>Collab Rat - Web Player: Music from the underground</title>
  <!-- Favicon -->
  <link rel="icon" type="image/x-icon" href="assets/images/favicon/favicon.png">
  <!-- Stylesheet -->
  <link rel="stylesheet" type="text/css" href="assets/images/css/style.css">
  <!-- jQuery -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
  <!-- Javascript -->
  <script src="assets/js/script.js"></script>
 <!-- Google Fonts -->
 <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=GFS+Neohellenic:ital,wght@0,400;0,700;1,400;1,700&display=swap" rel="stylesheet">
</head>

<body>
  
<div id="mainContainer">

<div id="topContainer">
  <?php include("includes/navBarContainer.php");  ?>
  
    <div id="mainViewContainer">

      <div id="mainContent">