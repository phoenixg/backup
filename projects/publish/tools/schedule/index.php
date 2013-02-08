<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta name="robots" content="noindex,nofollow">
<title>Month and Daily Schedule</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
<script src="./jquery.flip.min.js"></script>
<style>
	div#schedule{
		width:1000px;
	}
	#nav a {
		text-decoration:none;
		margin:2px 2px;
		font-size:1.6em;
	}
	#nav a:link, #nav a:visited{
		color:#555
	}
	#nav a:hover{
		color:#FFF;
		background-color:#000;
	}
	#nav {
		height:50px;
	}
	#nav span{
		width:50px;
		font-weight:bold;
	}
	span{
		display:block;
		float:left;
		width:30px;
		margin:0 1px;
		text-align:center;
	}
	span.hasnot{
		color:#BBB;
		background-color:#1B2279;
	}
	span.weekend{
		background-color:#335E93;
	}
	span.beforetoday{
		filter:alpha(opacity=50);  /*支持 IE 浏览器*/  
		-moz-opacity:0.50; /*支持 FireFox 浏览器*/  
		opacity:0.50;  /*支持 Chrome, Opera, Safari 等浏览器*/ 
	}
	span.today{
		background-color:#FF0000;
	}
	span.has{
		color:#BBB;
		background-color:#0C7D3A;
	}
	
	div.item {
		margin:10px 0;
		color:#555;
	}

	.item span{
		background-color:#BBB;
		text-align:center;
	}
	.item span.item_time_start, .item span.item_time_end{
		width:100px;
	}
	.item span.item_content{
		width:600px;
		text-align:left;
		padding:0 2px;
	}
	.item span.item_reliability{
	}
	.item span.reliability-1{
		color:#EEE;
		background-color:#C13B37;
	}
	.item span.reliability-2{
		color:#EEE;
		background-color:#AE1511;
	}
	.item span.reliability-3{
		color:#EEE;
		background-color:#7C0A07;
	}
	.item span.item_status_0{
		visibility:hidden;
	}
	.item span.item_status_1{
		background-color:#0C7D3A;
	}
	.clear{
		clear:both;
	}
</style>
</head>
<body>

<?php
require_once('config.php');
?>

<div id="schedule">
<div id="nav">

<?php
$current_year = date('Y');//eg. 2012
$current_month = date('n');//eg. 6

$query_year = isset($_GET['y']) ? $_GET['y'] : $current_year;
$query_month = isset($_GET['m']) ? $_GET['m'] : $current_month;

if(!in_array($query_year, range(2012, 2013))) die;
if(!in_array($query_month, range(1, 12))) die;

?>
<span>月份</span>
<a href="index.php?y=2012&m=1">1</a>
<a href="index.php?y=2012&m=2">2</a>
<a href="index.php?y=2012&m=3">3</a>
<a href="index.php?y=2012&m=4">4</a>
<a href="index.php?y=2012&m=5">5</a>
<a href="index.php?y=2012&m=6">6</a>
<a href="index.php?y=2012&m=7">7</a>
<a href="index.php?y=2012&m=8">8</a>
<a href="index.php?y=2012&m=9">9</a>
<a href="index.php?y=2012&m=10">10</a>
<a href="index.php?y=2012&m=11">11</a>
<a href="index.php?y=2012&m=12">12</a>

</div><!--/#nav-->


<?php

//准备要查询的日期数组
$schdl_all = array();
$query_month_arr = range(1,date('t', mktime(0,0,0, $query_month,1,$query_year)));
foreach($query_month_arr as $day)
{
	$schdl_all[] = $query_year.'-'.str_pad($query_month, 2, '0', STR_PAD_LEFT).'-'.str_pad($day, 2, '0', STR_PAD_LEFT);
}
$link = mysql_connect($host, $user, $pass);
mysql_select_db($dbname, $link);
mysql_query("SET NAMES utf8;");

//获取某年某月所有含有日程的日期及当日日程数量
$query = "SELECT schedule_date, COUNT(schedule_date) as count
			FROM schedule 
			WHERE YEAR(schedule_date) = '$query_year' AND MONTH(schedule_date) = '$query_month'
			GROUP BY schedule_date;";
$result = mysql_query($query);
$schdl = array();
while($row = mysql_fetch_assoc($result))
{
	$schdl[$row['schedule_date']] = $row['count'];
}

//echo '<pre>';print_r($schdl);echo '</pre>';

//打印日期列表
foreach($schdl_all as $date)
{
	//日期是今天之前、今天、还是今天之后
	$today_flg = (strtotime($date.' 00:00:00')>strtotime('now')) ? 'aftertoday':'beforetoday';
	if($date == date('Y-m-d'))
	{
		$today_flg = 'today';
	}
	
	//日期是周末还是非周末
	list($y, $m, $d) = explode('-', $date);
	$weekday_num = date('w', mktime(0, 0, 0, $m, $d, $y));
	$weekend_flg = 'notweekend';
	if(in_array($weekday_num, array(0,6)))
	{
		$weekend_flg = 'weekend';
	}

	if(array_key_exists($date, $schdl))
	{
		echo '<span class="has '.$today_flg.' '.$weekend_flg.'" id="date-'.$date.'" title="'.$schdl[$date].'">'.substr($date, -2).'</span>';
	}else{
		echo '<span class="hasnot '.$today_flg.' '.$weekend_flg.'" id="date-'.$date.'">'.substr($date, -2).'</span>';
	}
}

//echo '<pre>';print_r($schdl_all);echo '</pre>';
?>
<div class="clear"></div>
<div id="schedule_info"></div>

</div><!--/#schedule -->


<a href="./scaffolding/scaffolding.php">SCAFFOLD</a>




<script>
$(document).ready(function() {  
	
	//获取日期相应的事宜列表
	$('.has').click(function(){
		//console.log(this);	
		var choosedate = $(this).attr('id').substring(5,15);//0000-00-00
		$.ajax({
			type: 'POST',
			url: 'ajax.php',
			data: { 'date' : choosedate },
			dataType: 'json',
			success: function(jsonData){
				//console.log(jsonData);
				$('#schedule_info').html('');
				$.each(jsonData, function(i){
					//console.log(i);
					//console.log(jsonData[i][0]);

					$('#schedule_info').append( '<div class="item">' +
																	'<span class="item_time_start">' + jsonData[i][1] + '</span>' +
																	'<span class="item_time_end">' + jsonData[i][2] + '</span>' +
																	'<span class="item_content">' + jsonData[i][3] + '</span>' +
																	'<span class="item_reliability">' + jsonData[i][4] + '</span>' +
																	'<span class="item_status_'+jsonData[i][5]+'">&nbsp;</span>' +
												'</div><div class="clear"></div>');
					$('.item_reliability').addClass('reliability-'+jsonData[i][4]);
				});
				
				//注册点击翻转编辑事件
				$('.item_reliability').toggle(
					function(){
						$(this).flip({
							direction:'lr',
							content:'',
							color:'#ff0',
							speed:150,
							onEnd:function(){
								console.log(11);
							}
						});
					},
					function(){
						$(this).revertFlip();	
					}
				);//end of toggle	



			},
			error: function(){
				console.log('json error');	
			}
		});	
	});	
}); 
</script>

</body>
</html>


<?php
mysql_close($link);

?>
