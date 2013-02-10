<?php
	global $cult_folder; //cult folder name , eg. c_ubf
	global $id;			 //page id
	global $cultId; 	 //page id belongs to what cult id
	
	//make audio-name according to the id
	$audioFileName = $cultId.'_'.$id.'.mp3';
	$audioFullUrl = "http://".$_SERVER['HTTP_HOST'].'/'.PROJECT.'/audio/'.$audioFileName;
	$swfFile = "http://".$_SERVER['HTTP_HOST'].'/'.PROJECT.'/audio-player/player.swf';
?>
<div class="audio-player">
	<object type="application/x-shockwave-flash" data="<?php echo $swfFile;?>" id="audioplayer1" height="24" width="290">
		<param name="movie" value="<?php echo $swfFile;?>">
		<param name="FlashVars" value="playerID=audioplayer1&bg=0x999999&leftbg=0x000000&lefticon=0xffffff&rightbg=0xffffff&rightbghover=0xcc0000&righticon=0x000000&righticonhover=0xcccccc&text=0xcc0000&slider=0xcc0000&track=0xcccccc&border=0xcc0000&loader=0xffcccc&loop=no&autostart=no&&soundFile=<?php echo $audioFullUrl;?>">
		<param name="quality" value="high">
		<param name="menu" value="false">
		<param name="wmode" value="transparent">
	</object>
</div>