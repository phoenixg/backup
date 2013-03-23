<?php
$page_title = "Monster's Lab Project（Embryo Stage） - 注销";
include ('./includes/header.html');
?>

<?php
//如果没有设置cookie，那么重定向至首页
if (!isset($_COOKIE['username'])) {

	// 开始定义URL
	$url = 'http://' . $_SERVER['HTTP_HOST'] . dirname($_SERVER['PHP_SELF']);

	//检查反斜杠
	if ((substr($url, -1) == '/') OR (substr($url, -1) == '\\') ) {
		$url = substr ($url, 0, -1); // 切掉反斜杠
	}

	//增加页面
	$url .= '/index.php';

	header("Location: $url");//如果出现header错误导致无法重定向，则打开 php.ini 然后把 output_buffering 设为 on ,重启appache即可
	exit();

} else { // 删除cookies

	setcookie ('username', '', time()-300, '/', '', 0);
}

// 打印消息
echo "<h1>注销成功</h1>
<p>你已成功注销,亲爱的 {$_COOKIE['username']}!</p>
<p><br /><br /></p>";
?>
<?php
include ('./includes/footer.html');
?>




