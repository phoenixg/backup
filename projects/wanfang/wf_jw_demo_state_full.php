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


function positionListener(obj) {
    currentPosition = obj.position;
    var tmp = document.getElementById("posId");
    if (tmp) { tmp.innerHTML = "position: " + currentPosition; }
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


<div id="test1"></div>


<div id="statId"></div>
<div id="mutId"></div>
<div id="volId"></div>
<div id="posId"></div>






<?php
include ('./includes/footer.html');

?>

