<?php # Script 14.1 - mysql_connect.php

// This file contains the database access information for the database. 
// This file also establishes a connection to MySQL and selects the database.

// Set the database access information as constants.
define ('DB_USER', 'username');
define ('DB_PASSWORD', 'password');
define ('DB_HOST', 'localhost');
define ('DB_NAME', 'ecommerce');

// Make the connnection and then select the database.

// Improved MySQL Version:
$dbc = mysqli_connect (DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die ('Could not connect to MySQL: ' . mysqli_connect_error() );

/* Standard MySQL Version:
$dbc = mysql_connect (DB_HOST, DB_USER, DB_PASSWORD) OR die ('Could not connect to MySQL: ' . mysql_error() );
mysql_select_db (DB_NAME) OR die ('Could not select the database: ' . mysql_error() );
*/

// Create a function for escaping the data.
function escape_data ($data) {
	
	// Address Magic Quotes.
	if (ini_get('magic_quotes_gpc')) {
		$data = stripslashes($data);
	}
	
	// Improved MySQL Version:
	global $dbc;
	$data = mysqli_real_escape_string($dbc, trim($data));
	
	/* Standard MySQL Version:
	// Check for mysql_real_escape_string() support.
	if (function_exists('mysql_real_escape_string')) {
		global $dbc; // Need the connection.
		$data = mysql_real_escape_string (trim($data), $dbc);
	} else {
		$data = mysql_escape_string (trim($data));
	} */

	// Return the escaped value.	
	return $data;

} // End of function.
?>