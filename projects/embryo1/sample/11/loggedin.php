<?php # Script 11.5 - loggedin.php
ob_start(); // Start output buffering.
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>Logged In!</title>
</head>
<body>
<?php

session_start(); // Start the session.

// Greet the user by name, if possible.
if (isset($_SESSION['first_name']) ) {

	echo "<p>You are now logged in, {$_SESSION['first_name']}.</p>";

} else { // If no session value is present, redirect the user.

	ob_end_clean(); // Delete the buffer.
	
	// Start defining the URL.
	$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);
	// Check for a trailing slash.
	if ((substr($url, -1) == '/') OR (substr($url, -1) == '\\') ) {
		$url = substr ($url, 0, -1); // Chop off the slash.
	}
	$url .= '/login.php'; // Add the page.
	header("Location: $url");
	exit(); // Quit the script.
	
}

echo '</body>
</html>';

ob_end_flush(); // Send everything to the Web browser.
?>