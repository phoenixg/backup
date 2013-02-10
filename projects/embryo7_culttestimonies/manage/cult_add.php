<?php 
include '../includes/header.php';
include '../manage/manageheader.php';
?>

	<div class="main">
		<h2>添加教派</h2>
		<?php //如果提交表单，就显示成功信息层 
		if(isset($_POST['submit'])){
			require '../connect.php';
			
			//初始化错误数组
			$error				= 	array();
			
			//教派名称
			if (!empty($_POST['cult_name'])){
				$cult_name		=	mysql_escape_string(stripcslashes((trim($_POST['cult_name']))));
			}else {
				$error[]			= 	1;
			}
			//教派文件夹名称
			if (!empty($_POST['cult_folder'])){
				$cult_folder	=	strtolower(mysql_escape_string(stripcslashes((trim($_POST['cult_folder'])))));
			}else {
				$error[]			= 	2;
			}
			
			//check the errors
			if (empty($error)){

				$sql = "INSERT INTO `culttestimonies_cults`(
															`cult_name`,
															`cult_folder`
															) 
													VALUES(
															'$cult_name',
														   	'$cult_folder'
														    );";
				$pdo->exec($sql);
				if ($pdo->lastInsertId()>0){
					echo '<div class="successinfo">信息输入成功！</div>';
				}else{
					echo '<div class="failureinfo">信息输入失败！</div>';
				}
				
			}else {
				//打印错误
				$errorMsg = array(
									'1'=>'教派名称不能为空',
									'2'=>'教派文件夹名称不能为空'
									);
				
				for ($i=1;$i<=2;$i++){
					if (in_array($i, $error)){
						echo '<div class="failureinfo">'.$errorMsg[$i].'</div>';
					}	
				}
			}//end of $error empty if
		}//end of submit post if
		?>
		
<form action="<?php echo basename($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data">
	<p>教派信息</p>
	<label>*教派名称：</label>
	<input type="text" name="cult_name" maxlength="50" value="<?php if (!empty($error)) echo $_POST['cult_name']; ?>" /><br/>
	<small><i>比如，UBF</i></small>
	
	<label>*教派文件夹名称：</label>
	<input type="text" name="cult_folder" maxlength="50" value="<?php if (!empty($error)) echo $_POST['cult_folder']; ?>" /><br/>
	<small><i>比如，c_ubf</i></small>
	
	<br />
	<label for="kludge"></label>
	<button type="submit" name="submit" value="submit" class="button">添加教派</button>
</form>
		


        

<?php 
include '../manage/managefooter.php';
include '../includes/footer.php';
?>