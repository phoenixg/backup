<?php
/* 
 * Class: ImageUpload
 * Author: Matthew PG Elliston
 * Email: matt@e-titans.com
 * Last Modified: 09/07/2008
 * Create: 09/07/2008 
 * Comment: Class to simplify Image Uploading 
 * Requirements: exif module to be enabled on the host
 */

class ImageUpload{
  var $tmpImage;
  var $maxFileSize = 1000000;
  var $maxWidth = 363;
  var $maxHeight = 363;
  var $validTypes = array("image/jpeg","image/png","image/gif");
  var $errors = array();
  var $imageFolder = "/var/www/html/Space Interiors/images/uploads/";
  
  function isImage(){
    if(exif_imagetype($this->tmpImage['tmp_name'])){      
      return true;
    }
    else{
      $this->errors[] = 'Uploaded file is not an image';
      return false;
    }
  }
  
  function validType(){
    if(in_array($this->tmpImage['type'],$this->validTypes)){
      return true;
    }
    else{
      $this->errors[] = 'Image not a valid file type';
      return false;
    }
  }
  
  function validFileSize(){
    if($tmp->tmpImage['size'] <= $this->maxFilesize){
      return true;
    }
    else{
      $this->errors[] = 'Image file size is too big';
    }
  }
  
  function correctDimensions(){
    $size = getimagesize($this->tmpImage['tmp_name']);
    $width = $size[0];
    $height = $size[1];
    if($width <= $this->maxWidth && $height <= $this->maxHeight){
      return true;
    }
    else{
      $this->errors[] = "Image dimensions are too big. Max Width: $this->maxWidth Max Height: $this->maxHeight";
      return false;
    }
  }
  
  function uploadImage($dest, $safe=false){
    if($safe){
      $status = true;
      $status = $this->isImage();
      if($status)
        $status = $this->validFileSize();
      if($status)
        $status = $this->validType();
      if($status)
        $status = $this->correctDimensions();
     
        
      return ($status)?move_uploaded_file($this->tmpImage['tmp_name'], $imageFolder.$dest):false;      
    }
    else{
      return move_uploaded_file($this->tmpImage['tmp_name'], $this->imageFolder.$dest);
    }
  }
}
?>