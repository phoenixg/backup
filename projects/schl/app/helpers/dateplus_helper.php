<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

//yyyy-mm-dd 两个日期想减，得出相差的天数
if ( ! function_exists('getChaBetweenTwoDate'))
{
	function getChaBetweenTwoDate($date1,$date2){
	 
	    $Date_List_a1=explode("-",$date1);
	    $Date_List_a2=explode("-",$date2);
	 
	    $d1=mktime(0,0,0,$Date_List_a1[1],$Date_List_a1[2],$Date_List_a1[0]);
	 
	    $d2=mktime(0,0,0,$Date_List_a2[1],$Date_List_a2[2],$Date_List_a2[0]);
	 
	    $Days=round(($d1-$d2)/3600/24);
	 
	    return $Days;
	}
}
