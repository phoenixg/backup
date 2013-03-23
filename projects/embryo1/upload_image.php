<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<?php
// 检查表单是否已提交
if (isset($_POST['submitted'])) {

	// 检查要上传的文件
	if (isset($_FILES['upload'])) {

		// 检查文件类型，应该是jpeg/jpg/gif
		$allowed = array ('image/gif', 'image/jpeg', 'image/jpg', 'image/pjpeg');
		if (in_array($_FILES['upload']['type'], $allowed)) {

			// 搬移文件
			if (move_uploaded_file($_FILES['upload']['tmp_name'], "uploads/{$_FILES['upload']['name']}")) {

				echo '<p>文件已上传！</p>';

			} else { // 无法搬移文件

				echo '<p>因为下列原因而无法上传：</p><p>';

				// 根据错误打印相应的信息
				switch ($_FILES['upload']['error']) {
					case 1:
						print '文件超出了php.ini中设定的最大允许值！';
						break;
					case 2:
						print '文件超出了HTML表单设置的MAX_FILE_SIZE！';
						break;
					case 3:
						print '文件只上传了一部分！';
						break;
					case 4:
						print '没有文件被上传！';
						break;
					case 6:
						print '没有临时文件夹！';
						break;
					default:
						print '发生了系统错误！';
						break;
				} // 结束switch

				print '</p>';

			} //结束move...if

		} else { // 错误的文件类型
			echo '<p>请上传jpeg或gif格式的图片！</p>';
			unlink ($_FILES['upload']['tmp_name']); // 删除文件
		}

	} else { // 没有文件被上传
		echo '<p>请上传小于512K的jpeg或gif图片！</p>';
	}

} // 结束表单提交判断
?>

<form enctype="multipart/form-data" action="upload_image.php" method="post">

	<input type="hidden" name="MAX_FILE_SIZE" value="524288"><!--524288/1024=512KB-->

	<fieldset><legend>选择JPEG或GIF的图片上传：</legend>

	<p><b>文件：</b> <input type="file" name="upload" /></p>

	</fieldset>
	<div><input type="submit" name="submit" value="上传" /></div>
	<input type="hidden" name="submitted" value="TRUE" />
</form>

<?php
include ('./includes/footer.html');
?>