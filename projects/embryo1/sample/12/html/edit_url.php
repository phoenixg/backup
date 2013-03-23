<?php # Script 12.7 - edit_url.php
// This page allows users to edit or delete existing URL records.

// Set the page title and include the HTML header.
$page_title = 'Edit a URL';
include ('./includes/header.html');

// Check for a URL ID.
if (isset($_GET['uid'])) { // Page is first accessed.
	$uid = (int) $_GET['uid'];
} elseif (isset($_POST['uid'])) { // Form has been submitted.
	$uid = (int) $_POST['uid'];
} else { // Big problem!
	$uid = 0;
}

if ($uid <= 0) { // Do not proceed!
	echo '<p><font color="red">This page has been accessed incorrectly!</font></p>';
	include ('./includes/footer.html');
	exit(); // Terminate execution of the script.
}

require_once ('../mysql_connect.php'); // Connect to the database.

if (isset($_POST['submitted'])) { // Handle the form.

	// Two threads: delete the record OR edit the record.

	if ($_POST['which'] == 'delete') { // Delete the record.
	
		// Delete from the urls table.
		$query = "DELETE FROM urls WHERE url_id=$uid";
		$result = mysql_query($query);
		$affect = mysql_affected_rows();
		
		// Delete from the url_associations table.
		$query = "DELETE FROM url_associations WHERE url_id=$uid";
		$result = mysql_query($query);
		$affect += mysql_affected_rows();
		
		// Report on the success.
		if ($affect > 0) {
			echo '<p><b>The URL has been deleted!</b></p>';
		} else { // No rows affected.
			echo '<p><font color="red">Your submission could not be processed due to a system error. We apologize for any inconvenience.</font></p>';
			// Print queries and use the mysql_error() function (after each mysql_query() call) to debug.
		}
		
		// Complete the page.
		include ('./includes/footer.html');
		exit(); // Terminate execution of the script.
		
	} else { // Edit the URL (default action).
	
		// Validate all of the form fields!
	
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
		
			// Update the urls table.
			$query1 = "UPDATE urls SET url='$u', title='$t', description='$d' WHERE url_id=$uid";
			$result1 = mysql_query($query1);
			
			// Update the url_associations table.
			// Retrieve the old categories.
			$exist_types = unserialize(urldecode($_POST['exist_types']));
			
			if ($_POST['types'] != $exist_types) { // A category change was made.
			
				// Determine the new and old categories.
				$add = array_diff($_POST['types'], $exist_types);
				$delete = array_diff($exist_types, $_POST['types']);
				
				// Add new types, if needed.
				if (!empty($add)) {
					$query2 = 'INSERT INTO url_associations (url_id, url_category_id, approved) VALUES ';
					foreach ($add as $v) {
						$query2 .= "($uid, $v, 'Y'), ";
					}
					$query2 = substr ($query2, 0, -2); // Chop off the last comma and space.
					$result2 = mysql_query ($query2); // Run the query.
				} else { // No new types.
					$result2 = TRUE;
				}
				
				// Delete old types, if necessary.
				if (!empty($delete)) {
					$query3 = "DELETE FROM url_associations WHERE (url_id=$uid) AND (url_category_id IN (". implode (',', $delete) . "))";
					$result3 = mysql_query($query3);
				} else { // No old types.
					$result3 = TRUE;
				}
				
			} else { // No category changes being made.
				$result2 = TRUE;
				$result3 = TRUE;
			}
			
			// Report on the success.
			if ($result1 && $result2 && $result3) {
				echo '<p><b>The URL has been edited!</b></p>';
			} else {
				echo '<p><font color="red">Your submission could not be processed due to a system error. We apologize for any inconvenience.</font></p>';
				// Print queries and use the mysql_error() function (after each mysql_query() call) to debug.
			}

		} else { // If one of the data tests failed.
			echo '<p><font color="red">Please try again.</font></p>';		
		}

	} // End of Edit/Delete if-else.

} // End of the main submitted conditional.

// --------- DISPLAY THE FORM ---------

// Retrieve the URL's current information.
$query = "SELECT url, title, description, url_category_id FROM urls LEFT JOIN url_associations USING (url_id) WHERE urls.url_id=$uid";		
$result = mysql_query ($query);

// Get all of the information for the first record.
$exist_types = array(); // Reset.
list($url, $title, $desc, $exist_types[]) = mysql_fetch_array ($result, MYSQL_NUM);

// Get the other url_category_id values.
while ($row = mysql_fetch_array($result, MYSQL_NUM)) {
	$exist_types[] = $row[3];
}
?>
<form action="edit_url.php" method="post">
	<fieldset><legend>Edit a URL:</legend>
	
	<p><b>Select One:</b> <input type="radio" name="which" value="edit" checked="checked" /> Edit <input type="radio" name="which" value="delete" /> Delete</p>
	
	<p><b>URL:</b> <input type="text" name="url" size="60" maxlength="60" value="<?php echo $url; ?>" /><br /><small>Do NOT include the initial <i>http://</i>.</small></p>
	
	<p><b>URL Name/Title:</b> <input type="text" name="title" size="60" maxlength="60" value="<?php echo $title; ?>" /></p>
	
	<p><b>Description:</b> <textarea name="description" cols="40" rows="5"><?php echo $desc; ?></textarea></p>
	
	<p><b>Category/Categories:</b> <select name="types[]" multiple="multiple" size="5">
	<?php // Create the pull-down menu information.
	$query = "SELECT * FROM url_categories ORDER BY category ASC";		
	$result = @mysql_query ($query);
	while ($row = mysql_fetch_array ($result, MYSQL_NUM)) {
		echo "<option value=\"$row[0]\"";
		// Make sticky, if necessary.
		if (in_array($row[0], $exist_types)) {
			echo ' selected="selected"';
		}
		echo ">$row[1]</option>\n";
	}
	 ?>
	</select></p>
	
	</fieldset>
	<input type="hidden" name="submitted" value="TRUE" />
	<?php // Store the required hidden values.
		echo '<input type="hidden" name="exist_types" value="' . urlencode(serialize($exist_types)) . '" />
		<input type="hidden" name="uid" value="' . $uid . '" />
		';
	?>	
	<div align="center"><input type="submit" name="submit" value="Submit" /></div>

</form>
<?php
mysql_close(); // Close the database connection.
include ('./includes/footer.html');
?>