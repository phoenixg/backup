<?php
	$data['header_asset'] = array(
		'css' => array(
			$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'post_show', 'css')
		),
		'js' => array(
			//'http://'
		),
		'jqueryplugins_css' => array(
			//$this->config->item('base_url') . 'assets/jqueryplugins/valumsfileuploader/fileuploader.css'
		),
		'jqueryplugins_js' => array(
			//$this->config->item('base_url') . 'assets/jqueryplugins/valumsfileuploader/fileuploader.js'
		)
	);
	$this->load->view('wholesite/header', $data);
?>



<div id="filter">
	<div class="">文章类型：<a href="#">新闻</a>  <a href="#">见证</a>  <a href="#">信件</a></div>
	<div class="">所属教派：<a href="#">UBF</a>  <a href="#">Davidian</a>  <a href="#">JMS</a></div>
	<div class="">查看语言：<a href="#">中</a>  <a>英</a></div>
</div>

<div id="result">


</div>





<?php
	$data['footer_asset'] = array(
		'js' => array(
			//$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'post_upload', 'js'),
			//$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'post_upload_2', 'js')
		)
	);
	$this->load->view('wholesite/footer', $data);
?>

