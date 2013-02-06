<?php $this->load->view('includes/v_header');?>

<script type="text/javascript" src="<?=$this->config->item('public_url')?>js/jqueryplugin/jquery.form.js"></script>

<form id="myForm" action="comment.php" method="post"> 
    Name: <input type="text" name="name" /> 
    Comment: <textarea name="comment"></textarea> 
    <input type="submit" value="Submit Comment" /> 
</form>
    
 
    <script type="text/javascript"> 
        // wait for the DOM to be loaded 
        $(document).ready(function() { 
            // bind 'myForm' and provide a simple callback function 
            $('#myForm').ajaxForm(function() { 
                alert("Thank you for your comment!"); 
            }); 
        }); 
    </script> 

<?php $this->load->view('includes/v_footer');?>
