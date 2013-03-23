<?php # Script 14.11 - submit_order.php
// This page inserts the order information into the table.
// This page would come after the billing process.
// This page assumes that the billing process worked (the money has been taken).

// Set the page title and include the HTML header.
$page_title = 'Order Confirmation';
include ('./includes/header.html');

// Assume that the customer is logged in and that this page has access to the customer's ID.
$customer = 1; // Temporary.

// Assume that this page receives the order total.
$total = 178.93; // Temporary.

require_once ('../mysql_connect.php'); // Connect to the database.

// Turn autocommit off.
mysqli_autocommit($dbc, FALSE);

// Add the order to the orders table.
$query = "INSERT INTO orders (customer_id, total) VALUES ($customer, $total)";
$result = mysqli_query($dbc, $query);
if (mysqli_affected_rows($dbc) == 1) {

	// Need the order ID.
	$oid = mysqli_insert_id($dbc);
	
	// Insert the specific order contents into the database.
	$query = "INSERT INTO order_contents (order_id, print_id, quantity, price) VALUES ";
	foreach ($_SESSION['cart'] as $pid => $value) {
		$query .= "($oid, $pid, {$value['quantity']}, {$value['price']}), ";
	}
	$query = substr($query, 0, -2); // Chop off last two characters.
	$result = mysqli_query($dbc, $query);
	
	// Report on the success.
	if (mysqli_affected_rows($dbc) == count($_SESSION['cart'])) { // Whohoo!
	
		// Commit the transaction.
		mysqli_commit($dbc);
		mysqli_close($dbc);
		
		// Clear the cart.
		unset($_SESSION['cart']);
		
		// Message to the customer.
		echo '<p>Thank you for your order. You will be notified when the items ship.</p>';
		
		// Send emails and do whatever else.
	
	} else { // Rollback and report the problem.
	
		mysqli_rollback($dbc);
		mysqli_close($dbc);
		
		echo '<p>Your order could not be processed due to a system error. You will be contacted in order to have the problem fixed. We apologize for the inconvenience.</p>';
		// Send the order information to the administrator.
		
	}

} else { // Rollback and report the problem.

	mysqli_rollback($dbc);
	mysqli_close($dbc);

	echo '<p>Your order could not be processed due to a system error. You will be contacted in order to have the problem fixed. We apologize for the inconvenience.</p>';
	// Send the order information to the administrator.
	
}

include ('./includes/footer.html');
?>