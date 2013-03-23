<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
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
		$password_confirm = escape_data($_POST['password_confirm']);
		if ($password != $password_confirm) {
			$errors[] = '两次填写的密码不一致！';
		}
	} else {
		$errors[] = '你忘记填写密码了！';
	}

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

	if (empty($errors)) { // 如果所有填写的都正确，那么。。。，并打印感谢信息

		//检查是否之前有人注册过此用户名
		$query = "SELECT username FROM user_reg WHERE username='$username'";
		$result = @mysql_query($query);
		if (mysql_num_rows($result) == 0) {//如果这个用户名之前没有被注册过，那么就

			//注册用户，存储用户信息到数据库
			$query = "INSERT INTO user_reg (username, nickname, password, email, registration_date) VALUES ('$username', '$nickname', SHA('$password'), '$email', NOW() )";
			$result = @mysql_query ($query);
			if ($result) {

				//发送一封注册成功的确认邮件


				// 重定向至register_thanks.php
				$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);

				//检查反斜杠
				if ((substr($url, -1) == '/') OR (substr($url, -1) == '\\') ) {
					$url = substr ($url, 0, -1); // 切掉反斜杠
				}

				// 增加页面
				$url .= '/register_thanks.php';
				echo $url;
				header("Location: $url"); //如果出现header错误导致无法重定向，则打开 php.ini 然后把 output_buffering 设为 on ,重启appache即可
				exit();

			} else {
				echo '<p>注册失败：' . mysql_error() . '<br /><br />查询语句： ' . $query . '</p>';
				include ('./includes/footer.html');
				exit();
			}

			mysql_close();
		} else {
			echo '<p>此用户名已被注册！</p>';
		}

	} else { //如果填写中出现错误，那么打印出错误项目
		echo '<p>注册填写中发生了下列错误：<br />';
		foreach ($errors as $error_msg) {
			echo " - $error_msg<br />\n";
		}
		echo '</p><p>请返回重新填写！</p>';
	}

} else { //如果没有提交表单，那么就显示表单
?>

<h1>注册</h1>
<p>已有账户请点此登录。已有OpenID帐号或Google帐号请直接点此登录。</p>

<form method="post" action="register.php">
    <fieldset>
        <label>用户名</label><input name="username" size="20" maxlength="20" type="text" autocomplete="off"><br />
        <label>密码</label><input name="password" size="10" type="password"><br />
        <label>再次输入密码</label><input name="password_confirm" size="10" type="password"><br />
        <label>昵称</label><input name="nickname" size="10" maxlength="10" type="text" autocomplete="off"><br />
        <label>邮箱</label><input name="email" size="10" maxlength="10" type="text" autocomplete="off"><br />
        <label>验证</label><input name="validate" size="10" maxlength="10" type="text" autocomplete="off"><br />

        <textarea name="terms" rows="5" cols="20" readonly="readonly">请输入文字</textarea><br /><!-- 防止元素被修改 --><br />
        <input name="agree_terms" value="checkboxvalue1" type="checkbox">同意条款
		<input name="agree_send_email" value="checkboxvalue2" type="checkbox">同意接收邮件<br />

        <input type="hidden" name="submitted" value="TRUE" />
   		<input type="submit" name="submit" value="提交" ><br />

    </fieldset>
</form>

<?php
} // 关闭检查表单是否已被提交的IF-ELSE判断
?>

<?php
include ('./includes/footer.html');
?>