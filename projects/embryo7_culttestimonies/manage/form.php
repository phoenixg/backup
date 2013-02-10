<form action="<?php echo basename($_SERVER['PHP_SELF']); ?>" method="post" enctype="multipart/form-data">
	<p>翻译信息</p>
	<label>*译者：</label>
	<input type="text" name="translator" maxlength="50" value="<?php if (!empty($error)) echo $_POST['translator']; ?>" /><br/>
	
	<label>*审稿：</label>
	<input type="text" name="reader" maxlength="50" value="<?php if (!empty($error)) echo $_POST['reader']; ?>" /><br/>

	<label>*录音：</label>
	<input type="text" name="recorder" maxlength="50"  value="<?php if (!empty($error)) echo $_POST['recorder']; ?>" /><br/>

	<label>录音上传：</label>
	<input type="file" name="file" /><br/>

	<p>见证信息</p>
	<label>*见证所属教派：</label>
	<?php //make cult-name dropdown list
	include '../connect.php';
	$sql = "SELECT `id`,`cult_name` FROM `culttestimonies_cults` ORDER BY `id`;";
	$pds = $pdo->query($sql);
	echo '<select name="cult_id">';
	while ($row = $pds->fetch(PDO::FETCH_ASSOC)){
		echo '<option value="'.$row['id'].'">'.$row['cult_name'].'</option>';
	}
	echo '</select><br/>';
	?>

	<label>*见证发表日期：</label>
	<input type="text" name="year" size="4" maxlength="4" id="year" value="<?php if (!empty($error)) echo $_POST['year']; ?>" />年
	<input type="text" name="month" size="2" maxlength="2" id="month" value="<?php if (!empty($error)) echo $_POST['month']; ?>" />月
	<input type="text" name="day" size="2" maxlength="2" id="day"  value="<?php if (!empty($error)) echo $_POST['day']; ?>" />日	<br/>

	<label>*见证标题：</label>
	<input type="text" name="testimony_title" maxlength="50" id="testimony_title" value="<?php if (!empty($error)) echo $_POST['testimony_title']; ?>" /><br/>
	
	<label>*见证内容：</label>
	<span class="tinyEditor">
		<textarea id="input" name="testimony"><?php if (!empty($error)) echo $_POST['testimony']; ?></textarea>
	</span><br/>
	<small><i>注：必须点击过SOURCE后才能提交成功</i></small>
	
	<br/>
	<label for="kludge"></label>
	<button type="submit" name="submit" value="submit" class="button">添加见证</button>
</form>