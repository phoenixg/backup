<?php $this->load->view('includes/v_header');?>

<script type="text/css" src="<?=$this->config->item('public_url')?>css/global.css"></script>

<div id="container">

<table>
<thead>
	<tr>
		<td>&nbsp;</td>
		<?php 
		for($i=0;$i<$date_len;$i++){
		?>
		<td><?php echo date('Y-m-d',strtotime('+'.$i.'days',strtotime($date_start)));?></td>
		<?php 
		}?>
	</tr>
</thead>
<tbody>

	<?php foreach ($person_list as $person):?>
	<tr>
		<td><strong><?=$person?></strong></td>
		<?php foreach ($date_array as $date):?>
		<td>
			<ul>
			<?php
			foreach($issue[$person][$date] as $item):?>
			<li><?=$item['issue_content']?></li>
			<?php endforeach;?>
			</ul>
		</td>
		<?php endforeach;?>
	</tr>
	<?php endforeach;?>
</tbody>
</table>








</div>
<?php $this->load->view('includes/v_footer');?>
