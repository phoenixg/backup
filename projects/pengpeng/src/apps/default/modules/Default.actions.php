<?php
class DefaultActions extends nbAction
{
  public function indexAction()
  {
    $this->aaa = 1;//��ֵ
	$result = $this->service->Select('*','bughelper_bugs',array(1=>1));//����sql
	print_r($result);
  }
}

?>