<?php //主页
$page_title = '查看存盘情况';
include ('./includes/header.html');
?>

<style type="text/css">@import url(./css/wf_disk_situation_styles.css);</style>


<table cellspacing="0px">
  <caption>存储盘</caption>
  <tr>
    <th>盘符</th>
    <th>系列</th>
    <th>存放内容</th>
    <th>视频总数</th>
    <th>可用空间（G）</th>
    <th>总空间（T）</th>
  </tr>
  <tr>
    <td>CC01A</td>
    <td>中国科技信息研究所</td>
    <td>AVI（SID/中文）FLV（新/旧）截图（新/旧） 源文件</td>
    <td>3167</td>
    <td>420</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC02A</td>
    <td>CCTV-7</td>
    <td>WMV（中文缺） FLV（新/旧缺） 截图（新/旧缺） 源文件</td>
    <td>2843</td>
    <td>177</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC02B</td>
    <td>CCTV-7</td>
    <td>源文件</td>
    <td>-</td>
    <td>9</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC02C</td>
    <td>CCTV-7</td>
    <td>AVI（SA开头）AVI（SB020303483-SB020305903）</td>
    <td>-</td>
    <td>17</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC02D</td>
    <td>CCTV-7</td>
    <td>AVI（SB020303125-SB020303482）源文件</td>
    <td>-</td>
    <td>0.5</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC02E</td>
    <td>CCTV-7</td>
    <td>源文件</td>
    <td>-</td>
    <td>135</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC03A/CC05A</td>
    <td>中国气象局/中华医学会</td>
    <td>AVI（SID/中文）FLV（新/旧）截图（新/旧）源文件 / AVI（SID）FLV（新/旧）截图（新/旧）源文件</td>
    <td>239/206</td>
    <td>13</td>
    <td>0.5</td>
  </tr>
  <tr>
    <td>CC04A</td>
    <td>中国科学院</td>
    <td>AVI（SID）FLV（新）截图（新/旧）源文件</td>
    <td>592</td>
    <td>142</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC06A</td>
    <td>北大光华管理学院</td>
    <td>AVI（SID）FLV（新）截图（新/旧）源文件</td>
    <td>540</td>
    <td>77</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC06B</td>
    <td>北大光华管理学院</td>
    <td>源文件</td>
    <td>-</td>
    <td>52</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC07A</td>
    <td>凤凰卫视</td>
    <td>AVI（SID/中文）FLV（新/旧）截图（新/旧）源文件</td>
    <td>759</td>
    <td>61</td>
    <td>1.5</td>
  </tr>
  <tr>
    <td>CC08A</td>
    <td>赢家大讲堂</td>
    <td>FLV（新/旧）源文件</td>
    <td>541</td>
    <td>188</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC08B</td>
    <td>赢家大讲堂</td>
    <td>AVI（SID）截图（新/旧）</td>
    <td>-</td>
    <td>8</td>
    <td>0.5</td>
  </tr>
  <tr>
    <td>CC09A</td>
    <td>中医药管理局</td>
    <td>AVI（SID）FLV（新）截图（新/旧）源文件</td>
    <td>695</td>
    <td>94</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC10A</td>
    <td>第一财经</td>
    <td>AVI（SID）FLV（新/旧）截图（新/旧）源文件</td>
    <td>212</td>
    <td>400</td>
    <td>1.5</td>
  </tr>
  <tr>
    <td>CC11A/CC12A</td>
    <td>高校精品课程/资格考试辅导</td>
    <td>交大 同济 圣才 全部格式</td>
    <td>-</td>
    <td>17</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC13A</td>
    <td>就业创业指导</td>
    <td>伴你同行 ExcelHome 全部格式</td>
    <td>-</td>
    <td>336</td>
    <td>1</td>
  </tr>
  <tr>
    <td>CC14A</td>
    <td>[未命名]</td>
    <td>AVI 源文件</td>
    <td>-</td>
    <td>-</td>
    <td>1</td>
  </tr>

</table>

<br /><br /><br />

