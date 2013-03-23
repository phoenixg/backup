<?php # Script 11.4 - login.php
ob_start(); // Start output buffering.
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>Login</title>
</head>
<body>
<?php

// Check if the form has been submitted.
if (isset($_POST['submitted'])) {

	require_once ('../mysql_connect.php'); // Connect to the db.
	// The escape_data() function is defined in mysql_connect.php!
	// Make sure that mysql_connect.php selects the 'sitename' database!
	
	// Check for an email address.
	if (!empty($_POST['email'])) {
		$e = escape_data($_POST['email']);
	} else {
		echo '<p><font color="red">You forgot to enter your email address!</font></p>';
		$e = FALSE;
	}
	
	// Check for a password.
	if (!empty($_POST['password'])) {
		$p = escape_data($_POST['password']);
	} else {
		echo '<p><font color="red">You forgot to enter your password!</font></p>';
		$p = FALSE;
	}
	
	if ($e && $p) { // If everything's OK.

		/* Retrieve the user_id and first_name for 
		that email/password combination. */
		$query = "SELECT user_id, first_name FROM users WHERE email='$e' AND password=SHA('$p')";		
		$result = @mysql_query ($query); // Run the query.
		$row = mysql_fetch_array ($result, MYSQL_NUM); // Return a record, if applicable.

		if ($row) { // A record was pulled from the database.
				
			// Set the session data & redirect.
			session_start();
			$_SESSION['user_id'] = $row[0];
			$_SESSION['first_name'] = $row[1];

			ob_end_clean(); // Delete the buffer.

			// Redirect the user to the loggedin.php page.
			// Start defining the URL.
			$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
			// Check for a trailing slash.
			if ((substr($url, -1) == '/') OR (substr($url, -1) == '\\') ) {
				$url = substr ($url, 0, -1); // Chop off the slash.
			}
			// Add the page.
			$url .= '/loggedin.php';
			
			header("Location: $url");
			exit(); // Quit the script.
				
		} else { // No record matched the query.
			echo '<p><font color="red">The email address and password entered do not match those on file.</font></p>'; // Public message.
			echo '<p><font color="red">' . mysql_error() . '<br /><br />Query: ' . $query . '</font></p>';// Debugging message.
		}
		
	} else { // Errors!
		echo '<p><font color="red">Please try again.</font></p>';
	} // End of if ($e && $p) IF.
		
	mysql_close(); // Close the database connection.

} // End of the main Submit conditional.

// Display the form.
?>
<h2>Login</h2>
<form action="login.php" method="post">
	<p>Email Address: <input type="text" name="email" size="20" maxlength="40" value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>" /> </p>
	<p>Password: <input type="password" name="password" size="20" maxlength="20" /></p>
	<p><input type="submit" name="submit" value="Login" /></p>
	<input type="hidden" name="submitted" value="TRUE" />
</form>
</body>
</html>
<?php
ob_end_flush(); // Send everything to the Web browser.
?>