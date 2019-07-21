<?php
	// Declering variables to prevent error
	$fname = "";    // First name
	$lname = "";	// Last name
	$em ="";		// Email
	$em2 ="";	// Email 2
	$password="";	// Password
	$password2="";	// Password 2
	$date="";		// Sign up date
	$error_array= array();// Holds error masseges

	// Registration form values
	if(isset($_POST['register_button'])){

		// First name
		$fname = strip_tags($_POST['reg_fname']);	// Remove html tags
		$fname = str_replace(' ', '', $fname);		// Remove spaces
		$fname = ucfirst(strtolower($fname));		// Uppercase first latter
		$_SESSION['reg_fname'] = $fname; 			// Stores first name into session variables

		// last name
		$lname = strip_tags($_POST['reg_lname']);	// Remove html tags
		$lname = str_replace(' ', '', $lname);		// Remove spaces
		$lname = ucfirst(strtolower($lname));		// Uppercase first latter
		$_SESSION['reg_lname'] = $lname; 			// Stores Last name into session variables


		// Email
		$em = strip_tags($_POST['reg_email']);	// Remove html tags
		$em = str_replace(' ', '', $em);		// Remove spaces
		$em = ucfirst(strtolower($em));			// Uppercase first latter
		$_SESSION['reg_email'] = $em; 			// Stores email into session variables

		// Email 2
		$em2 = strip_tags($_POST['reg_email2']);	// Remove html tags
		$em2 = str_replace(' ', '', $em2);			// Remove spaces
		$em2 = ucfirst(strtolower($em2));			// Uppercase first latter
		$_SESSION['reg_email2'] = $em2; 			// Stores email into session variables

		// Password
		$password = strip_tags($_POST['reg_password']);		// Remove html tags
		$password2 = strip_tags($_POST['reg_password2']);	// Remove html tags

		// Current date
		$date = date("Y-m-d");

		// Chack email
		if($em == $em2){

			//  Chack if email is valid format
			if(filter_var($em, FILTER_VALIDATE_EMAIL)){
				$em = filter_var($em, FILTER_VALIDATE_EMAIL);

				// Check if email already exists
				$e_check = mysqli_query($con, "SELECT email FROM users WHERE email='$em'");

				// Count the number of returned
				$num_rows = mysqli_num_rows($e_check);
				if($num_rows>0){
					array_push($error_array, "Email already in used<br>") ;
				}

			}
			else{
				array_push($error_array, "Invalid email format<br>");
			}

		}
		else{
			array_push($error_array, "Email don't match<br>");
		}

		if (strlen($fname) > 25 || strlen($fname) <2) {
			array_push($error_array, "Your first name must be between 2 and 25 character<br>");
		}
		if (strlen($lname) > 25 || strlen($lname) <2) {
			array_push($error_array, "Your last name must be between 2 and 25 character<br>");
		}
		if ($password != $password2) {
			array_push($error_array, "Your password don't match<br>");
		}
		else{
			if (preg_match('/[^A-Za-z0-9]/', $password)) {
				array_push($error_array, "Your password can only contain english character or numbers<br>");
			}
		}
		if(strlen($password > 30 || strlen($password) < 5)) {
			array_push($error_array, "Your password must be between 5 and 30 characters<br>");
		}

		if(empty($error_array)){
			$password = md5($password); // Encrypt password before sending database
			// Generating username by concatenating first and last name
			$username = strtolower($fname."_".$lname);
			$chack_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
			$i = 0;
			// If username exists add number to username
			while (mysqli_num_rows($chack_username_query) != 0) {
				$i++;
				$username = $username."_".$i;
				$chack_username_query = mysqli_query($con, "SELECT username FROM users WHERE username='$username'");
			}

			// Profile picture assignment
			$rand = rand(1,2);  // Random number between 1 and 2
			if($rand == 1){
				$profile_pic = "assets/images/profile_pics/defaults/head_belize_hole.png";
			}
			else if($rand == 2){
				$profile_pic = "assets/images/profile_pics/defaults/head_green_sea.png";
			}

			$query = mysqli_query($con, "INSERT INTO users VALUES('', '$fname', '$lname', '$username', '$em', '$password', '$date', '$profile_pic', '0', '0', 'no', ',')");

			array_push($error_array, "<span style='color: #14C800;'>You're all set! Go ahead and login!</span><br>");

			//Clear session variables 
			$_SESSION['reg_fname'] = "";
			$_SESSION['reg_lname'] = "";
			$_SESSION['reg_email'] = "";
			$_SESSION['reg_email2'] = "";
		}
	}
?>