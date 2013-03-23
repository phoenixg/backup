<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>Upload an Image</title>
</head>
<body>
<?php # Script 11.1 - upload_image.php

// Check if the form has been submitted.
if (isset($_POST['submitted'])) {

	// Check for an uploaded file.
	if (isset($_FILES['upload'])) {
		
		// Validate the type. Should be jpeg, jpg, or gif.
		$allowed = array ('image/gif', 'image/jpeg', 'image/jpg', 'image/pjpeg');
		if (in_array($_FILES['upload']['type'], $allowed)) {
		
			// Move the file over.
			if (move_uploaded_file($_FILES['upload']['tmp_name'], "uploads/{$_FILES['upload']['name']}")) {
			
				echo '<p>The file has been uploaded!</p>';
			
			} else { // Couldn't move the file over.
			
				echo '<p><font color="red">The file could not be uploaded because: </b>';
		
				// Print a message based upon the error.
				switch ($_FILES['upload']['error']) {
					case 1:
						print 'The file exceeds the upload_max_filesize setting in php.ini.';
						break;
					case 2:
						print 'The file exceeds the MAX_FILE_SIZE setting in the HTML form.';
						break;
					case 3:
						print 'The file was only partially uploaded.';
						break;
					case 4:
						print 'No file was uploaded.';
						break;
					case 6:
						print 'No temporary folder was available.';
						break;
					default:
						print 'A system error occurred.';
						break;
				} // End of switch.
				
				print '</b></font></p>';

			} // End of move... IF.
			
		} else { // Invalid type.
			echo '<p><font color="red">Please upload a JPEG or GIF image.</font></p>';
			unlink ($_FILES['upload']['tmp_name']); // Delete the file.
		}

	} else { // No file uploaded.
		echo '<p><font color="red">Please upload a JPEG or GIF image smaller than 512KB.</font></p>';
	}
			
} // End of the submitted conditional.
?>
	
<form enctype="multipart/form-data" action="upload_image.php" method="post">

	<input type="hidden" name="MAX_FILE_SIZE" value="524288">
	
	<fieldset><legend>Select a JPEG or GIF image to be uploaded:</legend>
	
	<p><b>File:</b> <input type="file" name="upload" /></p>
	
	</fieldset>
	<div align="center"><input type="submit" name="submit" value="Submit" /></div>
	<input type="hidden" name="submitted" value="TRUE" />
</form>
</body>
</html>