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

var player = null;
function playerReady(thePlayer) {
	player = window.document[thePlayer.id];
	addListeners();
}


function addListeners() {
	if (player) {
		player.addModelListener("TIME", "positionListener");
		player.addViewListener("VOLUME", "volumeListener");
	} else {
		setTimeout("addListeners()",100);
	}
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



<div id="volId"></div>
<div id="posId"></div>

</body>
</html>



















<?php
include ('./includes/footer.html');

?>

