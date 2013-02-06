<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title></title>
	
	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.4/jquery.js"></script> 
</head>

<body>
<div id="wrapper">
<div id="header">
	<h3>
		<a href="<?=$this->config->item('base_url')?>index.php/schdl/index"><?=$this->lang->line('schedule_header_title')?></a>
	</h3>&nbsp;
	<div id="prevNext">
		&nbsp;[
		<a href="<?=$this->config->item('base_url')?>index.php/schdl/index/prev/true" id="prevLink">
			<?=$this->lang->line('schedule_nav_prev')?></a>
		]
		&nbsp;
		[
		<a href="<?=$this->config->item('base_url')?>index.php/schdl/index/next/true" id="nextLink">
			<?=$this->lang->line('schedule_nav_next')?></a>
		]
		<span id="addspan" >&nbsp;<!-- style="display: none;" -->
		[
		<a href="javascript:void(0)" id="add">
			<?=$this->lang->line('schedule_nav_add')?></a>
		] </span>
		<!--<?php /* &nbsp;
		<span id="editspan">[
		<a href="javascript:void(0)" id="edit">
			<?=$this->lang->line('schedule_nav_edit')?></a>
		]</span>*/?> -->
		<!--<?php /* &nbsp;
		[
		<a href="javascript:void(0)" id="delete">
			<?=$this->lang->line('schedule_nav_delete')?></a>
		] */?>-->
		&nbsp;
		<span>
		[
		<a href="javascript:void(0)" id="addstaff">
			<?=$this->lang->line('schedule_nav_add_person')?></a>
		]</span>
		&nbsp;
		[
		<a href="javascript:void(0)" id="delstaff">
			<?=$this->lang->line('schedule_nav_del_person')?></a>
		]
		&nbsp;
		<span id="copyspan">[
		<a href="javascript:void(0)" id="copy">
			<?=$this->lang->line('schedule_nav_copy')?></a>
		]
		&nbsp;</span><span id="pastespan">
		[
		<a href="javascript:void(0)" id="paste">
			<?=$this->lang->line('schedule_nav_paste')?></a>
		]
		&nbsp;</span>
	<div id="languageSwitch">
	[<a href="<?=$this->config->item('base_url')?>index.php/schdl/switchlang/lang/chinese_simplified" id="">简体中文</a>]
	[<a href="<?=$this->config->item('base_url')?>index.php/schdl/switchlang/lang/japanese" id="">日本語</a>]
	[<a href="<?=$this->config->item('base_url')?>index.php/schdl/switchlang/lang/english">English</a>]
	</div>
	</div><!-- end of #prevNext -->

	<br /><br />
</div><!-- end of #header -->




