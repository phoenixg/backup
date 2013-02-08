<?php
	$data['header_asset'] = array(
		'css' => array(
			$this->asset->add_asset('admin', 'login', 'css')
		)
	);
	$this->load->view('wholesite/header', $data);
?>

<?php $this->load->helper('url');?>
<form action="<?php echo site_url();?>/admin/login/handle" method="post" id="admin_login">
	<p><label for="email">邮箱</label><br />  
	<input type="text" id="email" name="email" tabindex="1" size="20" /></p>    
      
	<p><label for="email">密码</label><br />  
	<input type="password" id="password" name="password" tabindex="2" size="20"/></p>    
      
	<div class="buttons">
	    <button type="submit" name="submit" value="登录">登录</button>
	</div>
</form>


<?php $this->load->view('wholesite/footer');?>
