<?php
//数据库定义（ramhost）
DEFINE('DB_NAME','embryo');
DEFINE('DB_USER','root');
DEFINE('DB_PASSWORD','123456');
DEFINE('DB_HOST','localhost');

//建立数据库连接
$mysqlConnection = @mysql_connect (DB_HOST,DB_USER,DB_PASSWORD) OR die('Connection Failed.');

//选择数据库
@mysql_select_db (DB_NAME) OR die ('Selection Failed.');

//创建用户escape填入数据的函数
function escape_data ($data) {
	global $mysqlConnection;
	if (ini_get('magic_quotes_gpc')) {
		$data = stripslashes($data);
	}

	//检查运行环境对于 mysql_real_escape_string() 的支持
	if (function_exists('mysql_real_escape_string')) {
		global $mysqlConnection;
		$data = mysql_real_escape_string(trim($data), $mysqlConnection);
	} else {
		$data = mysql_escape_string (trim($data));
	}

	return $data;
}
?>