<?php

	ob_start(); // Turns on output buffering
	session_start();

	$timezone = date_default_timezone_set("Europe/London");
	$con = mysqli_connect('localhost','root', '', 'social');
	
	if(mysqli_connect_errno()){
		echo "Connection faild.!".mysqli_connect_errno();
	}
?>