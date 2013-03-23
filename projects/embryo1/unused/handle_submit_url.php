<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<?php
// 初始化变量
$message = '<font color="red">发生了以下错误：<br />';
$problem = FALSE;

// 检查用户名
if (!eregi ('^[[:alpha:]\.\' \-]{4,}$', stripslashes(trim($_POST['name'])))) {
	$problem = TRUE;
	$message .= '<p>请填写一个有效的用户名！</p>';
}

// 检查邮箱
if (!eregi ('^[[:alnum:]][a-z0-9_\.\-]*@[a-z0-9\.\-]+\.[a-z]{2,4}$', stripslashes(trim($_POST['email'])))) {
	$problem = TRUE;
	$message .= '<p>请填写一个有效的邮箱！</p>';
}

// 检查URL
if (!eregi ('^((http|https|ftp)://)?([[:alnum:]\-\.])+(\.)([[:alnum:]]){2,4}([[:alnum:]/+=%&_\.~?\-]*)$', stripslashes(trim($_POST['url'])))) {
	$problem = TRUE;
	$message .= '<p>请填写一个有效的URL！</p>';
}

// 检查URL目录
if (!isset($_POST['url_category']) OR !is_numeric($_POST['url_category'])) {
	$message .= '<p>请选择一个有效的URL目录！</p>';
	$problem = TRUE;
}

if (!$problem) { // 如果没有任何问题
	echo '<p>感谢你提交URL信息！</p>';
} else { // 如果发生了错误
	echo $message;
	echo '</font><p>请重新尝试！</p>';
}

?>


<?php
include ('./includes/footer.html');
?>