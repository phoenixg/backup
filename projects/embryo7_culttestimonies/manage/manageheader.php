<?php 
/*
//硬编码验证
if(($_SERVER['PHP_AUTH_USER']!='admin')||($_SERVER['PHP_AUTH_PW']!='nihaoma')){
	header('WWW-Authenticate:Basic Realm="admin"');
	header('HTTP/1.0 401 Unauthorized');
	exit();
}
*/
?>
<link href="../styles/manage.css" rel="stylesheet" type="text/css" />

<div class='header' style="background-color:#eee;">
	<h1><a href="<?php echo $_SERVER['PHP_SELF'];?>">管理平台</a></h1>
</div>



<div class='content'>
    <div class="side">
	    <ul>
			<li><a href="index.php">添加见证</a></li>	    
			<li><a href="testimony_edit.php">修改/删除见证</a></li>	    	    
	    </ul>
	    <ul>
			<li><a href="cult_add.php">添加教派</a></li>	    
			<li><a href="#"></a></li>	    	    
	    </ul>
	</div>

	<div class="main">
		<!-- 登录表单 
		<form action="<?php //echo $_SERVER['PHP_SELF'];?>" method="post">
			<label>用户名：</label>
			<input type="text" name="admin" size="20"/><br />
			
			<label>密码：</label>
			<input type="password" name="password" size="20" /><br /><br />
			
			<label for="kludge"></label>
			<button type="submit" name="login_submit" value="登录" class="button">登录</button>
		</form>
		 -->
		<?php //管理员身份验证
		/*
		if (isset($_POST['login_submit'])){
			require '../connect.php';
			
			$admin = $_POST['admin'];
			$password = md5($_POST['password']);
			
			$sql = "SELECT * FROM `culttestimonies_login` 
					WHERE `admin`='$admin' AND `password`='$password';";
			
			$pds = $pdo->query($sql);
			$row = $pds->fetch(PDO::FETCH_ASSOC);
			if (!$row){
				exit();
			}else {
				//set cookie
				setcookie('admin',$password,time()+3600,'/','',0);	
			}
		}//end of login_submit if
		*/
		?>
	
