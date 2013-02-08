<?php

/* 
 * Class: MySQLDatabaseConnection
 * Author: Matthew PG Elliston
 * Email: matt@e-titans.com
 * Last Modified: 18/06/2008
 * Create: 16/06/2008 
 * Comment: General DB functionality including connection and querying
 */

class MySQLDatabaseConnection{
	var $database;
	var $username;
	var $password;
	var $host;

	
	var $connection; //Stores the result of mysql_connect
	var $result; //Result from the query
	
	function MySQLDatabaseConnection($database, $username, $password, $host){
		$this->database = $database;
		$this->username = $username;
		$this->password = $password;
		$this->host = $host;
	}
	
	function connect(){
		$this->connection = mysql_connect($this->host,$this->username, $this->password);
		if(!$this->connection)return false;  //Check to make sure that it connected
		if(mysql_select_db($this->database, $this->connection)){
			mysql_query('SET NAMES utf8');
			return true; //Try connecting to the database If so returns true
		}
		mysql_close($this->connection);
		return false;
	}
	
	function query($query){
        $this->result = mysql_query($query, $this->connection);
		if (!$this->result) {
			$message  = 'Invalid query: ' . mysql_error() . "\n";
			$message .= 'Whole query: ' . $query;
			die($message);
	        }		
        	else {
			return $this->result;
        	}
	}
	
    function getError(){
		return mysql_error($this->connection);
	}
 
	function close(){
		mysql_close($this->connection);
	}
}
?>
