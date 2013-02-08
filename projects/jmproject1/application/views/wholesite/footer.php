	</div><!-- /#container -->

	<div id="footer">Copyright 2012 · Monster's Lab · All Rights Reserved · INTERNAL CODE : P00003 - JMPROJECT1</div>

</div><!-- /#wrapper -->


<!-- footer 加载页面专属的CSS、JS等 -->
<?php if (isset($footer_asset) && is_array($footer_asset)):?>
	<?php foreach ($footer_asset as $type => $addrs):?>
		<?php if($type == 'css'):?>
			<?php foreach ($addrs as $addr):?>
				<link rel="stylesheet" href="<?php echo $addr;?>" type="text/css">
			<?php endforeach;?>
		<?php elseif($type == 'js'):?>
			<?php foreach ($addrs as $addr):?>
				<script type="text/javascript" src="<?php echo $addr;?>"></script>
			<?php endforeach;?>
		<?php endif; ?>
	<?php endforeach;?>
<?php endif;?>

</body>
</html>