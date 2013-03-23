<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
	<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
	<title>Prepared Statements</title>
</head>
<body>
<?php # Script 11.7 - prepared.php

// Make the connection.
$dbc = @mysqli_connect ('localhost', 'username', 'password', 'test') OR die ('Could not connect to MySQL: ' . mysqli_connect_error() );

// Make the query.
$query = "INSERT INTO accounts (name, balance) VALUES (?, ?)";

// Prepare the statement.
$stmt = mysqli_prepare($dbc, $query);

// Bind the variables.
mysqli_stmt_bind_param($stmt, "sd", $name, $balance);

// Create an array of values to be inserted.
$data = array(
	array('Italo Calvino', 65465.99),
	array('Vladimir Nabokov', 132.74),
	array('James Joyce', 432.74),
	array('William Faulkner', 841664.67),
	array('F. Scott Fitzgerald', 69.23),
	array('Zora Neale Hurston', 130654.44),
	array('Franz Kafka', 87.63),
	array('William Carlos Williams', 9.98),
	array('Jane Austen', 1324.02),
	array('George Eliot', 49683.56)
);

// Print a caption.
echo "<p>The query being prepared is: $query</p>\n";

// Loop through the array, inserting each record.
foreach ($data as $record) {

	// Assign the variables.
	$name = $record[0];
	$balance = $record[1];
	
	// Execute the query.
	mysqli_stmt_execute($stmt);
	
	// Print the results.
	echo "<p>Name: $name<br />Balance: $balance<br />Result: ";
	
	// Print a message based upon the result.
	if (mysqli_stmt_affected_rows($stmt) == 1) {
		echo 'OK';
	} else {
		echo 'FAILED ' . mysqli_stmt_error($stmt);
	}
	
	echo '</p>';
	
} // End of foreach loop.

// Close the statement.
mysqli_stmt_close($stmt);

// Close the connection.
mysqli_close($dbc);
?>
</body>
</html>