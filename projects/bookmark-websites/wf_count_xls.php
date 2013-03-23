<?php
header("Content-type:application/vnd.ms-excel");
header("Content-Disposition:filename=output.xls");

$arraySource = array(
'0'=>'CCTV-7系列',
'1'=>'中国科学院系列',
'2'=>'凤凰卫视系列',
'3'=>'中国科技信息研究所系列',
'4'=>'中华医学会系列',
'5'=>'北大光华管理学院系列',
'6'=>'中国气象局系列',
'7'=>'赢家大讲堂系列',
'8'=>'第一财经系列',
'9'=>'中医药管理局系列',
'10'=>'高校精品课程系列',
'11'=>'资格考试辅导系列',
'12'=>'就业创业指导系列');

//打印表格的标题行
echo '<table cellspacing="0px">
<tr>
	<td><b>来源</b></td>
	<td><b>总大小（G）</b></td>
	<td><b>总时长(分钟)</b></td>
	<td><b>总部数</b></td>
	<td><b>总门数</b></td>
</tr>';

require_once ('./wf_mysql_connection.php'); //连接数据库
@mysql_query("SET NAMES UTF8");

/* 合计小时
foreach ($arraySource as $value){
	$querySourcehour = "SELECT SUM(CAST((LEFT(dateTimeSize,locate(':',dateTimeSize)-1)) AS UNSIGNED)) AS sourceHour FROM tbvideofilemanage WHERE resource1='" . $value . "';";
	$resultSourcehour = @mysql_query ($querySourcehour);
	$rowSourcehour = mysql_fetch_array($resultSourcehour, MYSQL_BOTH);
	echo $rowSourcehour['sourceHour'] . "<br />";

}
echo $querySourcehour;


//总时长
$querySourcetime = "SELECT dateTimeSize FROM tbvideofilemanage WHERE resource1='" . $arraySource[$i-1] ."';";
$resultSourcetime = @mysql_query($querySourcetime);
$rowSourcetime = mysql_fetch_array($resultSourcetime,MYSQL_BOTH);
$hour[] = substr($rowSourcetime['dateTimeSize'],0,2);

print_r($hour);
echo '<br />';


//总时长
$querySourcehour = "SELECT LEFT(dateTimeSize,locate(':',dateTimeSize)-1) AS sourceHour FROM tbvideofilemanage WHERE resource1='" . $arraySource[$i-1] . "';";
$resultSourcehour = @mysql_query ($querySourcehour);
$rowSourcehour = mysql_fetch_array($resultSourcehour, MYSQL_BOTH);
echo $rowSourcehour['sourceHour'] . "<br />";


*/



//$affectedRows = mysql_affected_rows();

