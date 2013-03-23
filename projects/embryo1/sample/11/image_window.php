<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>View Image</title>
</head>
<body>
<?php # Script 11.3 - image_window.php

// Set a variable for problem reporting.
$okay = FALSE;

// Make sure an image name was passed to the script.
if (isset($_GET['image'])) {

    // Get the extension of the image name.
    $ext = substr ($_GET['image'], -4);
        
    // Test if it's a valid image extension.
    if ((strtolower($ext) == '.jpg') OR (strtolower($ext) == 'jpeg') OR (strtolower($ext) == '.gif')) {
    
        // Get the image information and display the image.
        if ($image = @getimagesize ('uploads/' . $_GET['image'])) { 
            echo "<img src=\"uploads/{$_GET['image']}\" $image[3] border=\"2\" />";   
            $okay = TRUE; // No problems.
        }
        
    } // End of extension IF.
    
} // End of isset() IF.

// If something went wrong...
if (!$okay) {
    echo '<div align="center"><font color="red" size="+1">This script must receive a valid image name!</font></div>';
}
?>
<br />
<div align="center"><a href="javascript:self.close();">Close This Window</a></div>
</body>
</html>