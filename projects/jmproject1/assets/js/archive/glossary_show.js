$(document).ready(function(){
	
	/* flip english/chinese */
	$(".entry_english").toggle(
		function(){
			var chinese = $(this).next().text();
			$(this).flip({
				direction:'lr',
				content:chinese,
				color:'#ff0',
				speed:170,
				onEnd:function(){
					//do nothing
				}
			});
		},
		function(){
			$(this).revertFlip();	
		}
	);
	
	/* anchor */
	$("span[id^='anchor']").addClass("anchor").click(function(){
		var url = window.location.toString().split('#')['0'];
		
		var anchor = $(this).attr('id').split('_');
		var anchorNum = anchor['1'];
		
		document.location = url + '#' + anchorNum;
	});
	
	$("span[id^='anchor']").hover(
		function () {
			$(this).addClass("anchorhighlight");
		},
		function () {
			$(this).removeClass("anchorhighlight");
		}
	);
});