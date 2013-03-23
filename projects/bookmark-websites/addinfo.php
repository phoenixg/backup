<?php

$page_title = '添加网站信息';
include ('./includes/header.html');

if (isset($_POST['websiteIntro']) && isset($_POST['websiteAddress'])){
	require_once ('./mysql_connection.php');//连接数据库

/*
	//预处理填入的数据
	function escape_data ($data) {
			global $mysql_connection;
			if (ini_get('magic_quotes_gpc')) {
				$data = stripslashes($data);
			}
			return mysql_real_escape_string(trim($data), $mysql_connection);
		} 
*/

	$errors = array(); //初始化error数组
	
	//检查字段是否已填，若空则提示错误。还可以继续增加检查项
	if (empty($_POST['websiteIntro'])) {
			$errors[] = '你没有填写网站介绍';
	} else {
		$websiteIntro = $_POST['websiteIntro'];
	}
	
	echo "websiteIntro is " . $websiteIntro;

	if (empty($_POST['websiteAddress'])) {
			$errors[] = '你没有填写网址';
	} else {
		$websiteAddress = $_POST['websiteAddress'];
	}
	
	echo "websiteAddress is " . $websiteAddress;

	//如果没有错误，就将输入的数据增加进数据库
	if (empty($errors)) {
		$query = "INSERT INTO website (website_intro,website_address) VALUE ('$websiteIntro','$websiteAddress')";
		$result = @mysql_query ($query);
		if($result){
			echo "数据已成功添加";
		}
	}else{
		echo "含有错误，可能是没有填写任何东西";
	}
mysql_close();
}
?>


<h3>Bookmark by 爱业星辰</h3>
<form action="addinfo.php" method="post">
	<p>网站介绍</p><input type="text" name="websiteIntro" size="100" autocomplete="off" /><br />
	<p>网站地址</p><input type="text" name="websiteAddress" size="100" autocomplete="off" /><br />
	<input type="submit" name="submit" value="提交" />
	<input type="reset" value="清空" />
</form>


<?php
include ('./includes/footer.html');
?>