for ($i=1;$i<=13;$i++){ //循环打印13个来源的总大小、总时长、部数及门数
	//总大小
	$querySourcesize = "SELECT SUM(fileSize) AS seriesTotalsize FROM tbvideofilemanage WHERE resource1='" . $arraySource[$i-1] . "';";
	$resultSourcesize = @mysql_query($querySourcesize);
	$rowSourcesize = mysql_fetch_array($resultSourcesize,MYSQL_BOTH);

	//总时长
	$querySourcetime = "SELECT dateTimeSize FROM tbvideofilemanage WHERE resource1='" . $arraySource[$i-1] . "';";
	$resultSourcetime = @mysql_query($querySourcetime);
	$list = array();

	while($rowSourcetime = mysql_fetch_array($resultSourcetime)){
		$tmp = explode(':',$rowSourcetime['dateTimeSize']);
		$list[] = $tmp[0]*3600+$tmp[1]*60+$tmp[2];
	}

	$totalTime=0;
	foreach($list as $value){
		$totalTime += $value;
	}
	$totalTimeMinutes = round($totalTime/60,0);

	//总部数
	if($i<=9){ //无课件的系列（部数）| 无门数
		$querySourcevideo_a = "SELECT COUNT(resource1) AS countSourcevideo FROM tbvideofilemanage WHERE resource1='" . $arraySource[$i-1] . "';";
		$resultSourcevideo_a = @mysql_query($querySourcevideo_a);
		$rowSourcevideo_a = mysql_fetch_array($resultSourcevideo_a,MYSQL_BOTH);
		$countVideo[] = $rowSourcevideo_a['countSourcevideo'];

		$countCourse[] = '';
	}elseif($i==10){ //纯课件的系列（部数）：中医药管理局 | 有门数
		$querySourcevideo_b = "SELECT COUNT(source) AS countSourcevideo_b FROM tblesson WHERE source='09';";
		$resultSourcevideo_b = @mysql_query($querySourcevideo_b);
		$rowSourcevideo_b = mysql_fetch_array($resultSourcevideo_b,MYSQL_BOTH);
		$countVideo[] = $rowSourcevideo_b['countSourcevideo_b'];

		$querySourcecourse_b = "SELECT COUNT(resource1) AS countSourcecourse_b FROM tbvideofilemanage WHERE resource1='" . $arraySource[$i-1] . "';";
		$resultSourcecourse_b = @mysql_query($querySourcecourse_b);
		$rowSourcecourse_b = mysql_fetch_array($resultSourcecourse_b,MYSQL_BOTH);
		$countCourse[] = $rowSourcecourse_b['countSourcecourse_b'];
	}elseif($i<=12){ //纯课件的系列（部数）：高校精品课程、资格考试辅导 | 有门数
		$querySourcevideo_c = "SELECT COUNT(source) AS countSourcevideo_c FROM tblesson WHERE source='" . $i ."';";
		$resultSourcevideo_c = @mysql_query($querySourcevideo_c);
		$rowSourcevideo_c = mysql_fetch_array($resultSourcevideo_c,MYSQL_BOTH);
		$countVideo[] = $rowSourcevideo_c['countSourcevideo_c'];

		$querySourcecourse_c = "SELECT COUNT(source) AS countSourcecourse_c FROM tbvideofilemanage WHERE source='" . $i . "';";
		$resultSourcecourse_c = @mysql_query($querySourcecourse_c);
		$rowSourcecourse_c = mysql_fetch_array($resultSourcecourse_c,MYSQL_BOTH);
		$countCourse[] = $rowSourcecourse_c['countSourcecourse_c'];
	}else{ //课件和非课件都有（部数）：就业创业指导 | 有门数
		//统计tblesson表中的课件部数：Excelhome
		$querySourcevideo_d = "SELECT COUNT(source) AS countSourcevideo_d FROM tblesson WHERE source='13';";
		$resultSourcevideo_d = @mysql_query($querySourcevideo_d);
		$rowSourcevideo_d = mysql_fetch_array($resultSourcevideo_d,MYSQL_BOTH);
		$tmpcountVideo[] = $rowSourcevideo_d['countSourcevideo_d'];

		//统计tbvideofilemanage表中的非课件部数：伴你同行
		$querySourcevideo_e = "SELECT COUNT(resource4) AS countSourcevideo_e FROM tbvideofilemanage WHERE resource4='伴你同行系列';";
		$resultSourcevideo_e = @mysql_query($querySourcevideo_e);
		$rowSourcevideo_e = mysql_fetch_array($resultSourcevideo_e,MYSQL_BOTH);
		$tmpcountVideo[] = $rowSourcevideo_e['countSourcevideo_e'];

		$totalVideo=0;
		foreach($tmpcountVideo as $valueVideo){
			$totalVideo += $valueVideo;
		}

		$countVideo[] = $totalVideo;


		$querySourcecourse_d = "SELECT COUNT(resource4) AS countSourcecourse_d FROM tbvideofilemanage WHERE resource4='Excelhome系列';";
		$resultSourcecourse_d = @mysql_query($querySourcecourse_d);
		$rowSourcecourse_d = mysql_fetch_array($resultSourcecourse_d,MYSQL_BOTH);
		$countCourse[] = $rowSourcecourse_d['countSourcecourse_d'];
	}

	echo
	'<tr>
		<td>' . $arraySource[$i-1] . '</td>
		<td>' . round($rowSourcesize['seriesTotalsize']/(1024*1024),2) . '</td>
		<td>' . $totalTimeMinutes . '</td>
		<td>' . $countVideo[$i-1] . '</td>
		<td>' . $countCourse[$i-1] .'</td>
	</tr>';

}

echo '</table>';

//准备汇总数据
//汇总：总大小
/*
$tmp_result_totalSize=0;
foreach($rowSourcesize as $v1){
	$tmp_result_totalSize += $v1;
}
$result_totalSize = round($tmp_result_totalSize/(1024),2);


echo //打印最底部的汇总行
'<tr>
	<td>汇总</td>
	<td>' . $result_totalSize . '</td>
	<td>' . $result_totalSize . '</td>
	<td>' . $result_totalSize . '</td>
	<td>' . $result_totalSize . '</td>
</tr>';


*/

/*

$totalRows = mysql_affected_rows(); //总条目数



*/


/*
//逐行打印表格



	$queryTotalsize = "SELECT SUM(fileSize) AS totalSize FROM tbvideofilemanage WHERE sId='" . $_POST['searchvideo'] . "' OR (title LIKE '%" . $searchwords [0]. "%' AND title LIKE '%" . $searchwords[1] . "%') ORDER BY sId ASC;";
	$resultTotalsize = @mysql_query($queryTotalsize);
	$rowTotalsize = mysql_fetch_array($resultTotalsize,MYSQL_BOTH);
	$rowTotalsizeinmegabyte = $rowTotalsize['totalSize'] / 1024;
	echo '<br /><div class="result"><b><u>结果</u>：</b><br />';
	echo '共检索出：<b>'. $totalRows . '</b>条结果<br />';
	echo '共计大小：<b>'. $rowTotalsize['totalSize'] .'</b>KB，即<b>' . $rowTotalsizeinmegabyte . '</b>MB';
	echo '</div>';
	//echo '共计时长';
*/

/*
	mysql_free_result ($result);
	mysql_close();


*/


?>

