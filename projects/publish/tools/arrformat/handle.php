<?php
//var_dump($_POST['arr']);die;

//$arr is an array
eval("\$arr=".$_POST['arr'].";");


echo parseArrayToHTML($arr);

function parseArrayToHTML($arr){
	if(!is_array($arr)){return false;}
	$html = "\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\n";
	foreach($arr as $k => $v)
	{
		$html .= "<tr>";

		if(!is_array($v)){
			$html .= '<td>'.$k.'</td>'.'<td>'.$v.'</td>';
		}else{
			$html .= '<td>'.$k.'</td>'.'<td>'.parseArrayToHTML($v).'</td>';
		}

		$html .= "</tr>\n";
	}
	$html .= "</table>\n";
	return $html;
}


