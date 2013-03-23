<?php
$page_title = '自动填充演示';
include ('./includes/header.html');
?>

<style type="text/css"><!--
#searchfield {
	font: 1.2em arial, helvetica, sans-serif;
}

.suggestions {
	background-color: #FFF;
	padding: 2px 6px;
	/*border: 1px solid #000;*/
	border-collapse:collapse;

}

.suggestions:hover {
	background-color: #69F;
	font-weight:bold;
}

#popups {
	position: absolute;
	left:12px;
	top:36px;
	width:300px;

}

#popups:hover {
	cursor:pointer;

}

#searchField.error {
	background-color: #FFC;
}



/*下面是万方视频搜索框的样式*/
.search_box	{
	position:relative;
	background:url(images/searchbox.gif) left top no-repeat;

}

.search_textfield,#searchField {
	border:0 none;
	height:18px;
	width:300px;
	margin:10px 70px 0px 13px;
	padding:0;
	/*background-color:#333;*/



}

.search_submit {
	background:none repeat scroll 0 0 transparent;
	border:0 none;
	color:#333;
	cursor:pointer;
	font:bold 12px arial;
	position:absolute;
	top:10px;
	left:350px;
}




--></style>


<script type="text/javascript" src="autofill.js"></script>

<!--
<form action="#">
	<span>输入：</span>
	<table>
		<tr><td><input type="text" id="searchField" autocomplete="off" /></td></tr>
		<tr><td><div id="popups"> </div></td></tr>
	</table>

</form>
-->

<!--同万方视频搜索框-->
<div class="search_box">
	<form method="#" name="form1" id="form1">
		<table>
			<tr><td><input type="text" class="search_textfield" id="searchField" autocomplete="off"></td></tr>
			<tr><td><div id="popups"> </div></td></tr>
		</table>
		<input type="submit" class="search_submit" value="视频搜索">
	</form>
</div>










<?php
//include ('./includes/footer.html');

?>

