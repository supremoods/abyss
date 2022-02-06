<?php
   include('dbConnect.php');
	session_start();
	
	$userId =  $_SESSION['id'];

	$query = "UPDATE abyss_User SET Status = 'offline' WHERE id = '$userId'";
	$cmd = mysqli_query($conn,$query);
	session_destroy();
	header("location:../index.php");
?>