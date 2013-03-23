<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<?php
// 通过 GET 或 POST 检查username是否正确
if ( isset($_GET['username'])) { //从 view_users.php传递过来
	$usr = $_GET['username'];
} elseif (isset($_POST['username'])) { // 如果提交了表单
	$usr = $_POST['username'];
} else { // 如果没有有效的username，就结束
	echo '<p>访问出错！</p>';
	include ('./includes/footer.html');
	exit();
}

require_once ('./mysql_connect.php');

//检查表单是否被提交
if (isset($_POST['submitted'])) {

	if ($_POST['sure'] == 'Yes') { // 执行删除

		$query = "DELETE FROM user_reg WHERE username='$usr'";
		$result = @mysql_query ($query);
		if (mysql_affected_rows() == 1) { //如果删除成功
			echo '<p>该用户已被删除！</p>';
		} else {
			echo '<p>删除该用户失败！</p>';
			echo '<p>错误信息：' . mysql_error() . '<br /><br />查询语句：' . $query . '</p>';
		}

	} else {
		echo '<p>该用户未被删除！</p>';
	}

} else { //如果未提交表单

	$query = "SELECT username FROM user_reg WHERE username='$usr'";
	$result = @mysql_query ($query);

	if (mysql_num_rows($result) == 1) {

		$row = mysql_fetch_array ($result, MYSQL_NUM);

		echo '<h1>删除用户确认：</h1>
		<form action="delete_user.php" method="post">
		<h2>用户名： ' . $row[0] . '</h2>
		<p>你确认要删除该用户吗？<br />
		<input type="radio" name="sure" value="Yes" /> 是
		<input type="radio" name="sure" value="No" checked="checked" /> 否</p>
		<p><input type="submit" name="submit" value="submit" /></p>
		<input type="hidden" name="submitted" value="TRUE" />
		<input type="hidden" name="username" value="' . $usr . '" />
		</form>';

	} else {
		echo '<p>访问出错！</p>';
	}

}

mysql_close();
?>

<?php
include ('./includes/footer.html');
?>