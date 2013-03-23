<?php # Script 14.7 - view_print.php
// This page displays the details for a particular print.

$problem = FALSE; // Assume no problem.

if (isset($_GET['pid'])) { // Make sure there's a print ID.

	$pid = (int) $_GET['pid'];
	
	require_once ('../mysql_connect.php'); // Connect to the database.

	$query = "SELECT CONCAT_WS(' ', first_name, middle_name, last_name) AS name, print_name, price, description, size, image_name FROM artists, prints WHERE artists.artist_id = prints.artist_id AND prints.print_id = $pid";
	$result = mysqli_query ($dbc, $query);
	
	if (mysqli_num_rows($result) == 1) { // Good to go!
	
		// Fetch the information.
		$row = mysqli_fetch_array ($result, MYSQLI_ASSOC);
		
		// Start the HTML page.
		$page_title = $row['print_name'];
		include ('./includes/header.html');
	
		// Display a header.
		echo "<div align=\"center\">
	<b>{$row['print_name']}</b> by 
	{$row['name']}
	<br />{$row['size']}
	<br />\${$row['price']} 
	<a href=\"add_cart.php?pid=$pid\">Add to Cart</a>
	</div><br />";
	
		// Get the image information and display the image.
		if ($image = @getimagesize ("../uploads/{$row['image_name']}")) {
			echo "<div align=\"center\"><img src=\"show_image.php?image={$row['image_name']}\" $image[3] alt=\"{$row['print_name']}\" />";	
		} else {
			echo "<div align=\"center\">No image available."; 
		}
		echo "<br />{$row['description']}</div>";
	
	} else { // No record returned from the database.
		$problem = TRUE;
	}
	
	mysqli_close($dbc); // Close the database connection.

} else { // No print ID.
	$problem = TRUE;
}

if ($problem) { // Show an error message.
	$page_title = 'Error';
	include ('./includes/header.html');
	echo '<div align="center">This page has been accessed in error!</div>';
}

// Complete the page.
include ('./includes/footer.html');
?>