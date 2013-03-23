<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>Images</title>
	<script language="JavaScript">
	<!-- // Hide from old browsers.
	
	// Make a pop-up window function.
	function create_window (image, width, height) {
	
		// Add some pixels to the width and height.
		width = width + 25;
		height = height + 50;
		
		// If the window is already open, resize it to the new dimensions.
		if (window.popup_window && !window.popup_window.closed) {
			window.popup_window.resizeTo(width, height);
		} 
		
		// Set the window properties.
		var window_specs = "location=no, scrollbars=no, menubars=no, toolbars=no, resizable=yes, left=0, top=0, width=" + width + ", height=" + height;
		
		// Set the URL.
		var url = "image_window.php?image=" + image;
		
		// Create the pop-up window.
		popup_window = window.open(url, "PictureWindow", window_specs);
		popup_window.focus();
		
	} // End of function.
	//--></script>
</head>
<body>
<div align="center">Click on an image to view it in a separate window.</div><br />
<table align="center" cellspacing="5" cellpadding="5" border="1">
    <tr>
        <td align="center"><b>Image Name</b></td>
        <td align="center"><b>Image Size</b></td>
    </tr>
<?php # Script 11.2 - images.php
// This script lists the images in the uploads directory.

$dir = 'uploads'; // Define the directory to view.

$files = scandir($dir); // Read all the images into an array.

// Display each image caption as a link to the JavaScript function.
foreach ($files as $image) {

	if (substr($image, 0, 1) != '.') { // Ignore anything starting with a period.
	
		// Get the image's size in pixels.
		$image_size = getimagesize ("$dir/$image");
		
		// Calculate the image's size in kilobytes.
		$file_size = round ( (filesize ("$dir/$image")) / 1024) . "kb";
		
		// Print the information.
		echo "  <tr>
			<td><a href=\"javascript:create_window('$image',$image_size[0],$image_size[1])\">$image</a></td>
			<td>$file_size</td>
		</tr>";
	
	} // End of the IF.
    
} // End of the foreach loop.
?>
</table>
</body>
</html>