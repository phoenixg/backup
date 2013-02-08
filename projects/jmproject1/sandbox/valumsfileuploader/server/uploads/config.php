<?php
// 所有配置内容都可以在这个文件维护
error_reporting(E_ERROR);
// 配置url路由
$route_config = array(
  '/page/'=>'/page/view/',
  '/thumb/'=>'/file/thumb/',
  '/login/'=>'/user/login/',
  '/reg/'=>'/user/reg/',
  '/logout/'=>'/user/logout/',
);


/* 数据库配置

$db_config = array(
  'host'=>'localhost',
  'user'=>'root',
  'password'=>'root',
  'default_db'=>'test'
);      
      
*/
