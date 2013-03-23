<?php
$page_title = '检索万方视频数据库并查看数据表信息';
include ('./includes/header.html');
?>

<!-- JW Player 需要下面四个文件 可以自定义jwbox.css -->
<script type='text/javascript' src='swfobject.js'></script>
<script type='text/javascript' src='jwbox/jquery.js'></script>
<script type='text/javascript' src='jwbox/jquery.jwbox.js'></script>
<link rel='stylesheet' type='text/css' href='jwbox/jwbox.css' />

<div class="jwbox"><a href="#">播放器演示（需要js，暂时不弄）</a><div class='jwbox_hidden'><div class='jwbox_content'><div id='testabcde'></div></div></div></div>
<!--
<div class="jwbox">
	<img alt="" title="" src="view.jpg" />

	<div class='jwbox_hidden'>
		<div class='jwbox_content'>
			<div id='testabcde'></div>
		</div>
	</div>
</div>
-->

<style type="text/css">@import url(./css/wf_tbvideofilemanage_styles.css);</style>

<div class="tbvideomanage"><b><u>检索说明</u>：</b>
	<ol>
		<li>检索字段：sId 或 title。如果输入SID就是该SID的片子，如果输入检索词，就是在片名中检索。</li>
		<li>支持范围：不支持课件片名和子SID检索，只支持课程名称和课程SID检索。</li>
		<li>检索词：支持最多两个检索词（检索词之间只能有一个空格）。</li>
		<li>排序：结果按照SID升序排序。</li>

	</ol>
</div>



<?php
echo '<form action="wf_tbvideofilemanage.php" method="post">';
echo '<input type="text" name="searchvideo" size="50" autocomplete="off" class="searchbox" />';
echo '<input type="submit" name="submit" value="检索" class="button" />';
echo '<input type="reset" value="重置" class="button" />';
echo '</form>';



if (isset($_POST['searchvideo']) && trim($_POST['searchvideo'])!=NULL){
	$searchwords = explode(" ",$_POST['searchvideo']);

	require_once ('./wf_mysql_connection.php');//连接数据库
	@mysql_query("SET NAMES UTF8");

	$query = "SELECT sId,title,resource1,dateTimeSize,fileSize FROM tbvideofilemanage WHERE sId='" . $_POST['searchvideo'] . "' OR (title LIKE '%" . $searchwords [0]. "%' AND title LIKE '%" . $searchwords[1] . "%') ORDER BY sId ASC;";
	echo '<pre>'.$query.'</pre>';
	$result = @mysql_query ($query);

	$totalRows = mysql_affected_rows(); //总条目数


	//打印表格的标题行
	echo '<table cellspacing="0px">
	<tr>
		<td><b>序号</b></td>
		<td><b>SID</b></td>
		<td><b>片名</b></td>
		<td><b>系列</b></td>
		<td><b>时长</b></td>
		<td><b>大小</b></td>
	</tr>';

	//逐行打印表格
	$affectedRows = mysql_affected_rows();
	for ($i=1;$i<=$affectedRows;$i++){
		$row = mysql_fetch_array($result, MYSQL_BOTH);
		$row['title']=preg_replace("/($searchwords[0])/i","<b>\\1</b>",$row['title']); //使用正则将检索词加粗显示，第一个检索词
		if($searchwords[1]){ //如果检索了两个关键词
			$row['title']=preg_replace("/($searchwords[1])/i","<b>\\1</b>",$row['title']); //使用正则将检索词加粗显示，第二个检索词
		}
		echo
		'<tr>
			<td>' . $i . '</td>
			<td>' . $row['sId'] . '</td>
			<td>' . $row['title'] . '</td>
			<td>' . $row['resource1'] . '</td>
			<td>' . $row['dateTimeSize'] . '</td>
			<td>' . $row['fileSize'] . '</td>
		</tr>';
	}

	echo '</table>';


	$queryTotalsize = "SELECT SUM(fileSize) AS totalSize FROM tbvideofilemanage WHERE sId='" . $_POST['searchvideo'] . "' OR (title LIKE '%" . $searchwords [0]. "%' AND title LIKE '%" . $searchwords[1] . "%') ORDER BY sId ASC;";
	$resultTotalsize = @mysql_query($queryTotalsize);
	$rowTotalsize = mysql_fetch_array($resultTotalsize,MYSQL_BOTH);
	$rowTotalsizeinmegabyte = $rowTotalsize['totalSize'] / 1024;
	echo '<br /><div class="result"><b><u>结果</u>：</b><br />';
	echo '共检索出：<b>'. $totalRows . '</b>条结果<br />';
	echo '共计大小：<b>'. $rowTotalsize['totalSize'] .'</b>KB，即<b>' . $rowTotalsizeinmegabyte . '</b>MB';
	echo '</div>';
	//echo '共计时长';



	mysql_free_result ($result);
	mysql_close();


}






include ('./includes/footer.html');

?>

<!-- JWBox的播放器代码，必须放在 类jwbox 容器的后面 -->
<script type='text/javascript'>
	var s1 = new SWFObject('player.swf','player','400','324','9');
	s1.addParam('allowfullscreen','true');
	s1.addParam('allowscriptaccess','always');
	s1.addParam('wmode','opaque');
	s1.addParam('bgcolor','#55FF55');
	s1.addParam('flashvars','file=video.flv&plugins=hd-1,newsticker-1&hd.file=video_hd.flv&hd.state=false&newsticker.text=测试文字&dock=false&newsticker.scrollspeed=3&newsticker.link=video.flv')
	s1.write('testabcde');
</script>

