<?php
$page_title = "Monster's Lab Project（Embryo Stage） - 登录成功";
include ('./includes/header.html');
?>

<?php
//如果未设置成功cookie/session，就重定向至首页
if (!isset($_COOKIE['username'])) {

	// 开始定义url
	$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);

	//检查反斜杠
	if ((substr($url, -1) == '/') OR (substr($url, -1) == '\\') ) {
		$url = substr ($url, 0, -1); // 切掉反斜杠
	}

	//增加页面
	$url .= '/index.php';

	header("Location: $url");
	exit();
}

//打印成功登录信息
echo "<p>你已登录：<b> {$_COOKIE['username']} </b></p><br /><br />";
?>

<?php
include ('./includes/footer.html');
?>




