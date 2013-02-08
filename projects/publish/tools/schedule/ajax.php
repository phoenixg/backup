<?php
require_once 'config.php';

$query_date = $_POST['date'];
//$query_date = '2012-05-27';
$link = mysql_connect($host, $user, $pass);
mysql_select_db($dbname, $link);
mysql_query("SET NAMES utf8;");

$query = "SELECT id, schedule_date, schedule_time_start, schedule_time_end, schedule_content, schedule_reliability, schedule_status
			FROM schedule 
			WHERE schedule_date = '$query_date'
			ORDER BY schedule_time_start;";
$result = mysql_query($query);
$json = array();
while($row = mysql_fetch_assoc($result))
{
	$json[$row['id']] = array(
								$row['schedule_date'], 
								$row['schedule_time_start'],
								$row['schedule_time_end'],
								$row['schedule_content'],
								$row['schedule_reliability'],
								$row['schedule_status']
						); 
}
echo json_encode($json);

?>
