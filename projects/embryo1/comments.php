<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>

<form action="handle_comments.php" method="post">

	<fieldset><legend>你的评论：</legend>
	<p><b>用户名：</b> <input type="text" name="username" size="20" maxlength="40" /></p>
	<p><b>评论：</b> <textarea name="comments" rows="3" cols="40"></textarea></p>
	</fieldset>

	<div align="center"><input type="submit" name="submit" value="提交" /></div>

	<input type="hidden" name="stamp" value="<?php echo md5(uniqid(rand(), true)); ?>" />

</form>


<?php
include ('./includes/footer.html');
?>