$(document).ready(function(){
	$('#showarrTextarea').click(function(){
		$('#arrTextarea').show();
	});


	$('#convert').click(function(){
		var arr = $('#arr').val();
		$.ajax({
			type:"POST",
			url:"handle.php",
			cache:false,	
			data:'arr='+arr,
			success:function(data){
				$('#result').html(data);
			}
		});		
	});

});
