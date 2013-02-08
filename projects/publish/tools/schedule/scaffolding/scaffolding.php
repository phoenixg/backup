<?php
/* 
 * Class: Scaffolding
 * Author: Matthew PG Elliston
 * Email: matt@e-titans.com
 * Last Modified: 23/06/2008
 * Created: 20/06/2008 
 * Comment: General Scaffolding Class which handles all the CRUD for a DB Table
 * Based on the tutorial which gave me inspiration for the class at:
 * http://www.shadow-fox.net/site/tutorial/39-Creating-A-Scaffold-like-Class-in-PHP-or-An-Automatic-CMS-For-a-Table
 * By Ben Hirsch
 */
include('includes/db.php');
include('includes/upload.php');

session_start();

//The url will display page which refers to a table in the database
$table = $_GET['page'];
$table = 'schedule';
//Action what action should be displayed by the Scaffolding
$action = $_GET['action'];

new Scaffolding($table,"publish","root","nihaoma1234567","localhost",$action);



Class Scaffolding{
  var $table = null;
  var $db = null;
  var $action = null;
  var $errors = array();
  var $messages = array();
  var $imgFolder = "../images/uploads/";

  function Scaffolding($table, $database, $username, $password, $host, $action){    
    $this->db = new MySQLDatabaseConnection($database, $username, $password, $host);
    
    if(!$this->db->connect()){
      echo "<p>Unable to connect to database</p>";
    } 
    if(isset($action)){
      $this->action = mysql_real_escape_string($action);
    }
    else{
      $this->action = "list";
    }
    
    if(isset($table)){
    	$this->table = mysql_real_escape_string($table);
    }
    else{
    	$this->action = "no_table";
    }
    
    switch($this->action){
      default:
        $this->listtable();
      break;

      case "list":
        $this->listtable();
      break;

      case "new":
        $this->newrow();
      break;

      case "postnew":
        $this->postnew();
      break;

      case "edit":
        $this->editrow();
      break;

      case "postedit":
        $this->postedit();
      break;

      case "delete":
        $this->deleterow();
      break;
      
      case "no_table":
      	$this->drawHeader();
      	$this->drawFooter();	
      break;
    }
  }
  
  //Lists all the rows in a table
  function listtable(){
  	$this->drawHeader();
  	echo "<h1>".ucwords(str_replace("_", ' ', $this->table))."</h1>";
    echo "<br /><br /><a href='?action=new&page=$this->table'>New Entry</a>";
    if(isset($_SESSION['messages'])){
      echo "\n<p class=\"".$_SESSION['type']."\">Notice:</p>";
      echo "\n<ul>";
      foreach($_SESSION['messages'] as $msg){ 
        echo $msg;
      }
      echo "\n</ul>";
      unset($_SESSION['messages']);
      unset($_SESSION['type']);
    }
    $query = $this->db->query("SELECT * FROM ".$this->table);   
    echo "\n<table class=\"listTable\">";
    $i = 0;
    echo "\n\t<tr>";
    while($i < mysql_num_fields($query)){
      $column = mysql_fetch_field($query, $i);
      if($column->name != "id"){
        echo "\n\t\t<th>".ucwords(str_replace("_", ' ', $column->name))."</th>";
      }
      $i++;
    }
    echo "\n\t</tr>";
    $x = 0;
    while($result = mysql_fetch_array($query)){
      echo "\n\t<tr class='row$x'>";
      foreach($result as $column => $value){
        if(!is_int($column) && $column != "id"){
          if(substr($column,-3)== "_id"){
      		$table = substr($column,0,-3);
      	    $foreignQuery = $this->db->query("SELECT * FROM $table WHERE id = $value");
      	    while($row = mysql_fetch_array($foreignQuery)){
      	    	echo "\n\t\t<td>".$row['name']."</td>"; 
      	    }
      	  }
          else{
          	if(strlen($value) > 20){
          		echo "\n\t\t<td>".substr($value,0,30)."...</td>";	
          	}
          	else{
          		echo "\n\t\t<td>$value</td>";
          	}
          }
        }
      }
      ?>
      <?php echo "\n\t\t"; ?><td><a href="?page=<?php echo $this->table; ?>&action=edit&amp;id=<?php echo $result['id']; ?>">Edit</a></td>
      <?php echo "\n\t\t"; ?><td><a href="?page=<?php echo $this->table; ?>&action=delete&amp;id=<?php echo $result['id']; ?> onclick="return confirm('Are you sure you want to delete?');"">Delete</a></td>
      <?php
      echo "\n\t</tr>";
      $x = 1 - $x;
    }
    echo "\n</table>";
    echo "<a href='?action=new&page=$this->table'>New Entry</a>";
    $this->drawFooter();
  }

  //Shows the new row form
  function newrow(){  	
  	$this->drawHeader();
  	echo "<h1>".ucwords(str_replace("_", ' ', $this->table))." -> New Entry</h1>";
    echo "\n<br /><br /><a href='?action=list&page=$this->table' title='Back'>Back</a>";
    if(isset($_SESSION['errors'])){
      echo "<p class=\"".$_SESSION['type']."\">Unable to save due to the following:</p>";
      echo "<ul>";
      foreach($_SESSION['errors'] as $error){ 
        echo $error;
      }
      echo "</ul>";
      unset($_SESSION['errors']);
      unset($_SESSION['type']);
    }    
    $query = $this->db->query("SELECT * FROM ".$this->table." LIMIT 1");
    $i = 0; //Counter for all the rows
    $encType = $this->checkEnctype(); //Check the forms encType to see if image is going to be uploaded
    echo "\n<form action='?action=postnew&page=$this->table' method='POST' class='formNew' $encType>";
    while($i < mysql_num_fields($query)){
      $column = mysql_fetch_field($query);
      if($column->name != "id" && $column->name != "image_url"){
      	switch($column->type){   
          case "string":
          case "real":
          case "int":
          	if(substr($column->name,-3) == "_id"){
          	  $sqlQuery = "SELECT id,name FROM ".substr($column->name,0,-3);
      		  $foreignQuery = $this->db->query("$sqlQuery");
      		  echo "\n<label for='$column->name'>".ucfirst(substr($column->name,0,-3))."</label>";
      		  echo "\n<select name=\"".$column->name."\">";
      		  echo "\n\t<option value=\"\">Select</option>";
      		  while($row = mysql_fetch_array($foreignQuery)){
      			echo "\n\t<option value=\"".$row['id']."\">".$row['name']."</option>";
      		  }
      		  echo "\n</select><br />";	
          	}
          	elseif(substr($column->name,-3) == "_on"){
      		 echo "\n<label for='$column->name'>".ucwords($column->name)."</label>";
      		 echo "\n<select name=\"".$column->name."\">";
      		 echo "\n\t<option value=\"\">Please Select</option>";
      		 echo "\n\t<option value=\"1\">Yes</option>";
      		 echo "\n\t<option value=\"0\">No</option>";
      		 echo "\n</select><br />";
      		}
          	else{
              echo "\n<label for='$column->name'>".ucwords(str_replace("_", ' ', $column->name))."</label> <input type='text' name='$column->name' /><br />";
          	}
          break;  
                  
          case "blob":
            echo "\n<br /><label for='$column->name'>".ucwords(str_replace("_", ' ', $column->name))."</label> <textarea name='$column->name' cols=\"80\" rows=\"5\"></textarea><br />";
          break;
        
          case "datetime":
            echo "\n<label for='$column->name'>".ucfirst($column->name)."</label>";
            $this->drawDate($column->name, date("Y-m-j G:i:s"));
            $this->drawTime($column->name, date("Y-m-j G:i:s"));  
            echo "\n<br />";          
          break;
        }       
      }
      elseif($column->name == "image_url"){
      	echo "\n<br /><label for='$column->name'>".Image."</label><input name='$column->name' type='file' /> <br /><br />";
      }
      $i++;
    }
    echo "\n<br /><br /><input type='submit' value='Add Entry' />";
    echo "\n</form>";
    echo "\n<br /><br /><a href='?action=list&page=$this->table' title='Back'>Back</a>";
    $this->drawFooter();
  } 

  //Adds the new row to the database
  function postnew(){
    $query = $this->db->query("SELECT * FROM ".$this->table." LIMIT 1");
    $insert_query = "INSERT INTO ".$this->table." VALUES(";
    $i = 0;
    while($i < mysql_num_fields($query)){
      $column = mysql_fetch_field($query);
      if($column->name == "id"){
        $insert_query .= "'',";
      }
      elseif($column->type == "datetime"){
        $insert_query .= "'".$_POST[$column->name."_year"]."-".$_POST[$column->name."_month"]."-".$_POST[$column->name."_day"]." ".$_POST[$column->name."_hour"].":".$_POST[$column->name."_minute"].":00',";
      }
      elseif($column->name == "image_url"){
        $im = new ImageUpload();	//New instance of the image upload class
        //There is an image column check to see if an image needs uploading
        if($_FILES['image_url']['error'] != 4){
		  $im->tmpImage = $_FILES['image_url'];
 	      if ($im->uploadImage($im->tmpImage['name'], false)){
			$insert_query .= "'".$im->tmpImage['name']."',";
		  }
		  else{
			foreach($im->errors as $error){
			  echo $error.'<br />';
			}
		  }
		}
		else{
			//no image uploaded set the image to be "noimage.gif"
			$insert_query .= "'noimage.gif',";
		}
      }
      else{
        //Just a usual field eg varchar or text
        //Check to see if the field is required
        if($column->not_null == 1){
           if($_POST[$column->name] == ""){
			 $this->errors[] = "<li>$column->name can not be left blank.";
           }
        }
        $insert_query .= "'".mysql_real_escape_string($_POST[$column->name])."',";
      }      
      $i++;
    }
    //Check to see if there are any errors
    if(count($this->errors) < 1){
      //Remove the last comma
      $insert_query = substr($insert_query, 0, -1);
      $insert_query .= ")";
      echo $insert_query;
      mysql_query($insert_query) or die(mysql_error());
      $this->messages[] = "<li>Record Saved Successfully.</li>";
      $_SESSION['messages'] = $this->messages;
      $_SESSION['type'] = "success";
      header("Location:?action=list&page=$this->table");
    }
    else{
      $_SESSION['errors'] = $this->errors;
      $_SESSION['type'] = "failure";
      header("Location:?action=new&page=$this->table");
    }
  }

  //FUNCTION
  //Shows the Edit row Form
  function editrow(){
  	$this->drawHeader();
  	echo "<h1>".ucwords(str_replace("_", ' ', $this->table))." -> Edit Entry</h1>";
    echo "\n<br /><br /><a href='?page=$this->table&action=list' title='Back'>Back</a><br /><br />";
    if(isset($_SESSION['errors'])){
      echo "<p class=\"".$_SESSION['type']."\">Unable to save due to the following:</p>";
      echo "<ul>";
      foreach($_SESSION['errors'] as $error){ 
        echo $error;
      }
      echo "</ul>";
      unset($_SESSION['errors']);
      unset($_SESSION['session']);
    }   
    $encType = $this->checkEnctype(); //Check the forms encType to see if image is going to be uploaded
    $id = intval($_GET['id']);
    $fields = mysql_query("SELECT * FROM ".$this->table) or die(mysql_error());
    $select = mysql_query("SELECT * FROM ".$this->table." WHERE id = $id") or die(mysql_error());
    $row = mysql_fetch_row($select);
    $i = 0;
    echo "\n<form action='?page=$this->table&action=postedit&amp;id=".intval($_GET["id"])."' method='POST' $encType>";
    while($i < mysql_num_fields($fields)){
      $field = mysql_fetch_field($fields);
      if($field->name != "id" && $field->name != "image_url"){
        if($field->type == "datetime"){
          echo "\n<label for=\"$field->name\">".ucfirst($field->name).":</label>";
          $this->drawDate($field->name, $row[$i]);
          $this->drawTime($field->name, $row[$i]);
          echo "<br />";
        }
        elseif($field->blob == 1){
          echo "\n<br /><label for=\"$field->name\">".ucfirst($field->name).":</label> <textarea name='$field->name' cols=\"80\" rows=\"5\">".$row[$i]."</textarea><br />";
        }
     	elseif(substr($field->name,-3) == "_id"){
          	  $sqlQuery = "SELECT id,name FROM ".substr($field->name,0,-3);
      		  $foreignQuery = $this->db->query("$sqlQuery");
      		  echo "\n<label for='$field->name'>".ucfirst(substr($field->name,0,-3))."</label>";
      		  echo "\n<select name=\"".$field->name."\">";
      		  echo "\n\t<option value=\"\">Select</option>";
      		  while($data = mysql_fetch_array($foreignQuery)){
      			echo "\n\t<option value=\"".$data['id']."\"";
      			if($data['id'] == $row[$i]){ echo "selected=\"selected\""; }      			
      			echo ">".$data['name']."</option>";
      		  }
      		  echo "\n</select><br />";	
        }
        elseif(substr($field->name,-3) == "_on" && $field->type == "int"){
      		 echo "\n<br /><label for='$field->name'>".ucwords($field->name)."</label>";
      		 echo "\n<select name=\"".$field->name."\">";
      		 echo "\n\t<option value=\"\">Please Select</option>";
      		 echo "\n\t<option value=\"1\">Yes</option>";
      		 echo "\n\t<option value=\"0\">No</option>";
      		 echo "\n</select><br />";
      		}
        else {
          echo "\n<br /><label for=\"$field->name\">".ucfirst($field->name).":</label> <input type='text' name='$field->name' value='".$row[$i]."' /><br />";
        }
      }
      elseif($field->name == "image_url"){
      	echo "\n<br /><p><img src=\"{$this->imgFolder}".$row[$i]."\" alt=\"".$row[$i]."\" /></p>";
      	echo "\n<br /><label for='$field->name'> Image: </label><input name='$field->name' type='file' /> <br />";
      }
      $i++;
    }
    echo "\n<br /><br /><input type='submit' value='Save Changes' />";
    echo "\n</form>";
    echo "\n<br /><br /><a href='?page=$this->table&action=list' title='Back'>Back</a>";
    $this->drawFooter();
  }

  //Saves the edit form to the database
  function postedit(){
    $select = $this->db->query("SELECT * FROM ".$this->table." WHERE id = ".intval($_GET['id']));
    $num = mysql_num_fields($select);
    $update_query = "UPDATE ".$this->table." SET ";
    $i = 1;
    while($i <= $num){
      $column = mysql_fetch_field($select);
      if($column->name != "id"){
        if($column->type == "datetime"){
          $datetime = $_POST[$column->name."_year"]."-".$_POST[$column->name."_month"]."-".$_POST[$column->name."_day"]." ".$_POST[$column->name."_hour"].":".$_POST[$column->name."_minute"].":00";
          $update_query .= $column->name." = '".$datetime."', ";
        }
        elseif($column->name == "image_url"){
          $im = new ImageUpload();	//New instance of the image upload class
          //There is an image column check to see if an image needs uploading
          if($_FILES['image_url']['error'] != 4){
		    $im->tmpImage = $_FILES['image_url'];
 	        if ($im->uploadImage($im->tmpImage['name'], true)){
		   	  $update_query .= $column->name." = '".$im->tmpImage['name']."',";
		    }
		    else{
			  foreach($im->errors as $error){
			    echo $error.'<br />';
			  }
		    }
		  }
        }
        else{
          if($column->not_null == 1){
             if($_POST[$column->name] == ""){
			   $this->errors[] = "<li>$column->name can not be left blank.";
             }
          }
          $update_query .= $column->name." = '".mysql_real_escape_string($_POST["$column->name"])."', ";
        }
      }
      $i++;
    }
    if(count($this->errors) < 1){
      //Remove the last comma
      $update_query = substr($update_query, 0, -2);
      $update_query .= " WHERE id = ".intval($_GET['id']);
      mysql_query($update_query) or die(mysql_error());
      $this->messages[] = "<li>Record Saved Successfully.</li>";
      $_SESSION['messages'] = $this->messages;
      $_SESSION['type'] = "success";
      header("Location:?page=$this->table&action=list");
    }
    else{
       $_SESSION['errors'] = $this->errors;
       $_SESSION['type'] = "failure";
      header("Location:?page=$this->table&action=edit&id=".intval($_GET['id']));
    }
  }
  
  //Shows a row from the database
  function showrow(){
  	//Validate to ensure that a  id is present
    if(!isset($_GET['id'])){
  		 header("Location:".$_SERVER['PHP_SELF']);
  	}
  	$this->drawHeader();
  	echo "\n<a href='?page=$this->table&action=list' title='Back'>Back</a>";
  	$id = intval($_GET['id']);
    $fields = mysql_query("SELECT * FROM ".$this->table) or die(mysql_error());
    $select = mysql_query("SELECT * FROM ".$this->table." WHERE id = $id") or die(mysql_error());
    $row = mysql_fetch_row($select);
    $i = 0;
    while($i < mysql_num_fields($fields)){
      $field = mysql_fetch_field($fields);
      if($field->name != "id" && $field->name != "image_url"){
        if($field->type == "datetime"){
          echo "\n<label for=\"$field->name\">".ucfirst($field->name).":</label>";
          $this->drawDate($field->name, $row[$i]);
          $this->drawTime($field->name, $row[$i]);
          echo "<br />";
        }
        elseif($field->blob == 1){
          echo "\n<p class=\"show_field_heading\">".ucfirst($field->name).":</p> \n<p class=\"show_field_data\">".$row[$i]."</p>";
        }
        else {
          echo "\n<p class=\"show_field_heading\">".ucfirst($field->name).":</p> <p class=\"show_field_data\">".$row[$i]."</p>";
        }
      }
      elseif($field->name == "image_url"){
      	echo "\n<p class=\"show_field_heading\"> Image: </p>\n<p>\n\t<img src=\"$field->name\" class=\"show_field_image\" /> \n</p>";
      }
      $i++;
    }
  	echo "\n<a href='?page=$this->table&action=list' title='Back'>Back</a>";
  	
  	$this->drawFooter();
  }

  //Deletes a row from the DB
  function deleterow(){
    mysql_query("DELETE FROM ".$this->table." WHERE id = ".intval($_GET["id"])) or die(mysql_error());
    echo "<p>Entry deleted.</p>";
    echo "<p><a href=\"?page=$this->table&action=list\">Back</a>";
  }  
  
  //Helper Functions
  
  //Function to draw a Date Selection Box Based
  function drawDate($field, $date){
    $day = substr($date, 8, 2);
    $month = substr($date,6,2);
    $year = substr($date,0,4);
    //Day
    echo "\n<select name='".$field."_day'>";
    for($i = 1; $i < 32; $i++){
      if($day == $i){
        echo "<option value='$i' selected='selected'>$i</option>";
      }
      else{
        echo "<option value='$i'>$i</option>";
      }
    }
    echo "</select>";
    //Month
    $month_names = array("January","February","March","April","May","June","July","August","September","October","November","December");
    echo "\n<select name='".$field."_month'>";
    $i = 1;
    while($i<=count($month_names)){
      echo "\n\t<option value='$i'";
      if($i == $month){
        echo "selected='selected'";
      }
      echo '>'.$month_names[$i-1].'</option>';    
      $i++;  
    }
    echo "\n</select>";

    //Year
    echo "\n<select name='".$field."_year'>";
    $i = 0;
    while($i < 11){
      if(strftime("%Y",strtotime("+$i year")) == $year){
        echo "\n\t<option selected='selected' value='".strftime("%Y",strtotime("+$i year"))."'>". strftime("%Y",strtotime("+$i year"))."</option>";
      }
      else{
        echo "\n\t<option value='".strftime("%Y",strtotime("+$i year"))."'>". strftime("%Y",strtotime("+$i year"))."</option>";
      }
      $i++;
    }
    echo "\n</select>";
  }
  
  //Function to draw a Time Selection Box 
  //@param a string containing the date in a mysql datetime datatype
  function drawTime($field, $time){
    //Chops up a mysql date time
    $hour = substr($time, 11, 2);
    $minute = substr($time, 14, 2);
    //Hour
    echo "\n<select name='".$field."_hour'>";
    $i = 0;
    while($i < 24){
      if($i == $hour){
        echo "\n\t<option value='$i' selected='selected'>$i</option>";
      }
      else{
        echo "\n\t<option value='$i'>$i</option>";
      }
      $i++;
    }
    echo "</select>";
    //Minutes
    echo "\n<select name='".$field."_minute'>";
    $i = 0;
    while($i < 60){
      if($i == $minute){
        echo "<option value='".strftime("%M",strtotime("+$i minute"))."' selected='selected'>".strftime("%M",strtotime("+$i minute"))."</option>";
      }
      else{
        echo "<option value='$i'>$i</option>";
      }
      $i++;
    }
    echo "</select>";
  }
  
  //Function check enctype to see if an image is going to be uploaded
  //@returns a empty string if there is no "image_url" field in the table else returns "enctpye='multipart/form-data'"
  function checkEnctype(){
  	$formEnctype = "";
  	$query = $this->db->query("SELECT * FROM ".$this->table." LIMIT 1");
    $i = 0;
    //Check for image fields if so set form type to multi-part
    while($i < mysql_num_fields($query)){
      $column = mysql_fetch_field($query);
      if($column->name == "image_url"){
      	$formEnctype = "enctype=\"multipart/form-data\"";
      }
      $i++;
    }
    return $formEnctype;
  }
  
  function drawHeader(){
  	include('templates/header.php');
  	$this->drawMenu();
  }
  
  function drawFooter(){
  	include('templates/footer.php');
  }
  
  //Function that draws the menu by checking what tables are available in the database.
  function drawMenu(){
  	$query = $this->db->query("SHOW TABLES");
  	echo "\n<div class=\"menu\">";
  	while ($row = mysql_fetch_row($query)) {  		
    	echo "\n\t<a href=\"".$_SERVER['PHP_SELF']."?page=".$row[0]."&action=list\" class=\"menuItems\">";
    	echo ucwords(str_replace("_", ' ', $row[0]));
    	echo "</a>";
	}
	echo "</div>";
  }
}
?>
