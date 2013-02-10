<form action="<?php echo basename($_SERVER['PHP_SELF']); ?>" method="post">
	<button type="submit" name="submit_delete" value="submit_delete" class="button">确认删除</button>
	<input type="hidden" name="hidden" value="<?php echo $_GET['did'];?>"/>
</form>