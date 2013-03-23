<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<?php
if (isset($_POST['submitted'])) {

	require_once ('./mysql_connect.php');

	//创建用户escape填入数据的函数
	function escape_data ($data) {
		global $mysqlConnection;
		if (ini_get('magic_quotes_gpc')) {
			$data = stripslashes($data);
		}
		return mysql_real_escape_string(trim($data), $mysqlConnection);
	}

	$errors = array(); // 初始化错误数组

	// 检查邮箱是否填写正确
	if (empty($_POST['email'])) {
		$errors[] = '你忘记填写邮箱了！';
	} else {
		$email = escape_data($_POST['email']);
	}

	// 检查密码是否填写正确及是否一致
	if (!empty($_POST['password']) && !empty($_POST['password_new']) && !empty($_POST['password_new_confirm'])) {
		$password = escape_data($_POST['password']);
		$password_new = escape_data($_POST['password_new']);
		$password_new_confirm = escape_data($_POST['password_new_confirm']);
		if ($password_new != $password_new_confirm) {
			$errors[] = '两次填写的新密码不一致！';
		}
	} else {
		$errors[] = '你忘记填写全密码了！';
	}

	if (empty($errors)) {

		//检查邮箱和密码是否和数据库中一致
		$query = "SELECT username FROM user_reg WHERE (email='$email' AND password=SHA('$password') )";
		$result = mysql_query($query);
		$num = mysql_num_rows($result);
		if (mysql_num_rows($result) == 1) { //如果检索出一条结果，就表示匹配，即填写的和数据库中一致

			$row = mysql_fetch_array($result, MYSQL_NUM);

			$query = "UPDATE user_reg SET password=SHA('$password_new') WHERE username='$row[0]';";
			$result = @mysql_query ($query);
			if (mysql_affected_rows() == 1) { //如果更新了一条结果，就表示成功

				//发送一封密码修改的邮件

				echo '<p>密码已修改！</p><br />';
				include ('./includes/footer.html');
				exit();

			} else { //如果更新失败，即密码修改失败
				echo '密码修改失败！</p><br />';
				echo '<p>错误信息：' . mysql_error() . '<br /><br />查询语句：' . $query . '</p>';
				include ('./includes/footer.html');
				exit();
			}

		} else { //如果没有检索出结果，就表示不匹配，即填写的和数据库中不一致
			echo '<p>邮箱或密码有一项或多项填写不正确！</p>';
		}

	} else { //如果填写中有错误，那么不执行数据库更新，并打印错误信息

		echo '<p>发生了以下错误：<br />';
		foreach ($errors as $msg) {
			echo " - $msg<br />\n";
		}
		echo '</p><p>请再次尝试！</p>';

	}

	mysql_close();

}
?>
<h1>修改密码</h1>
<form action="password_change.php" method="post">
	<p>邮箱：<input type="text" name="email" size="20" maxlength="40" value="<?php if (isset($_POST['email'])) echo $_POST['email']; ?>" autocomplete="off" /> </p>
	<p>当前密码：<input type="password" name="password" size="10" maxlength="20" /></p>
	<p>新密码：<input type="password" name="password_new" size="10" maxlength="20" /></p>
	<p>重复输入一遍新密码：<input type="password" name="password_new_confirm" size="10" maxlength="20" /></p>
	<p><input type="submit" name="submit" value="修改" /></p>
	<input type="hidden" name="submitted" value="TRUE" />
</form>

<?php
include ('./includes/footer.html');
?>