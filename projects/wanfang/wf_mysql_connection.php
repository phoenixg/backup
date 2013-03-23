<?php
//数据库定义（电信网：58.221.37.90）
//DEFINE('DB_NAME','www');
//DEFINE('DB_USER','wanfang');
//DEFINE('DB_PASSWORD','wanfang');
//DEFINE('DB_HOST','58.221.37.90');

//数据库定义（教育网：58.198.42.136）
//DEFINE('DB_NAME','');
//DEFINE('DB_USER','');
//DEFINE('DB_PASSWORD','');
//DEFINE('DB_HOST','58.198.42.136');

//数据库定义（公司内：192.168.0.127）
DEFINE('DB_NAME','wanfangnew2010_test');
DEFINE('DB_USER','root');
DEFINE('DB_PASSWORD','wanfang');
DEFINE('DB_HOST','192.168.0.127');

//数据库定义（本机：localhost）
//DEFINE('DB_NAME','wanfangvideo');
//DEFINE('DB_USER','root');
//DEFINE('DB_PASSWORD','nihaoma');
//DEFINE('DB_HOST','localhost');

//建立数据库连接
$mysqlConnection = @mysql_connect (DB_HOST,DB_USER,DB_PASSWORD) OR die('Connection Failed.');

//选择数据库
@mysql_select_db (DB_NAME) OR die ('Selection Failed.');

?>