<?php # Script 11.8 - benchmark.php
// Require the file and begin the process.
require_once('Benchmark/Timer.php');
$t = new Benchmark_Timer;
$t->start();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>View Submitted Comments</title>
</head>
<body>
<?php
// Set a marker.
$t->setMarker ('Header printed');

// Make the connection.
$dbc = @mysqli_connect ('localhost', 'username', 'password', 'test') OR die ('Could not connect to MySQL: ' . mysqli_connect_error() );
$t->setMarker ('Connected to MySQL');

// Make the query.
$query = "SELECT name, comment, DATE_FORMAT(date_entered, '%M %D, %Y') FROM comments ORDER BY date_entered DESC";

// Run the query and handle the results.
if ($result = @mysqli_query($dbc, $query)) {
	$t->setMarker ('Query has been run');

	if (mysqli_num_rows($result) > 0) { // Some records returned.
	
		// Print each record in a loop.
		while ($row = mysqli_fetch_array($result, MYSQLI_NUM)) {
			echo "<h3>$row[0] ($row[2])</h3>
			<p>$row[1]</p><br />";
		}		
		$t->setMarker ('Finished printing the results');

	} else { // No records returned.
		echo '<p>There are currently no comments in the database.</p>';
	}

} else { // Query didn't run properly.
	echo '<p><font color="red">MySQL Error: ' . mysqli_error($dbc) . '<br /><br />Query: ' . $query . '</font></p>';// Debugging message.
}

// Free the result and close the connection.
mysqli_free_result($result);
mysqli_close($dbc);
$t->setMarker ('Free and Close');

// Stop the timer and print the results.
$t->stop();
$result = $t->getProfiling();
foreach ($result as $element) {
	echo "<p>{$element['name']}: {$element['diff']}</p>";
}
?>
</body>
</html>