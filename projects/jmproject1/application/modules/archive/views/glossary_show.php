<?php
	$data['header_asset'] = array(
		'css' => array(
			$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'glossary_show', 'css')
		),
		'js' => array(
			$this->asset->add_asset(basename(dirname(dirname(__FILE__))), 'glossary_show', 'js'),
		),
		'jqueryplugins_js' => array(
			$this->config->item('base_url') . 'assets/jqueryplugins/jquery.flip.min.js'
		)
	);

	$this->load->view('wholesite/header', $data);
?>
<dl id="glossary_list">
	<?php foreach ($glossary as $item):?>
		<dt class="glossary_name">
			<a name="<?php echo $item->id;?>"></a>
			<span class="entry_english"><?php echo $item->glossary_name;?></span>
			<span class="entry_chinese"><?php echo $item->glossary_name_translated;?></span>
			<span class="translator"><?php echo $item->user_displayname;?></span>
		</dt>
		<dd class="glossary_intro"><?php echo $item->glossary_intro;?></dd>
	<?php endforeach;?>
</dl><!-- /#glossary_list -->



<?php

	$this->load->view('wholesite/footer');
?>


