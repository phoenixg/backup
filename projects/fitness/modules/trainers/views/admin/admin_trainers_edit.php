<h2><?php echo $title;?></h2>

<?php
echo form_open('trainers/admin/edit');
echo "\n<p><label for='trainer_name'>Trainer Name</label><br/>\n";
$data = array('name'=>'trainer_name','id'=>'trainer_name','size'=>25, 'value'=>$trainer['trainer_name']);
echo form_input($data) ."</p>";

echo "<p><label for='trainer_image'>Trainer Image</label><br/>\n";
$data = array('name'=>'trainer_image','id'=>'trainer_image','size'=>50, 'value'=>$trainer['trainer_image']);
echo form_input($data) ."</p>\n";

echo "<p><label for='video_url'>Video URL</label><br/>\n";
$data = array('name'=>'video_url','id'=>'video_url','size'=>50, 'value'=>$trainer['video_url']);
echo form_input($data) ."</p>\n";

echo "<p><label for='desc'>Description</label><br/>\n";
$data = array('name'=>'desc','id'=>'desc','cols'=>50, 'rows'=>'6', 'value'=>$trainer['desc']);
echo form_textarea($data) ."</p>\n";



echo form_hidden('id',$trainer['id']);
echo form_submit('submit','Update Trainer');
echo form_close();


?>