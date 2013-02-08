<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><?php echo isset($title)? $title : '';?></title>

	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />	

	<!-- 加载全部页面都需要的CSS、JS等 -->
	<link rel="stylesheet" href="<?php echo $this->config->item('assets_url');?>css/global.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<?php echo $this->config->item('assets_url');?>css/navbar.css" type="text/css" media="screen" />
	<link rel="stylesheet" href="<?php echo $this->config->item('assets_url');?>css/buttons.css" type="text/css" media="screen" />

	<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js"></script>
	<script type="text/javascript" src="<?php echo $this->config->item('assets_url');?>jqueryplugins/jquery.dropdownPlain.js"></script>	
	<!-- header 加载页面专属的CSS、JS等 -->
	<?php if (isset($header_asset) && is_array($header_asset)):?>
		<?php foreach ($header_asset as $type => $addrs):?>
			<?php if($type == 'css' || $type == 'jqueryplugins_css'):?>
				<?php foreach ($addrs as $addr):?>
					<link rel="stylesheet" href="<?php echo $addr;?>" type="text/css" />
				<?php endforeach;?>
			<?php elseif($type == 'js' || $type == 'jqueryplugins_js'):?>
				<?php foreach ($addrs as $addr):?>
					<script type="text/javascript" src="<?php echo $addr;?>"></script>
				<?php endforeach;?>
			<?php endif;?>
		<?php endforeach;?>
	<?php endif;?>
	
</head>

<body>


<div id="wrapper">
	<div id="nav">
		<div id="logo">
			<h1>JM PROJECT</h1>
			<p>This site is for ..........</p>
		</div>
		<div id="menu">
		
			<ul>
                <li class="drop"><a href="#">档案</a>
                    <ul class="menu">
                        <li><a href="#">词汇表</a></li>
                        <li class="drop"><a href="#">文章</a>
                            <ul>
                                <li><a href="#">见证</a></li>
                                <li><a href="#">新闻</a></li>
                            </ul>
                        </li>
                    </ul>
                </li>
               	<li class="drop"><a href="#">专题</a>
                    <ul class="menu">
                        <li><a href="#">情报地图</a></li>
                        <li><a href="#">图表信息</a></li>
                    </ul>
                </li>
				<li><a href="#">发表文章</a></li>
		        <li><a href="#">提供情报</a></li>
				<li><a href="#">志愿翻译</a></li>
        		<!-- <li><a href="#">捐款支持</a></li> -->
                <li><a href="#">信仰声明</a></li>
        		<li><a href="#">关于我们</a></li>
            </ul>
		</div><!-- /#menu -->
	</div><!-- /#nav --><div class="clear"></div>


	<div id="container">

