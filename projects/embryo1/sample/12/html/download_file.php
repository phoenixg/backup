<?php # Script 12.10 - download_file.php
// This pages handles file downloads through headers.

// Check for an upload_id.
if (isset($_GET['uid'])) {
	$uid = (int) $_GET['uid'];
} else { // Big problem!
	$uid = 0;
}

if ($uid > 0) { // Do not proceed!

	require_once ('../mysql_connect.php'); // Connect to the database.

	// Get the information for this file.
	$query = "SELECT file_name, file_type, file_size FROM uploads WHERE upload_id=$uid";
	$result = mysql_query ($query);
	list ($fn, $ft, $fs) = mysql_fetch_array ($result, MYSQL_NUM);
	mysql_close(); // Close the database connection.

	// Determine the file name on the server.
	$the_file = '../uploads/' . $uid;
	
	// Check if it exists.
	if (file_exists ($the_file)) {
	
		// Send the file.
		header ("Content-Type: $ft\n");
		header ("Content-disposition: attachment; filename=\"$fn\"\n");
		header ("Content-Length: $fs\n");
		readfile ($the_file);
		
	} else { // File doesn't exist.
		$page_title = 'File Download';
		include ('./includes/header.html');
		echo '<p><font color="red">The file could not be located on the server. We apologize for any inconvenience.</font></p>'; 
		include ('./includes/footer.html');
	}

} else { // No valid upload ID.
	$page_title = 'File Download';
	include ('./includes/header.html');
	echo '<p><font color="red">Please select a valid file to download.</font></p>'; 
	include ('./includes/footer.html');
}
?>