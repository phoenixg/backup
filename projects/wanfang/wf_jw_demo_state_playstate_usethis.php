<?php
$page_title = 'JW Player演示';
include ('./includes/header.html');
?>

<!--插入JW需要的js/css文件-->
<script type='text/javascript' src='swfobject.js'></script>

<!--<script type='text/javascript' src='jwbox/jquery.js'></script>-->
<!--<script type='text/javascript' src='jwbox/jquery.jwbox.js'></script>-->
<!--<link rel='stylesheet' type='text/css' href='jwbox/jwbox.css' />-->

<style type="text/css"><!--




div#info_a {
	color:#dddddd;
	z-index:2;
	position:relative;
	top:-50px;
	left:70px;
	cursor:pointer;
	font-size:0.9em;
	visibility:hidden;


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
//nothing
}

function stateListener(obj) {
    currentState = obj.newstate;
    var tmp = document.getElementById("statId");
    if (tmp) { tmp.innerHTML = "播放状态： " + currentState; }

	var div_a = document.getElementById("info_a");

    //下面是我加的
    if (currentState == "PAUSED" || currentState == "BUFFERING"){

		div_a.style.visibility = "visible";

    }else{

		div_a.style.visibility = "hidden";

    }

}//end of stateListener function


</script>



<!--播放器代码 div容器要写在播放器js代码之前-->
<div id="all">
	<div id='test1' name='test1'>播放器会在此元素里面。</div>
	<script type='text/javascript'>
		var s1 = new SWFObject('player_wf.swf','player','400','300','9');
		s1.addParam('allowfullscreen','true');
		s1.addParam('allowscriptaccess','always');
		s1.addParam('wmode','opaque');
		s1.addParam('bgcolor','#AAAAAA');
		//s1.addParam('flashvars','autostart=true&file=no_this_video.flv');
		s1.addParam('flashvars','autostart=true&file=seek_origin.flv');
		//s1.addParam('flashvars','autostart=true&file=seek_output.flv');
		//s1.addParam('flashvars','autostart=true&file=video.flv');
		s1.write('test1');
	</script>
	<div id="info_a">播放时卡？请等待缓冲一段时间后再播！</div>
</div>

<div id="statId"><!--播放状态在这个div里面--></div>

<table width="400">
 <tr>
  <td>如果无法播放，请点此下载插件！如是WIN7操作系统，请手动启动插件！更多问题请查看<a href="#">帮助</a>！</td>
 </tr>
 <tr>
  <td>内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介内容简介/内容简介/内容简介/内容简介/内容简介/内容简介/内容简介</td>
 </tr>
</table>








<?php
//include ('./includes/footer.html');

?>

