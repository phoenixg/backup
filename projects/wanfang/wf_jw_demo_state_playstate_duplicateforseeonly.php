<?php
$page_title = 'JW Player演示';
include ('./includes/header.html');
?>


<script type='text/javascript' src='swfobject.js'></script>
<style type="text/css"><!--
table#inserttr {
	color:#DDDDDD;
	z-index:2;
	position:relative;
	top:-270px;
	text-align:center;
	cursor:default;
}
div#test1 {
	z-index:1;
}
--></style>
<script type="text/javascript">
var currentState = "NONE";
var player = null;
function playerReady(thePlayer) {
    player = window.document[thePlayer.id];
    addListeners();
}
function addListeners() {
if (player) {
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
//
}
function stateListener(obj) {
currentState = obj.newstate;
var tmp = document.getElementById("statId");
if (tmp) { tmp.innerHTML = "播放状态： " + currentState; }
var flag = true;
var row = document.getElementById("row");
var table = document.getElementById("inserttr");
if ((currentState == "PAUSED" || currentState == "BUFFERING") && flag == true){
var nowRow = table.insertRow(0);
var td = document.createElement("td");
td.innerHTML="<span><b>如果播放不流畅，请等待片刻再播！</b></span>";
nowRow.appendChild(td);
flag = false;
}else{
table.deleteRow(0);
}
}
</script>
<div id='test1' name='test1'>......</div>
<script type='text/javascript'>
var s1 = new SWFObject('player.swf','player','400','300','9');
s1.addParam('allowfullscreen','true');
s1.addParam('allowscriptaccess','always');
s1.addParam('wmode','opaque');
s1.addParam('bgcolor','#AAAAAA');
s1.addParam('flashvars','autostart=true&file=video.flv');
s1.write('test1');
</script>
<div id="all">
<div id="test1"><!--small--></div>
<div id="statId"><!--big--></div>
<table width="400">
<tr>
<td>如果无法播放，请点此下载插件！如是WIN7操作系统，请手动启动插件！更多问题请查看<a href="#">帮助</a>！</td>
</tr>
<tr>
<td>内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介</td>
</tr>
</table>
<table id="inserttr" width="400">
<tr id="row">
<td></td>
</tr>
</table>
</div>
