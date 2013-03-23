<?php # Script 12.5 - add_url.php
// This page allows users to add URLs to the database.

// Set the page title and include the HTML header.
$page_title = 'Add a URL';
include ('./includes/header.html');

require_once ('../mysql_connect.php'); // Connect to the database.

if (isset($_POST['submitted'])) { // Handle the form.

	// Check for a URL.
	if (eregi ('^([[:alnum:]\-\.])+(\.)([[:alnum:]]){2,4}([[:alnum:]/+=%&_\.~?\-]*)$', $_POST['url'])) {
		$u = escape_data($_POST['url']);
	} else {
		$u = FALSE;
		echo '<p><font color="red">Please enter a valid URL!</font></p>';
	}
	
	// Check for a URL title.
	if (!empty($_POST['title'])) {
		$t = escape_data($_POST['title']);
	} else {
		$t = FALSE;
		echo '<p><font color="red">Please enter a URL name/title!</font></p>';
	}
	
	// Check for a description.
	if (!empty($_POST['description'])) {
		$d = escape_data($_POST['description']);
	} else {
		$d = FALSE;
		echo '<p><font color="red">Please enter a description!</font></p>';
	}
	
	// Check for a category.
	if (isset($_POST['types']) && (is_array($_POST['types']))) {
		$type = TRUE;
	} else {
		$type = FALSE;
		echo '<p><font color="red">Please select at least one category!</font></p>';
	}
		
	if ($u && $t && $d && $type) { // If everything's OK.

		// Add the URL to the urls table.
		$query = "INSERT INTO urls (url, title, description) VALUES ('$u', '$t', '$d')";		
		$result = @mysql_query ($query); // Run the query.
		$uid = @mysql_insert_id(); // Get the url ID.

		if ($uid > 0) { // New URL has been added.
		
			// Make the URL associations.
			
			// Build the query.
			$query = 'INSERT INTO url_associations (url_id, url_category_id, approved) VALUES ';
			foreach ($_POST['types'] as $v) {
				$query .= "($uid, $v, 'Y'), ";
			}
			$query = substr ($query, 0, -2); // Chop off the last comma and space.

			$result = @mysql_query ($query); // Run the query.
			
			if (mysql_affected_rows() == count($_POST['types'])) { // Query ran OK.
			
				echo '<p><b>Thank you for your submission!</b></p>';
				$_POST = array(); // Reset values.
				
			} else { // If second query did not run OK.
			
				echo '<p><font color="red">Your submission could not be processed due to a system error. We apologize for any inconvenience.</font></p>'; // Public message.
				echo '<p><font color="red">' . mysql_error() . '<br /><br />Query: ' . $query . '</font></p>'; // Debugging message.
				
				// Delete the URL from the urls table.
				$query = "DELETE FROM urls WHERE url_id=$uid";
				@mysql_query ($query); // Run the query.
				
			} // End of mysql_affected_rows() IF.
			
		} else { // If first query did not run OK.
			echo '<p><font color="red">Your submission could not be processed due to a system error. We apologize for any inconvenience.</font></p>'; // Public message.
			echo '<p><font color="red">' . mysql_error() . '<br /><br />Query: ' . $query . '</font></p>'; // Debugging message.
		}		

	} else { // If one of the data tests failed.
		echo '<p><font color="red">Please try again.</font></p>';		
	}

} // End of the main submitted conditional.
// --------- DISPLAY THE FORM ---------
?>
<form action="add_url.php" method="post">
	<fieldset><legend>Fill out the form to submit a URL:</legend>
	
	<p><b>URL:</b> <input type="text" name="url" size="60" maxlength="60" value="<?php if (isset($_POST['url'])) echo $_POST['url']; ?>" /><br /><small>Do NOT include the initial <i>http://</i>.</small></p>
	
	<p><b>URL Name/Title:</b> <input type="text" name="title" size="60" maxlength="60" value="<?php if (isset($_POST['title'])) echo $_POST['title']; ?>" /></p>
	
	<p><b>Description:</b> <textarea name="description" cols="40" rows="5"><?php if (isset($_POST['description'])) echo $_POST['description']; ?></textarea></p>
	
	<p><b>Category/Categories:</b> <select name="types[]" multiple="multiple" size="5">
	<?php // Create the pull-down menu information.
	$query = "SELECT * FROM url_categories ORDER BY category ASC";		
	$result = @mysql_query ($query);
	while ($row = mysql_fetch_array ($result, MYSQL_NUM)) {
		echo "<option value=\"$row[0]\"";
		// Make sticky, if necessary.
		if (isset($_POST['types']) && (in_array($row[0], $_POST['types']))) {
			echo ' selected="selected"';
		}
		echo ">$row[1]</option>\n";
	}
	 ?>
	</select></p>
	
	</fieldset>
	<input type="hidden" name="submitted" value="TRUE" />
		
	<div align="center"><input type="submit" name="submit" value="Submit" /></div>

</form>
<?php
mysql_close(); // Close the database connection.
include ('./includes/footer.html');
?>