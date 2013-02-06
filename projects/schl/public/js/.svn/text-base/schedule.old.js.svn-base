$(document).ready(function() {
	var address = 'http://10.254.241.93/schl/index.php/';
	
	
	$("#addForm").hide();	
	$('#edForm_1,#edForm_2,#edForm_3').hide();
	$('div#eventInfo_all').hide();
	
	$('td[id]').hover(function(){
		$(this).css({ cursor: "pointer"});
	});
	
	$('#help').click(function(){
		alert('1 double click a cell to start/edit \n'+
						'2 the maximum events is 3 in a day \n');
	});
	
	$("#scheduleTable>tbody>tr").find("td:first").css({color:"#eee",background:"#C75F3E"/*, fontWeight:"bold"*/});
	
	
	//remove staff
	$('#delstaff').click(function(){
		var staffname = prompt("Staff Name:","")
		if(staffname!=null && staffname!=""){
			ajaxdelstaff(staffname);
		}
	});
	
	//ajaxdelstaff
	function ajaxdelstaff(staffname){
		$.ajax({
			url:address+"schdl/ajaxdelstaff",
			data:"name="+staffname,
			type:"POST",
			dataType:"json",
			success:function(re){
				if(re == 1||re==true){
					alert('Staff Removed');
					document.location.href = address+"schdl/index";
				}
			},
			error:function(re){
				console.log(re);
			}
		});
	}//end of ajaxdelstaff
	
	
	//add new staff
	$('#addstaff').click(function(){
		var staffname = prompt("Staff Name:","")
		if(staffname!=null && staffname!=""){
			ajaxaddstaff(staffname);
		}
	});
	
	//ajaxaddstaff
	function ajaxaddstaff(staffname){
		$.ajax({
			url:address+"schdl/ajaxaddstaff",
			data:"name="+staffname,	
			type:"POST",
			dataType:"json",
			success:function(re){
				if(re == 1||re==true) {
					document.location.href = address + "schdl/index";
				}
			},
			error:function(re) {
				console.log(re);
			}
		});
	}//end of ajaxaddstaff
	 

	
	//validation
	$('#start_time_h,#end_time_h,,#start_time_h_1,#end_time_h_1,#start_time_h_2,#end_time_h_2,#start_time_h_3,#end_time_h_3').blur(function(){
		if(isNaN($(this).val())){$(this).val('');$(this).css({'background-color':'red'});return false;}else{$(this).css({'background-color':''});}
		if($(this).val().length!=2){
			if($(this).val().length == 1){
				$(this).val('0'+$(this).val());
			}else{
				$(this).val('');
				$(this).css({'background-color':'red'});
				return false;
			}
		}else{
			$(this).css({'background-color':''});
		}
		if($(this).val()<0 || $(this).val()>24){$(this).val('');$(this).css({'background-color':'red'});return false;}else{$(this).css({'background-color':''});}
	});
	$('#start_time_m,#end_time_m,#start_time_m_1,#end_time_m_1,#start_time_m_2,#end_time_m_2,#start_time_m_3,#end_time_m_3').blur(function(){
		if(isNaN($(this).val())){$(this).val('');$(this).css({'background-color':'red'});return false;}else{$(this).css({'background-color':''});}
		if($(this).val().length!=2){
			if($(this).val().length == 1){
				$(this).val('0'+$(this).val());
			}else{
				$(this).val('');
				$(this).css({'background-color':'red'});
				return false;
			}
		}else{
			$(this).css({'background-color':''});
		}
		if($(this).val()<0 || $(this).val()>60){$(this).val('');$(this).css({'background-color':'red'});return false;}else{$(this).css({'background-color':''});}
	});

	
	//set the default hour and time
	$('#start_time_h').val('09'); 
	$('#start_time_m').val('00');
	$('#end_time_h').val('18');
	$('#end_time_m').val('00');



	//edit link
	//$('#edit').click(function(){
	$('td[id]').dblclick(function(){
		if($(this).attr('class') != 'td_selected_cell'){
			$(this).addClass('td_selected_cell');
		}
		
		//copied from below
		id = $('.td_selected_cell').attr('id');		
		//console.log(id);
		
		if(!id) {alert('please choose one box first');return false;}
		//if($('.td_selected_cell').text().length < 24){alert('no events');return false;}//24 stands for the comment length
		
		//if($('.td_selected_cell').text().length < 24){//24 stands for the comment length
		if($('.td_selected_cell .subTable').text().length == 0){//for add new
			$('#add').click();	//toggle the add form
		}else{//for edit old
			$('#editspan').fadeOut(200);
			$('#addForm').slideUp(200);
			$('#dconfirm_1,#dconfirm_2,#dconfirm_3').hide();
			/*
			$("div#eventInfo,div#eventInfo_1,div#eventInfo_2").fadeOut();
			$("div#modify_info").fadeIn();
			 */
			var start_time_1 = $('.td_selected_cell table tbody tr td:first').text();//eg. 22:23
			var end_time_1 = $('.td_selected_cell table tbody tr td:eq(2)').text();//eg. 14:11
			var start_time_h_1 = start_time_1.substring(0,2);
			var start_time_m_1 = start_time_1.substring(3,5);
			//console.log(start_time_m_1);
			var end_time_h_1 = end_time_1.substring(0,2);
			var end_time_m_1 = end_time_1.substring(3,5);
			//var detail_1 = $('.td_selected_cell tbody tr td:eq(3)').text();
			var detail_1 = $('.td_selected_cell tbody tr td:eq(3)').attr('title');
			$('#start_time_h_1').val(start_time_h_1);
			$('#start_time_m_1').val(start_time_m_1);
			$('#end_time_h_1').val(end_time_h_1);
			$('#end_time_m_1').val(end_time_m_1);
			$('#detail_1').val(detail_1);
			$('#edForm_1').slideToggle(200);
			
			//second form
			if($('.moreEvents').text().length > 1) {
				var start_time_2 = $('.td_selected_cell table tbody tr td:eq(4)').text();
				var end_time_2 = $('.td_selected_cell table tbody tr td:eq(6)').text();
				var start_time_h_2 = start_time_2.substring(0,2);
				var start_time_m_2 = start_time_2.substring(3,5);
				var end_time_h_2 = end_time_2.substring(0,2);
				var end_time_m_2 = end_time_2.substring(3,5);
				//var detail_2 = $('.td_selected_cell table tbody tr td:eq(7)').text();
				var detail_2 = $('.td_selected_cell table tbody tr td:eq(7)').attr('title');
				/*console.log(start_time_2,end_time_2,start_time_h_2,start_time_m_2,
					end_time_h_2,end_time_m_2,detail_2);*/
				
				$('#start_time_h_2').val(start_time_h_2);
				$('#start_time_m_2').val(start_time_m_2);
				$('#end_time_h_2').val(end_time_h_2);
				$('#end_time_m_2').val(end_time_m_2);
				$('#detail_2').val(detail_2);
				
				//console.log(start_time_2);
				ia = $('.td_selected_cell span.hideId').text().split('-');
				if(ia[1]){
					$('#edForm_2').slideDown(200);
				}
			}
			
			//third form
			var start_time_3 = $('.td_selected_cell table tbody tr td:eq(8)').text();
			var end_time_3 = $('.td_selected_cell table tbody tr td:eq(10)').text();
			var start_time_h_3 = start_time_3.substring(0,2);
			var start_time_m_3 = start_time_3.substring(3,5);
			var end_time_h_3 = end_time_3.substring(0,2);
			var end_time_m_3 = end_time_3.substring(3,5);
			//var detail_3 = $('.td_selected_cell table tbody tr td:eq(11)').text();
			var detail_3 = $('.td_selected_cell table tbody tr td:eq(11)').attr('title');
			//console.log(start_time_3,end_time_3,detail_3);
			
			$('#start_time_h_3').val(start_time_h_3);
			$('#start_time_m_3').val(start_time_m_3);
			$('#end_time_h_3').val(end_time_h_3);
			$('#end_time_m_3').val(end_time_m_3);
			$('#detail_3').val(detail_3);
			
			//console.log(start_time_3);
			ib = $('.td_selected_cell span.hideId').text().split('-');
			if(ib[2]){
				$('#addspan').fadeOut(600);//cannot add event anymore
				$('#edForm_3').slideDown(200);
			}
			
		}//end else-if
		
		
	});
	
	//delete link 1
	$('#delete_1').click(function(){
		$('#submit_1').fadeOut(200);
		$(this).fadeOut(200);
		$('#dconfirm_1').delay(520).fadeIn(200);
	});
	
	//delete link 2
	$('#delete_2').click(function(){
		$('#submit_2').fadeOut(200);
		$(this).fadeOut(200);
		$('#dconfirm_2').delay(520).fadeIn(200);
	});
	
	//delete link 3
	$('#delete_3').click(function(){
		$('#submit_3').fadeOut(200);
		$(this).fadeOut(200);
		$('#dconfirm_3').delay(520).fadeIn(200);
	});
	
	//confirm delete 1,2,3
	$('#dconfirm_1').click(function(){
		var event_id = $('.td_selected_cell span.hideId').text().split('-');
		var event_id = event_id[0];
		//console.log(event_id_1);
		
		ajaxdevt(event_id);
	});
	
	$('#dconfirm_2').click(function(){
		var event_id = $('.td_selected_cell span.hideId').text().split('-');
		var event_id = event_id[1];
	
		ajaxdevt(event_id);
	});

	$('#dconfirm_3').click(function(){
		var event_id = $('.td_selected_cell span.hideId').text().split('-');
		var event_id = event_id[2];
		
		ajaxdevt(event_id);
	});

	//delete 
	function ajaxdevt(event_id)
	{
		$.ajax({
			url: address + "schdl/ajaxdeleteevent",
			type: "POST",
			dataType: "json",
			data:'event_id='+event_id,
			success: function(re){
				//console.log(re);
				if(re == 1){
					document.location.href = address + "schdl/index";
				}
			},
			error:function(re){
				//console.log(re);
			}
		});
		
	}
	
	
	//edit Event
	$('#submit_1').bind("click",function(){
		var start_time_h = $('#start_time_h_1').val();
		var start_time_m = $('#start_time_m_1').val();
		var start_time = '20111111'+start_time_h+start_time_m+'00';
		var end_time_h = $('#end_time_h_1').val();
		var end_time_m = $('#end_time_m_1').val();
		var end_time = '20111111'+end_time_h+end_time_m+'00';
		var detail = $('#detail_1').val();
		if($('.td_selected_cell span.hideId').text().indexOf('-')>0){
			var event_id = $('.td_selected_cell span.hideId').text().split("-");
			var event_id = event_id[0];
		}else{
			var event_id = $('.td_selected_cell span.hideId').text();
		}
		
		//console.log(event_id);return false;
		var tdid = $('.td_selected_cell').attr('id');
		var tdidtmp = tdid.split('-');
		var rid = tdidtmp[0];
		var cid = tdidtmp[1];
		var selected_date = $('#scheduleTable thead strong:eq('+cid+')').attr('id');//2011-11-22
		var selected_name = $('#scheduleTable tbody strong:eq('+rid+')').text();//huangfeng
		

		ajaxedt(event_id,start_time,end_time,detail,selected_date,selected_name);
	});
	
	$('#submit_2').bind("click",function(){
		var start_time_h = $('#start_time_h_2').val();
		var start_time_m = $('#start_time_m_2').val();
		var start_time = '20111111'+start_time_h+start_time_m+'00';
		var end_time_h = $('#end_time_h_2').val();
		var end_time_m = $('#end_time_m_2').val();
		var end_time = '20111111'+end_time_h+end_time_m+'00';
		var detail = $('#detail_2').val();
		if($('.td_selected_cell span.hideId').text().indexOf('-')>0){
			var event_id = $('.td_selected_cell span.hideId').text().split("-");
			var event_id = event_id[1];
		}else{
			var event_id = $('.td_selected_cell span.hideId').text();
		}
		
		//console.log(event_id);return false;
		var tdid = $('.td_selected_cell').attr('id');
		var tdidtmp = tdid.split('-');
		var rid = tdidtmp[0];
		var cid = tdidtmp[1];
		var selected_date = $('#scheduleTable thead strong:eq('+cid+')').attr('id');//2011-11-22
		var selected_name = $('#scheduleTable tbody strong:eq('+rid+')').text();//huangfeng
		
		ajaxedt(event_id,start_time,end_time,detail,selected_date,selected_name);
	});
	
	$('#submit_3').bind("click",function(){
		var start_time_h = $('#start_time_h_3').val();
		var start_time_m = $('#start_time_m_3').val();
		var start_time = '20111111'+start_time_h+start_time_m+'00';
		var end_time_h = $('#end_time_h_3').val();
		var end_time_m = $('#end_time_m_3').val();
		var end_time = '20111111'+end_time_h+end_time_m+'00';
		var detail = $('#detail_3').val();
		if($('.td_selected_cell span.hideId').text().indexOf('-')>0){
			var event_id = $('.td_selected_cell span.hideId').text().split("-");
			var event_id = event_id[2];
		}else{
			var event_id = $('.td_selected_cell span.hideId').text();
		}
		
		//console.log(event_id);return false;
		var tdid = $('.td_selected_cell').attr('id');
		var tdidtmp = tdid.split('-');
		var rid = tdidtmp[0];
		var cid = tdidtmp[1];
		var selected_date = $('#scheduleTable thead strong:eq('+cid+')').attr('id');//2011-11-22
		var selected_name = $('#scheduleTable tbody strong:eq('+rid+')').text();//huangfeng
		
		ajaxedt(event_id,start_time,end_time,detail,selected_date,selected_name);
	});
	
	
	//ajaxedt()
	function ajaxedt(event_id,start_time,end_time,detail,selected_date,selected_name)
	{
		$.ajax({
			url: address + "schdl/ajaxmodifyevent",
			type: "POST",
			dataType: "json",
			data:'event_id='+event_id+
			'&start_time='+start_time+
			'&end_time='+end_time+
			'&detail='+detail+
			'&selected_date='+selected_date+
			'&selected_name='+selected_name,
			success: function(re){
				//console.log(re);
				if(re == 1){
					document.location.href = address + "schdl/index";
				}
			},
			error:function(re){
				//console.log(re);
			}
		});
		
		
	}
	
	

		


	
	
	
	
	
	
	
	
	
	//add link
	$('#add').click(function(){
		$('#edForm_1,#edForm_2,#edForm_3').slideUp(200);
		$('#addForm').slideToggle(200);
	});
	
	//add new Event
	$('#submit').click(function(){
		//if($('#detail').val().length == 0){alert('please type something you would do');return false;}
		id = $('.td_selected_cell').attr('id');
		
		if(!id) {
			alert('please choose one box first');
			return false;
		}
		//console.log(id);
		
		//copy from below
		splitted_id = id.split('-');
		n_member = splitted_id['0'];
		n_date = splitted_id['1']; 
		var name = $("tbody tr strong").eq(n_member).text();// eg. genshan
		ddate = $("thead tr strong").eq(n_date).attr('id'); //2011-12-10
		//alert(name);
		//grub the data in the form
		var start_time_h = $('#start_time_h').val();
		var start_time_m = $('#start_time_m').val();
		var end_time_h = $('#end_time_h').val();
		var end_time_m = $('#end_time_m').val();
		
		if($('#detail').val() == ''){
			ddetail = '-';
		}else{
			ddetail = $('#detail').val();
		}

		//console.log(n_member);return false;		
		
		ajaxinsert(start_time_h,start_time_m,end_time_h,end_time_m);
	});
	
	
	//td  
	$('td[id]').live("click",function(){
		$(this).toggleClass('selectedCellhl');
		
		$("#edForm_1,#edForm_2,#edForm_3").slideUp(200);
		$('#addspan').show();//is this essential?
		$('#addForm').slideUp(200);
		$('div#eventInfo_all').delay(100).fadeIn(200);
		
		$(".td_selected_column").removeClass();
		$(".td_selected_row").removeClass();
		$('.td_selected_cell').removeClass();
		$(this).addClass('td_selected_cell');
				
		id = $(this).attr('id');//eg. 0-0,0-1,0-2 ...
		splitted_id = id.split('-');
		n_member = splitted_id['0'];
		n_date = splitted_id['1']; 
		//console.log('n_member:',n_member,'n_date:',n_date);
	
		name = $("tbody tr strong").eq(n_member).text();
		var date = $("thead tr strong").eq(n_date).attr('id');
		//console.log(date);return false;
		//console.log(name,date); //eg. huangfeng 2011-11-22
		
		//ajaxfunc();
		//$("div#modify_info").hide();
		if($(this).text().length > 24){//the comment <!-- event sub block --> 's length
			//ajaxfuncdiv();
			//rather than make a new ajax request, I will use jquery to get the data
		}
		
		
		// below is copied and modified from edit !!!
		var start_time_1 = $('.td_selected_cell table tbody tr td:first').text();//eg. 22:23
		var end_time_1 = $('.td_selected_cell table tbody tr td:eq(2)').text();//eg. 14:11
		var start_time_h_1 = start_time_1.substring(0,2);
		var start_time_m_1 = start_time_1.substring(3,5);
		//console.log(start_time_m_1);
		var end_time_h_1 = end_time_1.substring(0,2);
		var end_time_m_1 = end_time_1.substring(3,5);
		//var detail_1 = $('.td_selected_cell tbody tr td:eq(3)').text();
		var detail_1 = $('.td_selected_cell tbody tr td:eq(3)').attr('title');
	
		
		$('#eventInfo_all #eventInfo span#st').text('['+start_time_1+' - ');
		$('#eventInfo_all #eventInfo span#et').text(end_time_1+']');
		$('#eventInfo_all #eventInfo div#dtail').text(detail_1);
		
		if($('.moreEvents').text().length > 1) {
			var start_time_2 = $('.td_selected_cell table tbody tr td:eq(4)').text();
			var end_time_2 = $('.td_selected_cell table tbody tr td:eq(6)').text();
			var start_time_h_2 = start_time_2.substring(0,2);
			var start_time_m_2 = start_time_2.substring(3,5);
			var end_time_h_2 = end_time_2.substring(0,2);
			var end_time_m_2 = end_time_2.substring(3,5);
			//var detail_2 = $('.td_selected_cell table tbody tr td:eq(7)').text();
			var detail_2 = $('.td_selected_cell table tbody tr td:eq(7)').attr('title');

			ia = $('.td_selected_cell span.hideId').text().split('-');
			if(ia[1]){
				$('#eventInfo_all #eventInfo_1 span#st_1').text('['+start_time_2+' - ');
				$('#eventInfo_all #eventInfo_1 span#et_1').text(end_time_2+']');
				$('#eventInfo_all #eventInfo_1 div#dtail_1').text(detail_2);
			}else{
				$('#eventInfo_all #eventInfo_1 span#st_1').text('');
				$('#eventInfo_all #eventInfo_1 span#et_1').text('');
				$('#eventInfo_all #eventInfo_1 div#dtail_1').text('');				
			}
		}
	
		
		var start_time_3 = $('.td_selected_cell table tbody tr td:eq(8)').text();
		var end_time_3 = $('.td_selected_cell table tbody tr td:eq(10)').text();
		var start_time_h_3 = start_time_3.substring(0,2);
		var start_time_m_3 = start_time_3.substring(3,5);
		var end_time_h_3 = end_time_3.substring(0,2);
		var end_time_m_3 = end_time_3.substring(3,5);
		//var detail_3 = $('.td_selected_cell table tbody tr td:eq(11)').text();
		var detail_3 = $('.td_selected_cell table tbody tr td:eq(11)').attr('title');
		//console.log(start_time_3,end_time_3,detail_3);
		
		ib = $('.td_selected_cell span.hideId').text().split('-');
		if(ib[2]){
			$('#addspan').fadeOut(600);//cannot add event anymore
			
			$('#eventInfo_all #eventInfo_2 span#st_2').text('['+start_time_3+' - ');
			$('#eventInfo_all #eventInfo_2 span#et_2').text(end_time_3+']');
			$('#eventInfo_all #eventInfo_2 div#dtail_2').text(detail_3);
		}else{
			$('#eventInfo_all #eventInfo_2 span#st_2').text('');
			$('#eventInfo_all #eventInfo_2 span#et_2').text('');
			$('#eventInfo_all #eventInfo_2 div#dtail_2').text('');
		}
	});//end of td[id]
	
	

	
	
	
	
	//ajaxinsert
	function ajaxinsert(start_time_h,start_time_m,end_time_h,end_time_m)
	{
		$.ajax({
			/* may cause IE problem
		 	url:"http://10.254.241.93/att/doc/hf/schedule/index.php/schdl/ajaxaddevent/name/" + name 
				+ "/date/" + date + "/start_time_h/" + start_time_h + "/start_time_m/" + start_time_m 
				+ "/end_time_h/" + end_time_h + "/end_time_m/" + end_time_m + "/detail/" + detail,
			*/
		/*	url:"http://10.254.241.93/schl/index.php/schdl/ajaxaddevent/name/"+name+"/date/"+date+"/n_member/"+n_member+"/start_time_h/"+start_time_h+"/start_time_m/"+start_time_m+"/end_time_h/"+end_time_h+"/end_time_m/"+end_time_m+"/detail/"+detail,
		*/
			url:address + "schdl/ajaxaddevent",
			data:"name="+name+
				"&date="+ddate+
				"&n_member="+n_member+
				"&start_time_h="+start_time_h+
				"&start_time_m="+start_time_m+
				"&end_time_h="+end_time_h+
				"&end_time_m="+end_time_m+
				"&detail="+ddetail,	
			type:"POST",
			dataType:"json",
			success:function(re){
				//console.log(re);alert(re);return false;
				if(re == 1||re==true) {
					$("#addForm").slideUp(200).delay(1000);
					document.location.href = address + "schdl/index";
					
				}
			},
		
			error:function(re) {
				console.log(re);
			}
		
		});
	}//end of ajaxinsert
	
	
	//ajaxfuncdiv for show only
	function ajaxfuncdiv()
	{
		$.ajax({
			url: address + "schdl/ajaxgetevent/name/"
						+ name + "/date/" + date,
			type: "POST",
			dataType: "json",
			success: function(re) {
				//console.log(re);
				if(re.stat == 1) {
					console.log("re is:",re);
					//console.log(re.detail);
					//re.event_id , re.start_time , re.end_time , re.detail
					
					$("#event_id").attr("value",re.event_id);
					$("#start_time").attr("value",re.start_time);
					$("#end_time").attr("value",re.end_time);
					$("#detail").attr("value",re.detail);
					
					event_id = ($("#event_id").attr("value")).split(',');
					start_time = ($("#start_time").attr("value")).split(',');
					end_time = ($("#end_time").attr("value")).split(',');
					detail = ($("#detail").attr("value")).split(',');
	
					//console.log(event_id);
					//eg. event_id[0]->66, event_id[1]->77, event_id[2]->78
					$("#eventInfo h5").text(event_id[0]);
					start_time[0] = start_time[0].substring(11,16);
					$("#eventInfo span#st").text(start_time[0]);
					end_time[0] = end_time[0].substring(11,16);
					$("#eventInfo span#et").text(end_time[0]);
					$("#eventInfo div#dtail").text(detail[0]);
					
					$("#eventInfo_1").css({ display: "none" });
					$("#eventInfo_2").css({ display: "none" });
					
					
					if(event_id[1]){
						$("#eventInfo_1 h5").text(event_id[1]);
						start_time[1] = start_time[1].substring(11,16);
						$("#eventInfo_1 span#st_1").text(start_time[1]);
						end_time[1] = end_time[1].substring(11,16);
						$("#eventInfo_1 span#et_1").text(end_time[1]);
						$("#eventInfo_1 div#dtail_1").text(detail[1]);
							
						$("#eventInfo_1").css({ display: "block" });

					}
					
					if(event_id[2]){
						$("#eventInfo_2 h5").text(event_id[2]);
						start_time[2] = start_time[2].substring(11,16);
						$("#eventInfo_2 span#st_2").text(start_time[2]);
						end_time[2] = end_time[2].substring(11,16);
						$("#eventInfo_2 span#et_2").text(end_time[2]);
						$("#eventInfo_2 div#dtail_2").text(detail[2]);
							
						$("#eventInfo_2").css({ display: "block" });

					}
					
					
				}
			},
			error:function(re) {
				console.log(re);
			}
		});

		
	}
	

	//ajaxfunc()
	function ajaxfunc()
	{
		$('#modify_info').css("display","block");
		
		$.ajax({
			url: address + "schdl/ajaxgetevent/name/"
						+ name + "/date/" + date,
			type: "POST",
			dataType: "json",
			success: function(re) {
				//console.log(re);
				if(re.stat == 1) {
					console.log("re is:",re);
					//console.log(re.detail);
					//re.event_id , re.start_time , re.end_time , re.detail
					
					$("#event_id").attr("value",re.event_id);
					$("#start_time").attr("value",re.start_time);
					$("#end_time").attr("value",re.end_time);
					$("#detail").attr("value",re.detail);
					
					event_id = ($("#event_id").attr("value")).split(',');
					start_time = ($("#start_time").attr("value")).split(',');
					end_time = ($("#end_time").attr("value")).split(',');
					detail = ($("#detail").attr("value")).split(',');
	
					//console.log(event_id);
					//eg. event_id[0]->66, event_id[1]->77, event_id[2]->78
					$("#event_id").attr("value",event_id[0]);
					$("#start_time").attr("value",start_time[0]);
					$("#end_time").attr("value",end_time[0]);
					$("#detail").attr("value",detail[0]);
					
					$("#modify_info_1").css({ display: "none" });
					$("#modify_info_2").css({ display: "none" });
					
					if(event_id[1]){
						$("#event_id_1").attr("value",event_id[1]);
						$("#start_time_1").attr("value",start_time[1]);
						$("#end_time_1").attr("value",end_time[1]);
						$("#detail_1").attr("value",detail[1]);
							
						$("#modify_info_1").css({ display: "block" });

					}
					
					if(event_id[2]){
						$("#event_id_2").attr("value",event_id[2]);
						$("#start_time_2").attr("value",start_time[2]);
						$("#end_time_2").attr("value",end_time[2]);
						$("#detail_2").attr("value",detail[2]);
							
						$("#modify_info_2").css({ display: "block" });
					}
					
					
				}
			},
			error:function(re) {
				console.log(re);
			}
		});
	}//end of ajaxfunc
	

	
	
	
	
	
	//modify
	$('#modify').click(function(){
		if(($('#event_id').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#start_time').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#end_time').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#detail').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		
		//console.log(name,date);return false;
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		selected_name = $('.td_selected_column').text()=='' ? name:$('.td_selected_column').text();
		
		event_id = $('#event_id').val();
		start_time = $('#start_time').val();
		start_time = start_time.replace(/-/g,'');
		start_time = start_time.replace(/:/g,'');
		start_time = start_time.replace(/ /g,'');
		//console.log(start_time);return false;
		end_time = $('#end_time').val();
		detail = $('#detail').val();
		
		//console.log(event_id, start_time, end_time, detail);

		$.ajax({
			url: address + "schdl/ajaxmodifyevent",
			type: "POST",
			dataType: "json",
			data:'event_id='+event_id+
						'&start_time='+start_time+
						'&end_time='+end_time+
						'&detail='+detail+
						'&selected_date='+selected_date+
						'&selected_name='+selected_name,
			success: function(re){
				//console.log(re);
				if(re == 1){
					document.location.href = address + "schdl/index";
				}
			},
			error:function(re){
				//console.log(re);
			}
		});
	});//end of modify
	
	
	//modify_1
	$('#modify_1').click(function(){
		if(($('#event_id_1').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#start_time_1').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#end_time_1').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#detail_1').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		
		//console.log(name,date);return false;
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		selected_name = $('.td_selected_column').text()=='' ? name:$('.td_selected_column').text();
		
		event_id = $('#event_id_1').val();
		start_time = $('#start_time_1').val();
		start_time = start_time.replace(/-/g,'');
		start_time = start_time.replace(/:/g,'');
		start_time = start_time.replace(/ /g,'');
		//console.log(start_time);return false;
		end_time = $('#end_time_1').val();
		detail = $('#detail_1').val();
		
		//console.log(event_id, start_time, end_time, detail);

		$.ajax({
			url: address + "schdl/ajaxmodifyevent",
			type: "POST",
			dataType: "json",
			data:'event_id='+event_id+
						'&start_time='+start_time+
						'&end_time='+end_time+
						'&detail='+detail+
						'&selected_date='+selected_date+
						'&selected_name='+selected_name,
			success: function(re){
				//console.log(re);
				if(re == 1){
					document.location.href = address + "schdl/index";
				}
			},
			error:function(re){
				//console.log(re);
			}
		});
	});//end of modify_1

	
	//modify_2
	$('#modify_2').click(function(){
		if(($('#event_id_2').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#start_time_2').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#end_time_2').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		if(($('#detail_2').val()).indexOf(',') > 0 ) {alert('no comma!');return false;}
		
		//console.log(name,date);return false;
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		selected_name = $('.td_selected_column').text()=='' ? name:$('.td_selected_column').text();
		
		event_id = $('#event_id_2').val();
		start_time = $('#start_time_2').val();
		start_time = start_time.replace(/-/g,'');
		start_time = start_time.replace(/:/g,'');
		start_time = start_time.replace(/ /g,'');
		//console.log(start_time);return false;
		end_time = $('#end_time_2').val();
		detail = $('#detail_2').val();
		
		//console.log(event_id, start_time, end_time, detail);

		$.ajax({
			url: address + "schdl/ajaxmodifyevent",
			type: "POST",
			dataType: "json",
			data:'event_id='+event_id+
						'&start_time='+start_time+
						'&end_time='+end_time+
						'&detail='+detail+
						'&selected_date='+selected_date+
						'&selected_name='+selected_name,
			success: function(re){
				//console.log(re);
				if(re == 1){
					document.location.href = address + "schdl/index";
				}
			},
			error:function(re){
				//console.log(re);
			}
		});
	});//end of modify_2
	
	
	//hover to get all events
	/*
	$('td[id]').hover(function(){
		id = $(this).attr('id');
		splitted_id = id.split('-');
		n_member = splitted_id[0];
		n_date = splitted_id[1];
		//console.log('n_member:',n_member,'n_date:',n_date);
		
		name = $("tbody tr strong").eq(n_member).text();
		date = $("thead tr strong").eq(n_date).text();
		
		ajaxfunc();
	
	});
	*/
	
	
	
//	//double click to delete
//	$('#delete').click(function(){
//		
//		id = $('.td_selected_cell').attr('id');
//		if(!id) {alert('please choose one box first');return false;}
//		
//		//console.log(id);return false;
//		
//		
//		
//		/*
//		event_id = $('#event_id').val();
//		
//		$.ajax({
//			url:"http://10.254.241.93/att/doc/hf/schedule/index.php/schdl/ajaxdeleteevent",
//			type:"POST",
//			dateType:"json",
//			data:'event_id='+event_id,
//			success:function(re){
//				if(re == 1){
//					$('.td_selected_cell').animate({opacity: 'toggle'} , 1000,'' ,function(){
//						document.location.href = "http://10.254.241.93/att/doc/hf/schedule/index.php/schdl/index";
//					});						
//				}
//			},
//			error:function(re){
//				//console.log(re);
//			}
//			});
//			*/
//	});//end of delete
	



	
	
	
	
	
/***************************comment out
 * 
 * 
	
	//change the start_time and end_time in input tag
	var start_time_arr_hour = new Array();
	var start_time_arr_minute = new Array();
	var start_time_arr_hour_smaller = new Array();
	var start_time_arr_minute_smaller = new Array();
	var start_time_arr_hour_larger = new Array();
	var start_time_arr_minute_larger = new Array();
	
	//for smaller
	start_time_arr_hour[0] = "09";
	start_time_arr_hour[1] = "10";
	start_time_arr_hour[2] = "11";
	start_time_arr_hour[3] = "12";
	start_time_arr_hour[4] = "13";
	start_time_arr_hour[5] = "14";
	start_time_arr_hour[6] = "15";
	start_time_arr_hour[7] = "16";
	start_time_arr_hour[8] = "17";
	start_time_arr_hour[9] = "18";
	start_time_arr_hour[10] = "19";
	
	start_time_arr_minute[0] = "00";
	start_time_arr_minute[1] = "10";
	start_time_arr_minute[2] = "20";
	start_time_arr_minute[3] = "30";
	start_time_arr_minute[4] = "40";
	start_time_arr_minute[5] = "50";

	//for smaller and larger
	start_time_arr_hour_smaller[10] = "09";
	start_time_arr_hour_smaller[9] = "10";
	start_time_arr_hour_smaller[8] = "11";
	start_time_arr_hour_smaller[7] = "12";
	start_time_arr_hour_smaller[6] = "13";
	start_time_arr_hour_smaller[5] = "14";
	start_time_arr_hour_smaller[4] = "15";
	start_time_arr_hour_smaller[3] = "16";
	start_time_arr_hour_smaller[2] = "17";
	start_time_arr_hour_smaller[1] = "18";
	start_time_arr_hour_smaller[0] = "19";

	start_time_arr_minute_smaller[5] = "00";
	start_time_arr_minute_smaller[4] = "10";
	start_time_arr_minute_smaller[3] = "20";
	start_time_arr_minute_smaller[2] = "30";
	start_time_arr_minute_smaller[1] = "40";
	start_time_arr_minute_smaller[0] = "50";
	
	start_time_arr_hour_larger[10] = "09";
	start_time_arr_hour_larger[9] = "10";
	start_time_arr_hour_larger[8] = "11";
	start_time_arr_hour_larger[7] = "12";
	start_time_arr_hour_larger[6] = "13";
	start_time_arr_hour_larger[5] = "14";
	start_time_arr_hour_larger[4] = "15";
	start_time_arr_hour_larger[3] = "16";
	start_time_arr_hour_larger[2] = "17";
	start_time_arr_hour_larger[1] = "18";
	start_time_arr_hour_larger[0] = "19";

	start_time_arr_minute_larger[5] = "00";
	start_time_arr_minute_larger[4] = "10";
	start_time_arr_minute_larger[3] = "20";
	start_time_arr_minute_larger[2] = "30";
	start_time_arr_minute_larger[1] = "40";
	start_time_arr_minute_larger[0] = "50";
	
	$('#start_hour_smaller').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#start_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour.length;i++){
			if(hour_pick == start_time_arr_hour[i]){
				if(hour_pick == start_time_arr_hour[0] || hour_pick == start_time_arr_hour[start_time_arr_hour.length-1]){
					hour_pick = start_time_arr_hour[i];
					$('#start_time').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 1
	$('#start_hour_smaller_1').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#start_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour.length;i++){
			if(hour_pick == start_time_arr_hour[i]){
				if(hour_pick == start_time_arr_hour[0] || hour_pick == start_time_arr_hour[start_time_arr_hour.length-1]){
					hour_pick = start_time_arr_hour[i];
					$('#start_time_1').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 2
	$('#start_hour_smaller_2').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#start_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour.length;i++){
			if(hour_pick == start_time_arr_hour[i]){
				if(hour_pick == start_time_arr_hour[0] || hour_pick == start_time_arr_hour[start_time_arr_hour.length-1]){
					hour_pick = start_time_arr_hour[i];
					$('#start_time_2').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	$('#start_minute_smaller').click(function(){
		start_time_pick = $('#start_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute.length;i++){
			if(minute_pick == start_time_arr_minute[i]){
				if(minute_pick == start_time_arr_minute[0] || minute_pick == start_time_arr_minute[start_time_arr_minute.length]){
					minute_pick = start_time_arr_minute[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	//copy for 1
	$('#start_minute_smaller_1').click(function(){
		start_time_pick = $('#start_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute.length;i++){
			if(minute_pick == start_time_arr_minute[i]){
				if(minute_pick == start_time_arr_minute[0] || minute_pick == start_time_arr_minute[start_time_arr_minute.length]){
					minute_pick = start_time_arr_minute[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});
	
	//copy for 2
	$('#start_minute_smaller_2').click(function(){
		start_time_pick = $('#start_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute.length;i++){
			if(minute_pick == start_time_arr_minute[i]){
				if(minute_pick == start_time_arr_minute[0] || minute_pick == start_time_arr_minute[start_time_arr_minute.length]){
					minute_pick = start_time_arr_minute[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	
//	
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	  line 359 - 489 is for end_time
//	 
	
	$('#end_hour_smaller').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#end_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour.length;i++){
			if(hour_pick == start_time_arr_hour[i]){
				if(hour_pick == start_time_arr_hour[0] || hour_pick == start_time_arr_hour[start_time_arr_hour.length-1]){
					hour_pick = start_time_arr_hour[i];
					$('#end_time').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 1
	$('#end_hour_smaller_1').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#end_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour.length;i++){
			if(hour_pick == start_time_arr_hour[i]){
				if(hour_pick == start_time_arr_hour[0] || hour_pick == start_time_arr_hour[start_time_arr_hour.length-1]){
					hour_pick = start_time_arr_hour[i];
					$('#end_time_1').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 2
	$('#end_hour_smaller_2').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#end_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour.length;i++){
			if(hour_pick == start_time_arr_hour[i]){
				if(hour_pick == start_time_arr_hour[0] || hour_pick == start_time_arr_hour[start_time_arr_hour.length-1]){
					hour_pick = start_time_arr_hour[i];
					$('#end_time_2').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	$('#end_minute_smaller').click(function(){
		start_time_pick = $('#end_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute.length;i++){
			if(minute_pick == start_time_arr_minute[i]){
				if(minute_pick == start_time_arr_minute[0] || minute_pick == start_time_arr_minute[start_time_arr_minute.length]){
					minute_pick = start_time_arr_minute[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	//copy for 1
	$('#end_minute_smaller_1').click(function(){
		start_time_pick = $('#end_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute.length;i++){
			if(minute_pick == start_time_arr_minute[i]){
				if(minute_pick == start_time_arr_minute[0] || minute_pick == start_time_arr_minute[start_time_arr_minute.length]){
					minute_pick = start_time_arr_minute[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});
	
	//copy for 2
	$('#end_minute_smaller_2').click(function(){
		start_time_pick = $('#end_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute.length;i++){
			if(minute_pick == start_time_arr_minute[i]){
				if(minute_pick == start_time_arr_minute[0] || minute_pick == start_time_arr_minute[start_time_arr_minute.length]){
					minute_pick = start_time_arr_minute[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	
	
	
	
	

	 // just for larger start
	
	$('#start_hour_larger').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#start_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour_larger.length;i++){
			if(hour_pick == start_time_arr_hour_larger[i]){
				if(hour_pick == start_time_arr_hour_larger[0] || hour_pick == start_time_arr_hour_larger[start_time_arr_hour_larger.length-1]){
					hour_pick = start_time_arr_hour_larger[i];
					$('#start_time').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour_larger[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 1
	$('#start_hour_larger_1').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#start_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour_larger.length;i++){
			if(hour_pick == start_time_arr_hour_larger[i]){
				if(hour_pick == start_time_arr_hour_larger[0] || hour_pick == start_time_arr_hour_larger[start_time_arr_hour_larger.length-1]){
					hour_pick = start_time_arr_hour_larger[i];
					$('#start_time_1').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour_larger[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 2
	$('#start_hour_larger_2').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#start_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour_larger.length;i++){
			if(hour_pick == start_time_arr_hour_larger[i]){
				if(hour_pick == start_time_arr_hour_larger[0] || hour_pick == start_time_arr_hour_larger[start_time_arr_hour_larger.length-1]){
					hour_pick = start_time_arr_hour_larger[i];
					$('#start_time_2').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour_larger[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	$('#start_minute_larger').click(function(){
		start_time_pick = $('#start_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute_larger.length;i++){
			if(minute_pick == start_time_arr_minute_larger[i]){
				if(minute_pick == start_time_arr_minute_larger[0] || minute_pick == start_time_arr_minute_larger[start_time_arr_minute_larger.length]){
					minute_pick = start_time_arr_minute_larger[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute_larger[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	//copy for 1
	$('#start_minute_larger_1').click(function(){
		start_time_pick = $('#start_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute_larger.length;i++){
			if(minute_pick == start_time_arr_minute_larger[i]){
				if(minute_pick == start_time_arr_minute_larger[0] || minute_pick == start_time_arr_minute_larger[start_time_arr_minute_larger.length]){
					minute_pick = start_time_arr_minute_larger[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute_larger[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});
	
	//copy for 2
	$('#start_minute_larger_2').click(function(){
		start_time_pick = $('#start_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute_larger.length;i++){
			if(minute_pick == start_time_arr_minute_larger[i]){
				if(minute_pick == start_time_arr_minute_larger[0] || minute_pick == start_time_arr_minute_larger[start_time_arr_minute_larger.length]){
					minute_pick = start_time_arr_minute_larger[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute_larger[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#start_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	$('#end_hour_larger').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#end_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour_larger.length;i++){
			if(hour_pick == start_time_arr_hour_larger[i]){
				if(hour_pick == start_time_arr_hour_larger[0] || hour_pick == start_time_arr_hour_larger[start_time_arr_hour_larger.length-1]){
					hour_pick = start_time_arr_hour_larger[i];
					$('#end_time').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour_larger[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 1
	$('#end_hour_larger_1').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#end_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour_larger.length;i++){
			if(hour_pick == start_time_arr_hour_larger[i]){
				if(hour_pick == start_time_arr_hour_larger[0] || hour_pick == start_time_arr_hour_larger[start_time_arr_hour_larger.length-1]){
					hour_pick = start_time_arr_hour_larger[i];
					$('#end_time_1').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour_larger[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	//copyed for 2
	$('#end_hour_larger_2').click(function(){
		//console.log(start_time_arr);
		start_time_pick = $('#end_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_hour_larger.length;i++){
			if(hour_pick == start_time_arr_hour_larger[i]){
				if(hour_pick == start_time_arr_hour_larger[0] || hour_pick == start_time_arr_hour_larger[start_time_arr_hour_larger.length-1]){
					hour_pick = start_time_arr_hour_larger[i];
					$('#end_time_2').animate({opacity:'0.2'},1000);//if out of the available range
				}else{
					hour_pick = start_time_arr_hour_larger[i-1];
				}
			}
		}

		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
	});
	
	$('#end_minute_larger').click(function(){
		start_time_pick = $('#end_time').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute_larger.length;i++){
			if(minute_pick == start_time_arr_minute_larger[i]){
				if(minute_pick == start_time_arr_minute_larger[0] || minute_pick == start_time_arr_minute_larger[start_time_arr_minute_larger.length]){
					minute_pick = start_time_arr_minute_larger[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute_larger[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});

	//copy for 1
	$('#end_minute_larger_1').click(function(){
		start_time_pick = $('#end_time_1').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute_larger.length;i++){
			if(minute_pick == start_time_arr_minute_larger[i]){
				if(minute_pick == start_time_arr_minute_larger[0] || minute_pick == start_time_arr_minute_larger[start_time_arr_minute_larger.length]){
					minute_pick = start_time_arr_minute_larger[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute_larger[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_1').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});
	
	//copy for 2
	$('#end_minute_larger_2').click(function(){
		start_time_pick = $('#end_time_2').val();//2011-11-11 22:33:11
		hour_pick = start_time_pick.substr(11,2);//22
		minute_pick = start_time_pick.substr(14,2);//33
		
		for(i=0;i<start_time_arr_minute_larger.length;i++){
			if(minute_pick == start_time_arr_minute_larger[i]){
				if(minute_pick == start_time_arr_minute_larger[0] || minute_pick == start_time_arr_minute_larger[start_time_arr_minute_larger.length]){
					minute_pick = start_time_arr_minute_larger[i];
					//if out of the available range
				}else{
					minute_pick = start_time_arr_minute_larger[i-1];
				}
			}
		}
		console.log(minute_pick);
		selected_date = $('.td_selected_row').text()=='' ? date:$('.td_selected_row').text();
		$('#end_time_2').val(selected_date + ' ' + hour_pick + ':' + minute_pick + ':' + '00');
		
	});


	
// just for larger end

	
	
	**comment out
	*****************************************************/
	
	/*
	// only choose the sub-table first
	$('#scheduleTable tr').each(function() {
		$(this).find("tr>td:first").css({color:"red", fontWeight:"bold"});
	});
	*/
	
	/*
	//column
	$('table').find('td').each(function(i) {
		if (i % 100 == 0) {//here is a problem
			$(this).click(function(){
				name = $(this).text();
				$(".td_selected_column").removeClass();
				$(this).toggleClass('td_selected_column');
				//console.log(name);
				
				if(typeof date =='undefined' || name == null || name == ''){
					return false;
				}else{
					$(".td_selected_cell").removeClass();
					ajaxfunc();
				}
					
			});
		}
	});
	
	//row
	$("table:first").find("tr:first td").click(function(){
		date = $(this).text();
		$(".td_selected_row").removeClass();
		$(this).toggleClass('td_selected_row');
		//console.log(date);
		
		if(typeof name =='undefined' || name == null || name == ''){
			return false;
		}else{
			$(".td_selected_cell").removeClass();
			ajaxfunc();
		}
	});
	*/
	
	
});//end of document ready
	




















