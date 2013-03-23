<?php
$page_title = 'JW Player演示';
include ('./includes/header.html');
?>

<!--插入JW需要的js/css文件-->
<script type='text/javascript' src='swfobject.js'></script>

<!--<script type='text/javascript' src='jwbox/jquery.js'></script>-->
<!--<script type='text/javascript' src='jwbox/jquery.jwbox.js'></script>-->
<!--<link rel='stylesheet' type='text/css' href='jwbox/jwbox.css' />-->

<script type="text/javascript">
var currentPosition = 0;
var currentVolume = 0;
var currentMute = false;
var currentState = "NONE";

//初始化flashPlayer
var flashPlayer = null;
function playerReady(obj) {
	flashPlayer = document.getElementById(obj.id);
	addListeners();
}

//定义播放时间等监听函数
function addListeners() {
	if (flashPlayer) {
		//flashPlayer.addModelListener("TIME", "positionListener");
        addAllControllerlListeners();
        addAllModelListeners();
        addAllViewListeners();
	} else {
		setTimeout("addListeners()",100);
	}
}

function addAllControllerlListeners() {
    player.addControllerListener("ITEM", "doNothing"); //{index,id,client,version}.
    player.addControllerListener("MUTE", " muteListener"); //{state,id,client,version}.
    player.addControllerListener("PLAY", "doNothing"); //{state,id,client,version}.
    player.addControllerListener("PLAYLIST", "doNothing"); //{playlist,id,client,version}.
    player.addControllerListener("QUALITY", "doNothing"); //{state,id,client,version}.
    player.addControllerListener("RESIZE", "doNothing"); //{fullscreen,height,width,id,client,version}.
    player.addControllerListener("SEEK", "positionListener"); //{position,id,client,version}.
    player.addControllerListener("STOP", "doNothing"); //{id,client,version}.
    player.addControllerListener("VOLUME", "volumeListener"); //{percentage,id,client,version}.
}

function addAllModelListeners() {
    player.addModelListener("BUFFER", "doNothing"); //{percentage,id,client,version}.
    player.addModelListener("ERROR", "doNothing"); //{message,id,client,version}.
    player.addModelListener("LOADED", "doNothing"); //{loaded,total,offset,id,client,version}.
    player.addModelListener("META", "doNothing"); //{variable1,variable2,variable3,...,id,client,version}.
    player.addModelListener("STATE", "stateListener");//{newstate,oldstate,id,client,version}.
    player.addModelListener("TIME", "doNothing"); //{position,duration,id,client,version}.
}

function addAllViewListeners() {
    player.addViewListener("FULLSCREEN", "doNothing"); //{state,id,client,version}.
    player.addViewListener("LINK", "doNothing"); //{index,id,client,version}.
    player.addViewListener("LOAD", "doNothing"); //{object,id,client,version}.
    player.addViewListener("MUTE", "doNothing"); //{state,id,client,version}.
    player.addViewListener("NEXT", "doNothing"); //{id,client,version}.
    player.addViewListener("ITEM", "doNothing"); //{index,id,client,version}.
    player.addViewListener("PLAY", "doNothing"); //{state,id,client,version}.
    player.addViewListener("PREV", "doNothing"); //{id,client,version}.
    player.addViewListener("QUALITY", "doNothing"); //{state,id,client,version}.
    player.addViewListener("RESIZE", "doNothing"); //{height,width,id,client,version}.
    player.addViewListener("SEEK", "doNothing"); //{position,id,client,version}.
    player.addViewListener("STOP", "doNothing"); //{id,client,version}.
    player.addViewListener("VOLUME", "doNothing"); //{position,id,client,version}.e.
}

function doNothing(obj) {
	//nothing
}

function positionListener(obj) {
	currentPosition = obj.position;
	var tmp = document.getElementById("posId");
	//var row = document.getElementById("row");

	if (tmp) {
		tmp.innerHTML = "位置（秒）： " + currentPosition;
	}
}

function volumeListener(obj) {
    currentVolume = obj.percentage;
    var tmp = document.getElementById("volId");
    if (tmp) { tmp.innerHTML = "volume: " + currentVolume; }
}

function muteListener(obj) {
    currentMute = obj.state;
    var tmp = document.getElementById("mutId");
    if (tmp) { tmp.innerHTML = "mute: " + currentMute; }
}

function stateListener(obj) {
    currentState = obj.newstate;
    var tmp = document.getElementById("statId");
    if (tmp) { tmp.innerHTML = "state: " + currentState; }
}

//定义播放器停止的传递命令
function pauseflashPlayer() {
	flashPlayer.sendEvent('STOP', 'true');
}

//定义播发器播放的传递命令
function playflashPlayer() {
	flashPlayer.sendEvent('PLAY', 'true');
}

</script>


<!--播放器代码 div容器要写在播放器js代码之前-->
<div id='test1' name='test1'>播放器会在此元素里面。</div>
<script type='text/javascript'>
	var s1 = new SWFObject('player.swf','player','400','300','9');
	s1.addParam('allowfullscreen','true');
	s1.addParam('allowscriptaccess','always');
	s1.addParam('wmode','opaque');
	s1.addParam('bgcolor','#AAAAAA');
	s1.addParam('flashvars','autostart=true&file=video.flv');
	s1.write('test1');
</script>


<table id="inserttr">
 <tr id="row">
  <td></td>
 </tr>
</table>

<div id="statId"></div>
<div id="mutId"></div>
<div id="volId"></div>
<div id="posId"></div>


<ul>
	<li onclick="pauseflashPlayer();">点此停止播放</li>
	<li onclick="playflashPlayer();">点此开始播放</li>
</ul>

<script type="text/javascript">


</script>




<!--页面加载时初始化点击插入一行的代码-->
<script  type='text/javascript'>

window.onload=function(){
	var flag = true;
	var row = document.getElementById("row");
	var table = document.getElementById("inserttr");

	//我加的
	var div = document.getElementById("test1");

	//原来的
	row.onclick=function(){
		if(flag){
			var nowRow = table.insertRow(0);
			var td = document.createElement("td");
			td.innerHTML="wwwwwwwwwwwwwwwwww";
			nowRow.appendChild(td);
			flag = false;

		}else{
			table.deleteRow(0);
			flag = true;
		}
	}

	//我加的
	div.onclick=function(){
		if(flag){
			var nowRow = table.insertRow(0);
			var td = document.createElement("td");
			td.innerHTML="<b>如果播放不流畅，请等待视频缓冲一段时间后再播放。</b>";
			nowRow.appendChild(td);
			flag = false;

		}else{
			table.deleteRow(0);
			flag = true;
		}
	}


}

</script>



<?php
include ('./includes/footer.html');

?>

