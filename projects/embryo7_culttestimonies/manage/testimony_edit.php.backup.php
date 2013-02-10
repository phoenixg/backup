<?php 
include '../includes/header.php';
include '../manage/manageheader.php';
?>

<div class="main">
	<h2>修改/删除见证</h2>

	<?php
	//show all testimony, edit, delete links
	require '../connect.php';
	
	$sql = "SELECT `id`,
				   `cult_id`,
				   `testimony_title`,
				   `testimony`,
				   `testimony_date`,
				   `translator`,
				   `reader`,
				   `recorder`
			FROM `culttestimonies_testimonies` 
			ORDER BY `testimony_date` DESC;";
	$pds = $pdo->query($sql);
		
	while ($row = $pds->fetch(PDO::FETCH_ASSOC)){
		echo '<div class="editlist"><span>'.$row['testimony_title'].'</span>';
		echo '<span><a href="'.$_SERVER['PHP_SELF'].'?eid='.$row['id'].'">edit</a></span>';
		echo '<span><a href="'.$_SERVER['PHP_SELF'].'?did='.$row['id'].'">delete</a></span>';
		echo '</div>';
	}
	
	//handle the edit,show choosed testimony form
	if(isset($_GET['eid']) && !isset($_GET['did'])){
		$id = $_GET['eid'];
	
		$sql = "SELECT `id`,
				  	   `cult_id`,
				   	   `testimony_title`,
				       `testimony`,
				       `testimony_date`,
				       `translator`,
				       `reader`,
				       `recorder` 
				FROM `culttestimonies_testimonies` 
				WHERE `id`='$id';";
		$pds = $pdo->query($sql);
		$row = $pds->fetch(PDO::FETCH_ASSOC);
		
		include '../manage/form_edit.php';
		
	}
	
	//handle the delete
	if (isset($_GET['did']) && !isset($_GET['eid'])){
		$id = $_GET['did'];
		
		$sql = "SELECT `id`,
				  	   `cult_id`,
				   	   `testimony_title`,
				       `testimony`,
				       `testimony_date`,
				       `translator`,
				       `reader`,
				       `recorder` 
				FROM `culttestimonies_testimonies` 
				WHERE `id`='$id';";
		$pds = $pdo->query($sql);
		$row = $pds->fetch(PDO::FETCH_ASSOC);
		
		include '../manage/form_delete.php';
		
	}
	
	//what if edit form is submitted
	if (isset($_POST['submit_edit'])){
		
		$id = $_POST['hidden'];
		require '../connect.php';
		
		//初始化错误数组
		$error				= 	array();
		
		//译者
		if (!empty($_POST['translator'])){
			$translator		=	mysql_escape_string(stripcslashes((trim($_POST['translator']))));
		}else {
			$error[]			= 	1;
		}
		//审稿
		if (!empty($_POST['reader'])){
			$reader				=	mysql_escape_string(stripcslashes((trim($_POST['reader']))));
		}else {
			$error[]			= 	2;
		}
		
		//录音
		if (!empty($_POST['recorder'])){
			$recorder			=	mysql_escape_string(stripcslashes((trim($_POST['recorder']))));
		}else {
			$error[]			= 	3;
		}
		
		//录音上传文件,file
		
		//见证所属教派
		if (!empty($_POST['cult_id'])){
			$cult_id			=	mysql_escape_string(stripcslashes((trim($_POST['cult_id']))));
		}else {
			$error[]			= 	5;
		}
		
		//见证发表日期
		if (!empty($_POST['year']) && !empty($_POST['month']) && !empty($_POST['day'])){
			$year				= 	mysql_escape_string(stripcslashes((trim($_POST['year']))));
			if (!is_numeric($year) || strlen($year)!=4){ $error[] = 6;}
			
			$month				= 	mysql_escape_string(stripcslashes((trim($_POST['month']))));
			if (!is_numeric($month) || strlen($month)!=2){ $error[] = 7;}
			
			$day				= 	mysql_escape_string(stripcslashes((trim($_POST['day']))));
			if (!is_numeric($day) || strlen($day)!=2){ $error[] = 8;}
		}else {
			$error[]			= 	9;
		}
		
		//见证标题
		if (!empty($_POST['testimony_title'])){
			$testimony_title	=	mysql_escape_string(stripcslashes((trim($_POST['testimony_title']))));
		}else {
			$error[]			= 	10;
		}
		
		//见证内容
		if (!empty($_POST['testimony'])){
			$testimony			=	nl2br(mysql_escape_string(stripcslashes((trim($_POST['testimony'])))));
		}else {
			$error[]			= 	11;
		}
		
		//check the errors
		if (empty($error)){

			$testimony_date = $year . '-' . $month . '-' . $day; 
			$sql = "UPDATE `culttestimonies_testimonies` SET  `cult_id`='$cult_id',
															  `testimony_title`='$testimony_title',
															  `testimony`='$testimony',
															  `testimony_date`='$testimony_date',
															  `translator`='$translator',
															  `reader`='$reader',
															  `recorder`='$recorder'  
					WHERE `id`='$id';";
			
			$q = $pdo->exec($sql);
			
			if ($q){
				echo '<div class="successinfo">信息修改成功！</div>';
			}else{
				echo '<div class="failureinfo">信息修改失败！</div>';
			};
	
			
		}else {
			//打印错误
			$errorMsg = array(
								'1'=>'译者不能为空',
								'2'=>'审稿不能为空',
								'3'=>'录音不能为空',
								'4'=>'录音文件上传失败',
								'5'=>'见证所属教派不能为空',
								'6'=>'年份必须是4位数字',
								'7'=>'月份必须是2位数字',
								'8'=>'日期必须是2位数字',
								'9'=>'年月日必须填写',
								'10'=>'见证标题不能为空',
								'11'=>'见证内容不能为空'
								);
			
			for ($i=1;$i<12;$i++){
				if (in_array($i, $error)){
					echo '<div class="failureinfo">'.$errorMsg[$i].'</div>';
				}	
			}
		}
	}
	
	//what if delete form is submitted
	if (isset($_POST['submit_delete'])){
		require '../connect.php';
		
		$id = $_POST['hidden'];
		$sql = "DELETE FROM `culttestimonies_testimonies` 
				WHERE `id`='$id';";

		$pds = $pdo->exec($sql);
		if($pds){
			echo '<div class="successinfo">信息删除成功！</div>';
		}else{
			echo '<div class="failureinfo">信息删除失败！</div>';
		}
	} //end of $_POST['submit_delete'] if
	
	
	
	
	
	
	?>
		

        

<?php 
include '../manage/managefooter.php';
include '../includes/footer.php';
?>