<?php # Script 13.5 - index.php
// This is the main page for the site.

// Include the configuration file for error management and such.
require_once ('./includes/config.inc.php'); 

// Set the page title and include the HTML header.
$page_title = 'PHP and MySQL for Dynamic Web Sites: Visual QuickPro Guide (2nd Edition)';
include ('./includes/header.html');

// Welcome the user (by name if they are logged in).
echo '<h1>Welcome';
if (isset($_SESSION['first_name'])) {
	echo ", {$_SESSION['first_name']}!";
}
echo '</h1>';
?>
<p>Spam spam spam spam spam spam
spam spam spam spam spam spam 
spam spam spam spam spam spam 
spam spam spam spam spam spam.</p>
<p>Spam spam spam spam spam spam
spam spam spam spam spam spam 
spam spam spam spam spam spam 
spam spam spam spam spam spam.</p>

<?php // Include the HTML footer file.
include ('./includes/footer.html');
?>