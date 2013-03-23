<?php
//数据库定义（本机：localhost）及本机用于加工组的数据库
DEFINE('DB_NAME','wf_vpgroup');
DEFINE('DB_USER','root');
DEFINE('DB_PASSWORD','nihaoma');
DEFINE('DB_HOST','localhost');

//建立数据库连接
$mysqlConnection = @mysql_connect (DB_HOST,DB_USER,DB_PASSWORD) OR die('Connection Failed.');

//选择数据库
@mysql_select_db (DB_NAME) OR die ('Selection Failed.');

?>