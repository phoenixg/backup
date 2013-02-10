<?php 
include '../includes/header.php';
include '../manage/manageheader.php';
?>


		<h2>添加见证</h2>
		<?php //如果提交表单，就显示成功信息层 
		if(isset($_POST['submit'])){
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
				$sql = "INSERT INTO `culttestimonies_testimonies`(`cult_id`,
																  `testimony_title`,
																  `testimony`,
																  `testimony_date`,
																  `translator`,
																  `reader`,
																  `recorder`) 
														   VALUES('$cult_id',
														   		  '$testimony_title',
														   		  '$testimony', 
														   		  '$testimony_date',
														   		  '$translator',
														   		  '$reader',
														   		  '$recorder');";
				$pdo->exec($sql);
				if ($pdo->lastInsertId()>0){
					echo '<div class="successinfo">信息输入成功！</div>';
				}else{
					echo '<div class="failureinfo">信息输入失败！</div>';
				}
				
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
			}//end of $error empty if

			

			
			

		}//end of submit post if
		?>
		
		
		


        

<?php 
include '../manage/form.php';
include '../manage/managefooter.php';
include '../includes/footer.php';
?>