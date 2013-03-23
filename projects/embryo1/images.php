<?php
$page_title = "Monster's Lab Project（Embryo Stage）";
include ('./includes/header.html');
?>
<script language="JavaScript">
<!-- // 对老式浏览器隐藏

// pop-up 窗口函数
function create_window (image, width, height) {

	// Add some pixels to the width and height.
	width = width + 25;
	height = height + 50;

	// If the window is already open, resize it to the new dimensions.
	if (window.popup_window && !window.popup_window.closed) {
		window.popup_window.resizeTo(width, height);
	}

	// Set the window properties.
	var window_specs = "location=no, scrollbars=no, menubars=no, toolbars=no, resizable=yes, left=0, top=0, width=" + width + ", height=" + height;

	// Set the URL.
	var url = "image_window.php?image=" + image;

	// Create the pop-up window.
	popup_window = window.open(url, "PictureWindow", window_specs);
	popup_window.focus();

} // 结束函数
//--></script>

<div>点击一张图在新窗口中查看</div><br />
<table cellspacing="5" cellpadding="5" border="1">
    <tr>
        <td><b>图片名称</b></td>
        <td><b>图片大小</b></td>
    </tr>
<?php //列出uploads目录下的所有图片

$dir = 'uploads'; //定义要查看的目录

$files = scandir($dir); // 把所有图片读取进一个数组里面

// 将每个图片属性作为Javascript的链接
foreach ($files as $image) {

	if (substr($image, 0, 1) != '.') { // Ignore anything starting with a period.

		// 获取图片大小（像素）
		$image_size = getimagesize ("$dir/$image");

		// 计算图片大小（KB）
		$file_size = round ( (filesize ("$dir/$image")) / 1024) . "kb";

		// 打印信息
		echo "  <tr>
			<td><a href=\"javascript:create_window('$image',$image_size[0],$image_size[1])\">$image</a></td>
			<td>$file_size</td>
		</tr>";

	} //结束IF

} // 结束foreach

?>
</table>
<?php
include ('./includes/footer.html');
?>