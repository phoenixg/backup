<?php
$page_title = "Monster's Lab Project（Embryo Stage） - 登录";
include ('./includes/header.html');
?>

<?php
// 检查表单是否已被提交
if (isset($_POST['submitted'])) {
	require_once ('./mysql_connect.php');

	$errors = array(); // 初始化错误数组

	// 检查用户名是否填写正确
	if (empty($_POST['username'])) {
		$errors[] = '你忘记填写用户名了！';
	} else {
		$username= escape_data($_POST['username']);
	}

	// 检查密码是否填写正确及是否一致
	if (!empty($_POST['password'])) {
		$password = escape_data($_POST['password']);
	} else {
		$errors[] = '你忘记填写密码了！';
	}

	if (empty($errors)) { // 如果所有都填了

		//检查用户名和密码是否匹配
		$query = "SELECT username, password FROM user_reg WHERE username='$username' AND password=SHA('$password')";
		$result = @mysql_query ($query);
		$row = mysql_fetch_array ($result, MYSQL_NUM);

		if ($row) { //如果数据库中存在匹配的结果，即用户名和密码存在并匹配

			// 设置 cookies 并重定向
			setcookie ('username', $row[0], time()+3600, '/', '', 0);

			// 重定向至 loggedin.php 页面
			$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);

			//检查反斜杠
			if ((substr($url, -1) == '/') OR (substr($url, -1) == '\\') ) {
				$url = substr ($url, 0, -1); // 切掉反斜杠
			}

			//增加页面
			$url .= '/loggedin.php';

			echo $url;
			header("Location: $url");//如果出现header错误导致无法重定向，则打开 php.ini 然后把 output_buffering 设为 on ,重启appache即可
			exit();

		} else { // 如果查询不出匹配的用户名和密码
			$errors[] = '用户名和密码不匹配<br />';
			$errors[] = mysql_error() . '<br />查询语句： ' . $query;
		}

	} // 结束 if (empty($errors)) IF

	mysql_close();

} else { //如果未提交表单

	$errors = NULL;

} // 结束提交表单IF判断

if (!empty($errors)) { // 打印所有错误信息
	echo '<p>发生了以下错误：<br />';
	foreach ($errors as $msg) {
		echo " - $msg<br />\n";
	}
	echo '</p><p>请再次尝试！</p>';
}

// 创建表单
?>

<h2>登录</h2>
<form action="login.php" method="post">
	<p>用户名： <input type="text" name="username" size="20" maxlength="40" /> </p>
	<p>密码： <input type="password" name="password" size="20" maxlength="20" /></p>
	<p><input type="submit" name="submit" value="登录" /></p>
	<input type="hidden" name="submitted" value="TRUE" />
</form>

<?php
include ('./includes/footer.html');
?>




