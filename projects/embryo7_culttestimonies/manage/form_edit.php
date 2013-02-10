<form action="<?php echo basename($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data">
	<p>翻译信息</p>
	<label>*译者：</label>
	<input type="text" name="translator" maxlength="50" value="<?php echo $row['translator']; ?>" /><br/>
	
	<label>*审稿：</label>
	<input type="text" name="reader" maxlength="50" value="<?php echo $row['reader']; ?>" /><br/>

	<label>*录音：</label>
	<input type="text" name="recorder" maxlength="50"  value="<?php echo $row['recorder']; ?>" /><br/>

	<label>录音上传：</label>
	<input type="file" name="file" /><br/>
	
	<p>见证信息</p>
	<label>*见证所属教派：</label>
	<?php //make cult-name dropdown list
	include '../connect.php';
	$sql = "SELECT `id`,`cult_name` FROM `culttestimonies_cults` ORDER BY `id`;";
	$pds = $pdo->query($sql);
	echo '<select name="cult_id">';
	while ($list = $pds->fetch(PDO::FETCH_ASSOC)){
		echo '<option value="'.$list['id'].'">'.$list['cult_name'].'</option>';
	}
	echo '</select><br/>';
	?>

	<label>*见证发表日期：</label>
	<?php //convert the testimony_date 
	$testimony_date 			= $row['testimony_date'];
	$testimony_date_arr 		= explode('-', $testimony_date);
	list($year, $month, $day) 	= array($testimony_date_arr[0], $testimony_date_arr[1], $testimony_date_arr[2]);
	?>
	<input type="text" name="year" size="4" maxlength="4" id="year" value="<?php echo $year;?>" />年
	<input type="text" name="month" size="2" maxlength="2" id="month" value="<?php echo $month; ?>" />月
	<input type="text" name="day" size="2" maxlength="2" id="day"  value="<?php echo $day; ?>" />日	<br/>

	<label>*见证标题：</label>
	<input type="text" name="testimony_title" maxlength="50" id="testimony_title" value="<?php echo $row['testimony_title']; ?>" /><br/>
	
	<label>*见证内容：</label>
	<span class="tinyEditor">
		<textarea id="input" name="testimony"><?php echo $row['testimony']; ?></textarea>
	</span><br/>
	<small><i>注：必须点击过SOURCE后才能提交成功</i></small>
	
	<br/>
	<label for="kludge"></label>
	<button type="submit" name="submit_edit" value="submit_edit" class="button">修改见证</button>
	<input type="hidden" name="hidden" value="<?php echo $_GET['eid'];?>"/>
</form>