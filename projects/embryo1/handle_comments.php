<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<?php
//设置期望的表单输入
$allowed = array('username', 'comments', 'submit', 'stamp');

// 得到输入
$received = array_keys($_POST);

//检查两个数组是否匹配
if ($allowed == $received) {

	require_once ('./mysql_connect.php'); // 连接数据库

	// 检查用户名是否填写正确
	if (!empty($_POST['username'])) {
		$username = escape_data(htmlspecialchars($_POST['username']));
	} else {
		echo '<p>你忘记填写用户名了！</p>';
		$username = FALSE;
	}

	//检查评论是否填写正确
	if (!empty($_POST['comments'])) {
		$comments = escape_data(htmlspecialchars($_POST['comments']));
	} else {
		echo '<p>你忘记填写评论了！</p>';
		$comments = FALSE;
	}

	// 检查 stamp
	if (strlen($_POST['stamp']) == 32 ) {
		$s = escape_data($_POST['stamp']);
	} else {
		echo '<p>页面出错！</p>';
		$s = FALSE;
	}

	if ($username && $comments && $s) { // 如果什么都没问题的话

		//添加数据到数据库
		$query = "INSERT INTO comments (username, comment, stamp) VALUES ('$username', '$comments', '$s')";
		$result = @mysql_query ($query); // 执行查询语句

		if (mysql_affected_rows() == 1) { //如果记录添加成功
			echo '<p>感谢你的评论！</p>';
		} else { //如果记录添加失败
			echo '<p>评论添加失败！</p>';
			echo mysql_error() . '<br /><br />查询语句：' . $query;
		}

	} else { // 如果有问题
		echo '<p>请重新尝试！</p>';
	}

	mysql_close(); //关闭数据库连接

}else { // 如果表单不匹配
	echo '<p>页面出错！</p>';
}
?>

<?php
include ('./includes/footer.html');
?>