<table cellspacing="0px">
  <caption>AVI盘</caption>
  <tr>
    <th>盘符</th>
    <th>系列</th>
    <th>可用空间（G）</th>
    <th>总空间（T）</th>
  </tr>
  <tr>
    <td>AVI-A</td>
    <td>中国科技信息研究所、中华医学会、中国气象局、北大光华管理学院</td>
    <td>87</td>
    <td>1</td>
  </tr>
  <tr>
    <td>AVI-B</td>
    <td>赢家大讲堂、中国科学院</td>
    <td>19</td>
    <td>1</td>
  </tr>
  <tr>
    <td>AVI-C</td>
    <td>凤凰卫视、CCTV-7（SA开头）</td>
    <td>63</td>
    <td>1</td>
  </tr>
  <tr>
    <td>AVI-D</td>
    <td>CCTV-7（SB开头）</td>
    <td>65</td>
    <td>1</td>
  </tr>
  <tr>
    <td>AVI-E</td>
    <td>中医药管理局、第一财经</td>
    <td>301</td>
    <td>1</td>
  </tr>
  <tr>
    <td>AVI-F</td>
    <td>高校精品课程、资格考试辅导、就业创业指导</td>
    <td>569</td>
    <td>1</td>
  </tr>
</table>

<br /><br /><br />

<table cellspacing="0px">
  <caption>WFV盘</caption>
  <tr>
    <th>盘符</th>
    <th>系列</th>
    <th>可用空间（G）</th>
    <th>总空间（T）</th>
  </tr>
  <tr>
    <td>WFV 1/2</td>
    <td>01-02系列、 高校精品课程、资格考试辅导、就业创业指导</td>
    <td>368</td>
    <td>1</td>
  </tr>
  <tr>
    <td>WFV 2/2</td>
    <td>03-10系列</td>
    <td>400</td>
    <td>1</td>
  </tr>
</table>


<br /><br />


<table cellspacing="0px">
  <caption>GC盘</caption>

  <tr>
    <th>盘符</th>
    <th>当前存放内容</th>
    <th>可用空间（G）</th>
    <th>总空间（T）</th>
    <th>上次编辑者</th>
    <th>上次编辑时间</th>
    <!--<th>编辑</th>-->
  </tr>

<?php
require_once ('./wf_mysql_connection_company.php');//连接数据库
@mysql_query("SET NAMES UTF8");

$query = "SELECT disk,content,creater,date,available_disk,total_disk FROM wf_gc_disk ORDER BY disk;";
//echo '<pre>'.$query.'</pre>';
$result = @mysql_query ($query);

while ($row = mysql_fetch_array($result, MYSQL_BOTH)){
	echo
	'<tr>
		<td>' . $row['disk'] . '</td>
		<td>' . $row['content'] . '</td>
		<td>' . $row['available_disk'] . '</td>
		<td>' . $row['total_disk'] . '</td>
		<td>' . $row['creater'] . '</td>
		<td>' . $row['date'] . '</td>
	</tr>';
}

echo '</table>';

echo '<br /><br /><br />';

?>
<div class="edit_gc">
<form method="get" action="wf_disk_situation.php">
	<label>要修改的过程盘是：</label>
	<select name="disk">
		<option value="GC01" >GC01</option>
		<option value="GC02" >GC02</option>
		<option value="GC03" >GC03</option>
		<option value="GC04" >GC04</option>
		<option value="GC05" >GC05</option>
	</select><br /><br />

	<label>可用空间：</label>
	<input name="available_space" size="10" type="text" autocomplete="off"><label>G</label><br /><br />

	<label>编辑人：</label>
	<select name="creater">
		<option value="田静" >田静</option>
		<option value="芳芳" >芳芳</option>
		<option value="黄峰" >黄峰</option>
	</select><br /><br />

	<label>请填写当前存放的内容：</label><br />
	<textarea name="content" rows="5" cols="50"></textarea><br /><br />

	<input type="hidden" name="submitted" value="TRUE" />
	<input type="submit" name="submit" value="更新" ><br />
</form>
</div>

<?php //如果提交了修改表单，那么就执行修改
if(isset($_GET['submitted'])) {

$disk = $_GET['disk'];
$content = $_GET['content'];
$available_space = $_GET['available_space'];
$creater = $_GET['creater'];

$query_update = "UPDATE wf_gc_disk SET content='" . $content . "',creater='" . $creater . "',available_disk='" . $available_space . "',date='" . date('Y-m-d') . "' WHERE disk='" . $disk ."';";
//echo '<pre>' . $query_update . '</pre>';
mysql_query ($query_update) OR die('更新执行失败!');

echo '<br /><br /><br />';

mysql_free_result ($result);
mysql_close();



}



?>















<?php
include ('./includes/footer.html');
?>