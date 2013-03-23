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

// 检查表单是否已提交
if (isset($_POST['submitted'])) {

	$errors = array(); //初始化错误数组

	// 检查昵称是否填写正确
	if (empty($_POST['nickname'])) {
		$errors[] = '你忘记填写昵称了！';
	} else {
		$nickname = escape_data($_POST['nickname']);
	}

	// 检查邮箱是否填写正确
	if (empty($_POST['email'])) {
		$errors[] = '你忘记填写邮箱了！';
	} else {
		$email = escape_data($_POST['email']);
	}

	if (empty($errors)) {

			//执行修改
			$query = "UPDATE user_reg SET nickname='$nickname', email='$email' WHERE username='$usr';";
			$result = @mysql_query ($query);
			if (mysql_affected_rows() == 1) {
				echo '<p>编辑成功！</p>';
			} else {
				echo '<p>编辑失败或未进行编辑！</p>';
				echo '<p>错误原因：' . mysql_error() . '<br /><br />查询语句：' . $query . '</p>';
				include ('./includes/footer.html');
				exit();
			}
	} else { //打印错误
		echo '<p>发生了以下错误：<br />';
		foreach ($errors as $msg) {
			echo " - $msg<br />\n";
		}
		echo '</p><p>请重新尝试！</p>';
	}
}

//总是显示表单
$query = "SELECT nickname, email FROM user_reg WHERE username='$usr'";
$result = @mysql_query ($query);

if (mysql_num_rows($result) == 1) {

	$row = mysql_fetch_array ($result, MYSQL_NUM);

	echo '<h2>编辑用户信息：</h2>
	<form action="edit_user.php" method="post">
	<p>昵称：<input type="text" name="nickname" size="15" maxlength="15" value="' . $row[0] . '" autocomplete="off" /></p>
	<p>邮箱：<input type="text" name="email" size="15" maxlength="30" value="' . $row[1] . '" autocomplete="off" /></p>
	<p><input type="submit" name="submit" value="修改" /></p>
	<input type="hidden" name="submitted" value="TRUE" />
	<input type="hidden" name="username" value="' . $usr . '" />
	</form>';

} else {
	echo '<p>访问出错！</p>';
}

mysql_close();
?>
<?php
include ('./includes/footer.html');
?>