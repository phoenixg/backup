<?php # Script 12.9 - view_files.php
// This page displays the files uploaded to the server.

// Set the page title and include the HTML header.
$page_title = 'View Files';
include ('./includes/header.html');

require_once ('../mysql_connect.php'); // Connect to the database.

$first = TRUE; // Initialize the variable.

// Query the database.
$query = "SELECT upload_id, file_name, ROUND(file_size/1024) AS fs, description, DATE_FORMAT(date_entered, '%M %e, %Y') AS d FROM uploads ORDER BY date_entered DESC";
$result = mysql_query ($query);

// Display all the URLs.
while ($row = mysql_fetch_array ($result, MYSQL_ASSOC)) {

	// If this is the first record, create the table header.
	if ($first) {
		echo '<table border="0" width="100%" cellspacing="3" cellpadding="3" align="center">
	<tr>
		<td align="left" width="20%"><font size="+1">File Name</font></td>
		<td align="left" width="40%"><font size="+1">Description</font></td>
		<td align="center" width="20%"><font size="+1">File Size</font></td>
		<td align="left" width="20%"><font size="+1">Upload Date</font></td>
	</tr>';

		$first = FALSE; // One record has been returned.

	} // End of $first IF.
	
	// Display each record.
	echo "	<tr>
		<td align=\"left\"><a href=\"download_file.php?uid={$row['upload_id']}\">{$row['file_name']}</a></td>
		<td align=\"left\">" . stripslashes($row['description']) . "</td>
		<td align=\"center\">{$row['fs']}kb</td>
		<td align=\"left\">{$row['d']}</td>
	</tr>\n";
	
} // End of while loop.

// If no records were displayed...
if ($first) {
	echo '<div align="center">There are currently no files to be viewed.</div>';
} else {
	echo '</table>'; // Close the table.
}

mysql_close(); // Close the database connection.
include ('./includes/footer.html');
?>