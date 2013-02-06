<?php $this->load->view('includes/v_header');?>

<script type="text/javascript" src="<?=$this->config->item('public_url')?>js/schedule.js"></script>
<link rel="stylesheet" href="<?=$this->config->item('public_url')?>css/global.css" type="text/css" media="screen" />

<div id="container">
<div id="result_info"></div>
<?php //var_dump($date_array);echo '<pre>';var_dump($allMemberName);echo '</pre>';die;?>

<div id="addForm">
<input type="text" name="start_time_h" id="start_time_h" value="" size="2" maxlength="2" />HH&nbsp;:&nbsp;
<input type="text" name="start_time_m" id="start_time_m" value="" size="2" maxlength="2" />MM&nbsp;-&nbsp;
<input type="text" name="end_time_h" id="end_time_h" value="" size="2" maxlength="2" />HH&nbsp;:&nbsp;
<input type="text" name="end_time_m" id="end_time_m" value="" size="2" maxlength="2" />MM
<input type="text" name="detail" id="detail" value="" size="50" maxlength="50" />
<a id="submit" href="javascript:void(0)"><?=$this->lang->line('schedule_add_submit')?></a>
</div>

<div id="edForm"></div>


<div id="scheduleDiv">

	<table id="scheduleTable">
	<thead>
		<tr id="date">
			<td>&nbsp;</td>
			<?php 
			for($i=0;$i<$date_len;$i++){
			?>
			<td>
				<?php 
					switch (date('D',strtotime('+'.$i.'days',strtotime($date_start))))
					{
						case 'Sun':
							$d = $this->lang->line('schedule_week_sun');		
							$stl = 'color:#eee;background-color:green;';//stands for style	
							break;
						case 'Mon':
							$d = $this->lang->line('schedule_week_mon');
							$stl = '';
							break;
						case 'Tue':
							$d = $this->lang->line('schedule_week_tue');
							$stl = '';
							break;
						case 'Wed':
							$d = $this->lang->line('schedule_week_wed');
							$stl = '';
							break;
						case 'Thu':
							$d = $this->lang->line('schedule_week_thu');
							$stl = '';
							break;
						case 'Fri':
							$d = $this->lang->line('schedule_week_fri');
							$stl = '';
							break;
						case 'Sat':
							$d = $this->lang->line('schedule_week_sat');
							$stl = 'color:#eee;background-color:green;';
							break;
						default:
							$d = "";
							$stl = '';
					}
				?>
				<div class="week" style="<?=$stl?>">
				<strong id="<?php echo date('Y-m-d',strtotime('+'.$i.'days',strtotime($date_start)));?>">
					[&nbsp;<?=$d?>&nbsp;]
					<br />
					<?php echo date('m-d',strtotime('+'.$i.'days',strtotime($date_start)));?>
				</strong></div></td>
			<?php 
			}?>
		</tr>
	</thead>
	<tbody>
	
		<?php $i=0;?>
		<?php foreach ($events as $name => $event_arr):?>
		<tr>
			<td><strong><?=$name?></strong></td>
			<?php $j=0;?>
			<?php foreach ($event_arr as $event):?>
			<td id="<?=$i.'-'.$j?>">
				<!-- event sub block -->
				<?php if (!$event['event_id']): //no events?>
				<?php elseif(count($event['event_id']) == 1)://only one event?>
					<table class="subTable"><!-- du stands for duration of time, de stands for detail -->
					<tr class="ev_0_du"><td><?=date('H:i',strtotime($event['start_time']))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time']))?></td></tr>
					<tr class="ev_0_de"><td colspan="3" title="<?=$event['detail']?>"><?php if ($event['detail']!='-'){if(strlen($event['detail'])<=15){echo $event['detail'];}else{echo mb_substr($event['detail'], 0,5,'utf-8').'...';}}else{echo $event['detail'];}?></td></tr>
					<tr class="nomoreEvents" style="visibility:hidden;"><td colspan="3"><span class="hideId"><?=$event['event_id']?></span><span class="hasmore_not">&nbsp;</span></td></tr>
					</table>
				<?php else://multi events?>				
					<table class="subTable">
					<tr class="ev_0_du"><td><?=date('H:i',strtotime($event['start_time'][0]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][0]))?></td></tr>
					<tr class="ev_0_de"><td colspan="3" title="<?=$event['detail'][0]?>"><?php if ($event['detail'][0]!='-'){if (strlen($event['detail'][0])<=15){echo $event['detail'][0];}else{echo mb_substr($event['detail'][0], 0,5,'utf-8').'...';}}else{echo $event['detail'][0];}?></td></tr>
					<?php if(!empty($event['event_id'][1])):?>
					<tr class="ev_1_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][1]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][1]))?></td></tr>
					<tr class="ev_1_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][1]?>"><?=$event['detail'][1]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][2])):?>
					<tr class="ev_2_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][2]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][2]))?></td></tr>
					<tr class="ev_2_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][2]?>"><?=$event['detail'][2]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][3])):?>
					<tr class="ev_3_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][3]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][3]))?></td></tr>
					<tr class="ev_3_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][3]?>"><?=$event['detail'][3]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][4])):?>
					<tr class="ev_4_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][4]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][4]))?></td></tr>
					<tr class="ev_4_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][4]?>"><?=$event['detail'][4]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][5])):?>
					<tr class="ev_5_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][5]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][5]))?></td></tr>
					<tr class="ev_5_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][5]?>"><?=$event['detail'][5]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][6])):?>
					<tr class="ev_6_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][6]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][6]))?></td></tr>
					<tr class="ev_6_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][6]?>"><?=$event['detail'][6]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][7])):?>
					<tr class="ev_7_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][7]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][7]))?></td></tr>
					<tr class="ev_7_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][7]?>"><?=$event['detail'][7]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][8])):?>
					<tr class="ev_8_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][8]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][8]))?></td></tr>
					<tr class="ev_8_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][8]?>"><?=$event['detail'][8]?></td></tr>
					<?php endif;?>
					<?php if(!empty($event['event_id'][9])):?>
					<tr class="ev_9_du" style="display: none;"><td><?=date('H:i',strtotime($event['start_time'][9]))?></td><td>-</td><td><?=date('H:i',strtotime($event['end_time'][9]))?></td></tr>
					<tr class="ev_9_de" style="display: none;"><td colspan="3" title="<?=$event['detail'][9]?>"><?=$event['detail'][9]?></td></tr>
					<?php endif;?>

					
					<tr class="moreEvents"><td colspan="3"><span class="hideId">
					<?=$event['event_id'][0]?>
					<?php if(!empty($event['event_id'][1])):?>-<?=$event['event_id'][1]?><?php endif;?>
					<?php if(!empty($event['event_id'][2])):?>-<?=$event['event_id'][2]?><?php endif;?>
					<?php if(!empty($event['event_id'][3])):?>-<?=$event['event_id'][3]?><?php endif;?>
					<?php if(!empty($event['event_id'][4])):?>-<?=$event['event_id'][4]?><?php endif;?>
					<?php if(!empty($event['event_id'][5])):?>-<?=$event['event_id'][5]?><?php endif;?>
					<?php if(!empty($event['event_id'][6])):?>-<?=$event['event_id'][6]?><?php endif;?>
					<?php if(!empty($event['event_id'][7])):?>-<?=$event['event_id'][7]?><?php endif;?>
					<?php if(!empty($event['event_id'][8])):?>-<?=$event['event_id'][8]?><?php endif;?>
					<?php if(!empty($event['event_id'][9])):?>-<?=$event['event_id'][9]?><?php endif;?>

					</span>
						<span class="hasmore">+</span></td></tr>
					</table>
				<?php endif;?>
			</td>
			<?php $j++;?>
			<?php endforeach;?>
		</tr>
		<?php $i++;?>
		<?php endforeach;?>
	</tbody>
	</table>

<div id="eventInfo_all">
	<h2><?=$this->lang->line('schedule_eventlist_title')?></h2>
	<div id="eventInfo_list"></div>
</div><!-- end of #eventInfo_all -->





</div><!-- end of #scheduleDiv -->


</div><!-- end of #container -->

<?php $this->load->view('includes/v_footer');?>
