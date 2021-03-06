<?php # Script 14.6 - browse_prints.php
// This page displays the available prints (products).

// Set the page title and include the HTML header.
$page_title = 'Browse the Prints';
include ('./includes/header.html');

require_once ('../mysql_connect.php'); // Connect to the database.

// Are we looking at a particular artist?
if (isset($_GET['aid'])) {
	$aid = (int) $_GET['aid'];
	if ($aid > 0) {
		$query = "SELECT artists.artist_id, CONCAT_WS(' ', first_name, middle_name, last_name) AS name, print_name, price, description, print_id FROM artists, prints WHERE artists.artist_id = prints.artist_id AND prints.artist_id =$aid ORDER BY prints.print_name";
	} else {
		$query = "SELECT artists.artist_id, CONCAT_WS(' ', first_name, middle_name, last_name) AS name, print_name, price, description, print_id FROM artists, prints WHERE artists.artist_id = prints.artist_id ORDER BY artists.last_name ASC, prints.print_name ASC";
	}
} else {
	$query = "SELECT artists.artist_id, CONCAT_WS(' ', first_name, middle_name, last_name) AS name, print_name, price, description, print_id FROM artists, prints WHERE artists.artist_id = prints.artist_id ORDER BY artists.last_name ASC, prints.print_name ASC";
}

// Create the table head.
echo '<table border="0" width="90%" cellspacing="3" cellpadding="3" align="center">
<tr>
<td align="left" width="20%"><b>Artist</b></td>
<td align="left" width="20%"><b>Print Name</b></td>
<td align="left" width="40%"><b>Description</b></td>
<td align="right" width="20%"><b>Price</b></td>
</tr>';

// Display all the prints, linked to URLs.
$result = mysqli_query ($dbc, $query);
while ($row = mysqli_fetch_array ($result, MYSQL_ASSOC)) {

	// Display each record.
	echo "	<tr>
		<td align=\"left\"><a href=\"browse_prints.php?aid={$row['artist_id']}\">{$row['name']}</a></td>
		<td align=\"left\"><a href=\"view_print.php?pid={$row['print_id']}\">{$row['print_name']}</td>
		<td align=\"left\">{$row['description']}</td>
		<td align=\"right\">\${$row['price']}</td>
	</tr>\n";
	
} // End of while loop.

echo '</table>'; // Close the table.

mysqli_close($dbc); // Close the database connection.
include ('./includes/footer.html');
?>