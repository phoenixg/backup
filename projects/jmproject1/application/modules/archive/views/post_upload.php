<?php
	$data['header_asset'] = array(
		'css' => array(
			$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'post_upload', 'css')
		),
		'js' => array(
			//'http://'
		),
		'jqueryplugins_css' => array(
			$this->config->item('base_url') . 'assets/jqueryplugins/valumsfileuploader/fileuploader.css'
		),
		'jqueryplugins_js' => array(
			$this->config->item('base_url') . 'assets/jqueryplugins/valumsfileuploader/fileuploader.js'
		)
	);
	$this->load->view('wholesite/header', $data);
?>


<div id="file-uploader-demo1">		
	<noscript>			
		<p>Please enable JavaScript to use file uploader.</p>
	</noscript>         
</div>
    
<script>        
	function createUploader(){            
		var uploader = new qq.FileUploader({
			element: document.getElementById('file-uploader-demo1'),
			action: '<?php echo $this->config->item('base_url') . 'sandbox/valumsfileuploader/server/php.php';?>',
			debug: true
		});           
	}
        
	window.onload = createUploader;     
</script>  





<!-- 不需要自己写wysiwyg编辑器了？！
<div id="format">
	<span><a href="javascript:void(0)" class="tag" id="format-strong">加粗</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-italic">斜体</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-underline">下划线</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-delete">删除线</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-list">项目列表</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-table">表格</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-title">标题</a></span>
	<span><a href="javascript:void(0)" class="tag" id="format-clearformat">清除格式</a></span>
	<a href="javascript:void(0)" id="apply">apply</a>&nbsp;
</div>

<textarea name="upload" id="upload" rows="10" cols="10">
	post something here ...
</textarea>

<p id="contain"></p>
-->


<?php
	$data['footer_asset'] = array(
		'js' => array(
			//$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'post_upload', 'js'),
			//$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'post_upload_2', 'js')
		)
	);
	$this->load->view('wholesite/footer', $data);
?>

