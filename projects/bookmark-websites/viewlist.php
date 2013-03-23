<?php

$page_title = '查看网址列表';
include ('./includes/header.html');

require_once ('./mysql_connection.php');
?>

<form action="viewlist.php" method="post">
	<span>删除网址（填写website_id）：</span><input type="text" name="deleteItem" size="5" autocomplete="off" />
	<input type="submit" name="submit" value="删除" />
	<input type="reset" value="重置" />
</form>

<?php
if (isset($_POST['deleteItem'])){
	$itemTodelete = $_POST['deleteItem'];
	$queryDeleteitem = "DELETE FROM website WHERE website_id='$itemTodelete';";
	@mysql_query ($queryDeleteitem);
}else{
	
}



$query = "SELECT website_id,website_intro,website_address FROM website ORDER BY website_id ASC";
$result = @mysql_query ($query); 
$num = mysql_num_rows($result);

if ($num > 0) {

	echo "<p>收录的网址数： $num </p>";
	
	//表格的标题行
	echo '<table>
	<tr>
		<td><b>网站收录ID（website_id）</b></td>
		<td><b>网站介绍（website_intro）</b></td>
		<td><b>网址（website_address）</b></td>
	</tr>';
	
	//逐行打印表格
	while ($row = mysql_fetch_array($result, MYSQL_ASSOC)) {
		echo 
		'<tr>
			<td>' . $row['website_id'] . '</td>
			<td>' . $row['website_intro'] . '</td>
			<td><a href="' . $row['website_address'] .'" target="_blank">' . $row['website_address']. '</a></td>
		</tr>';
	}

	echo '</table>';
	
	mysql_free_result ($result); 

} else {
	echo '<p class="error">目前没有收录任何网址</p>';
}


mysql_close();

include ('./includes/footer.html');
?>