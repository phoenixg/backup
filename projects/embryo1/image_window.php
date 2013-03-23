<?php
// 设置问题报告变量
$okay = FALSE;

// 确保图片名称变量被传了过来
if (isset($_GET['image'])) {

    // 获取图片名称的扩展名
    $ext = substr ($_GET['image'], -4);

    // 测试它是否是图片扩展名
    if ((strtolower($ext) == '.jpg') OR (strtolower($ext) == 'jpeg') OR (strtolower($ext) == '.gif')) {

        // 获取图片信息并显示图片
        if ($image = @getimagesize ('uploads/' . $_GET['image'])) {
            echo "<img src=\"uploads/{$_GET['image']}\" $image[3] border=\"2\" />";
            $okay = TRUE; // 没问题
        }

    } //结束扩展名if

} // 结束 isset() IF.

//如果有些东西错了
if (!$okay) {
    echo '<div>必须接受一个有效的图片名称！</div>';
}
?>
<br />
<div><a href="javascript:self.close();">关闭窗口</a></div>
<?php
include ('./includes/footer.html');
?>