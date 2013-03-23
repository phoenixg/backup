<?php
$page_title = '生成开关专题、栏目精选的mysql语句';
include ('./includes/header.html');


function make_option_pulldowns() {

	$myOptions = array (1 => '开专题/栏目精选（根据名称）', '关专题/栏目精选（根据名称）', '开专题/栏目精选（根据编号）', '关专题/栏目精选（根据编号）');

	echo '<select name="optionlists">';
		foreach ($myOptions as $key => $value) {
			echo "<option value=\"$key\"";
			echo " >$value</option>\n";
		}
	echo '</select>';
}

echo '<form action="wf_generate_mysqlquery.php" method="post">';
echo '<input type="text" name="myop" size="50" autocomplete="off" />';
make_option_pulldowns ();
echo '<input type="submit" name="submit" value="提交" />';
echo '<input type="reset" value="重置" />';

echo '</form>';

if(isset($_POST['myop']) && isset($_POST['optionlists'])){
	switch ($_POST['optionlists']){
		case '1':
		echo '<pre>UPDATE tbvideoclass SET showFlag=\'1\' WHERE className=\'' . $_POST['myop'] .'\';</pre>';
		break;

		case '2':
		echo '<pre>UPDATE tbvideoclass SET showFlag=\'0\' WHERE className=\'' . $_POST['myop'] .'\';</pre>';
		break;

		case '3':
		echo '<pre>UPDATE tbvideoclass SET showFlag=\'1\' WHERE classCode=\'' . $_POST['myop'] .'\';</pre>';
		break;

		case '4':
		echo '<pre>UPDATE tbvideoclass SET showFlag=\'0\' WHERE classCode=\'' . $_POST['myop'] .'\';</pre>';
		break;
	}
}








include ('./includes/footer.html');
?>