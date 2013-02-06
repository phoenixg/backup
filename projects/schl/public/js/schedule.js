$(document).ready(function() {
	var base, interval;//for YFT

	var address = 'http://10.254.241.93/schedule/index.php/';
	var cpname = '';//eg. genshan
	var cpdate = '';//eg. 2011-11-11
	var cpnmem = '';//eg. 3
	var cpdetl = '';
	var cp_start_time_h = '';
	var cp_start_time_m = '';
	var cp_end_time_h = '';
	var cp_end_time_m = '';
	
	var cpflg = false;


	$('#pastespan').hide();
	$("#addForm").hide();	
	$('#edForm_1,#edForm_2,#edForm_3').hide();
	$('div#eventInfo_all').hide();
	$('td[id]').hover(function(){
		$(this).css({ cursor: "pointer"});
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
	$('input[id^="start_time_h"],input[id^="end_time_h"]').live('blur',function(){

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

	$('input[id^="start_time_m"],input[id^="end_time_m"]').live('blur',function(){
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
	
	$('input[id^="end_time_h"]').live('blur',function(){
		if($(this).val()<$(this).prev().prev().val()){
			$(this).val('').css({'background-color':'red'});
		}
		
		if($(this).val() == $(this).prev().prev().val()){
			if($(this).next().val() < $(this).prev().val()){
				$(this).next().val('').css({'background-color':'red'});
			}
		}
	});
	
	$('input[id^="end_time_m"]').live('blur',function(){
		if($(this).prev().val() == $(this).prev().prev().prev().val()){
			if($(this).val() < $(this).prev().prev().val()){
				$(this).val('').css({'background-color':'red'});
			}
		}
	});


	//set the default hour and time for addForm
	$('#start_time_h').val('09'); 
	$('#start_time_m').val('00');
	$('#end_time_h').val('18');
	$('#end_time_m').val('00');

	
	//copy link click
	$('#copy').click(function(){
				
		var id = $('.td_selected_cell').attr('id');//eg. 0-0,0-1,0-2 ...
		if(id == null || id =='' || id == undefined){
			alert('Please choose a cell you are going to copy');return false;
		}

		var splitted_id = id.split('-');
		var n_member = splitted_id['0'];
		var n_date = splitted_id['1']; 
		//console.log('n_member:',n_member,'n_date:',n_date);
	
		var name = $("tbody tr strong").eq(n_member).text();
		var date = $("thead tr strong").eq(n_date).attr('id');
		//console.log(name,date); //eg. huangfeng 2011-11-22
		
		var	trcnt = (($('.td_selected_cell .subTable tbody tr').length - 1)/2);
		
		if(trcnt < 1) {
			alert('Please choose a cell which has at lease one event');return false;
		}


		$('#copyspan').fadeOut(100);

		//loop to parse cell contant into an array:cell
		var my_start_time = new Array();
		for(i=0;i<trcnt;i++){
			my_start_time[i] = $('.td_selected_cell .subTable .ev_'+i+'_du td:first').text();
			//console.log(my_start_time[i]);
		}
		
		var my_start_time_h = new Array();
		for(i=0;i<trcnt;i++){
			my_start_time_h[i] = my_start_time[i].substring(0,2);
		}
		
		var my_start_time_m = new Array();
		for(i=0;i<trcnt;i++){
			my_start_time_m[i] = my_start_time[i].substring(3,5);
		}

		var my_end_time = new Array();
		for(i=0;i<trcnt;i++){
			my_end_time[i] = $('.td_selected_cell .subTable .ev_'+i+'_du td:last').text();
		}

		var my_end_time_h = new Array();
		for(i=0;i<trcnt;i++){
			my_end_time_h[i] = my_end_time[i].substring(0,2);
		}
		
		var my_end_time_m = new Array();
		for(i=0;i<trcnt;i++){
			my_end_time_m[i] = my_end_time[i].substring(3,5);
		}

		var my_detail = new Array();
		for(i=0;i<trcnt;i++){
			my_detail[i] = $('.td_selected_cell .subTable .ev_'+i+'_de td').attr('title');
		}
	
		$('#pastespan').delay(100).fadeIn(100);

		$('#paste').click(function(){
		
			var	newid = $('.td_selected_cell').attr('id');//eg. 0-0,0-1,0-2 ...
			if(id==newid){
				alert('This is the origin cell');	
				setTimeout(function(){document.location.href = address + "schdl/index";},300);return false;
			};

			var	newsplitted_id = newid.split('-');
			var newn_member = newsplitted_id['0'];
			var newn_date = newsplitted_id['1']; 
			//console.log('n_member:',n_member,'n_date:',n_date);

			newname = $("tbody tr strong").eq(newn_member).text();
			newdate = $("thead tr strong").eq(newn_date).attr('id');
			for(i=0;i<trcnt;i++){
				//actually not using global here	
				ajaxinsertforcopy(newname,newdate,newn_member,my_detail[i],my_start_time_h[i],my_start_time_m[i],my_end_time_h[i],my_end_time_m[i]);	
				//console.log(newname,newdate,newn_member,my_detail[i],my_start_time_h[i],my_start_time_m[i],my_end_time_h[i],my_end_time_m[i]);
			}	
			setTimeout(function(){document.location.href = address + "schdl/index";},300);
		});

	});	
	
	//copy single event
	$("[id^='copysingle_']").live('click',function(){
		var my_start_time_h = $(this).prev().prev().prev().prev().prev().prev().prev().prev().val();
		var my_start_time_m = $(this).prev().prev().prev().prev().prev().prev().prev().val();
		var my_end_time_h = $(this).prev().prev().prev().prev().prev().prev().val();
		var my_end_time_m = $(this).prev().prev().prev().prev().prev().val();
		var my_detail = $(this).prev().prev().prev().prev().val();
		
		cpdetl = my_detail;
		cp_start_time_h = my_start_time_h;
		cp_start_time_m = my_start_time_m;
		cp_end_time_h = my_end_time_h;
		cp_end_time_m = my_end_time_m;
		//console.log(my_start_time_h, my_start_time_m, my_end_time_h, my_end_time_m, my_detail);
		
		cpflg = true;	
		//display information tell people to click one cell as paste destination
		$("#edForm").html("<p>Copied! Select a cell to paste</p>");
	});
	
	
	
	//ajaxinsertforcopy
	function ajaxinsertforcopy(cpname,cpdate,cpnmem,cpdetl,cp_start_time_h,cp_start_time_m,cp_end_time_h,cp_end_time_m)
	{
		$.ajax({
			url:address + "schdl/ajaxaddevent",
			data:"name="+cpname+
				"&date="+cpdate+
				"&n_member="+cpnmem+
				"&start_time_h="+cp_start_time_h+
				"&start_time_m="+cp_start_time_m+
				"&end_time_h="+cp_end_time_h+
				"&end_time_m="+cp_end_time_m+
				"&detail="+cpdetl,	
			type:"POST",
			dataType:"json",
			success:function(re){
				//console.log(re);alert(re);return false;
				if(re == 1||re==true) {
				//	document.location.href = address + "schdl/index";
				}
			},
		
			error:function(re) {
				console.log(re);
			}
		
		});
	}//end of ajaxinsertforcopy
	
	
	
	
	//edit link (new)
	$('td[id]').each(function(){
		$(this).dblclick(function(){
			if($('#edForm').html()!=''){
				$('#edForm').html('').slideUp(200);
				return false;
			}
			
			if($(this).attr('class') != 'td_selected_cell'){
				$(this).addClass('td_selected_cell');
			}
		
			id = $('.td_selected_cell').attr('id');		
			if(!id) {alert('please choose one box first');return false;}
	
			var	trcnt = (($('.td_selected_cell .subTable tbody tr').length - 1)/2);
			
			//loop to parse cell contant into an array:cell
			var my_start_time = new Array();
			for(i=0;i<trcnt;i++){
				my_start_time[i] = $('.td_selected_cell .subTable .ev_'+i+'_du td:first').text();
			}

			var my_end_time = new Array();
			for(i=0;i<trcnt;i++){
				my_end_time[i] = $('.td_selected_cell .subTable .ev_'+i+'_du td:last').text();
			}

			var my_detail = new Array();
			for(i=0;i<trcnt;i++){
				my_detail[i] = $('.td_selected_cell .subTable .ev_'+i+'_de td').attr('title');
			}

			if($('.td_selected_cell .subTable').text().length == 0){//for add new
				$('#add').click();	//toggle the add form
			}else{//now loop to generate edit forms 
				$('#addForm').slideUp(200);
				//$('#edForm').html('');
				for(i=0;i<trcnt;i++){
					
					$edformHTML = '<div id="edForm_'+i+'">';
					$edformHTML += '<input type="text" name="start_time_h_'+i+'" id="start_time_h_'+i+'" value="" size="2" maxlength="2" />HH&nbsp;:&nbsp;';
					$edformHTML += '<input type="text" name="start_time_m_'+i+'" id="start_time_m_'+i+'" value="" size="2" maxlength="2" />MM&nbsp;:&nbsp;';
					$edformHTML += '<input type="text" name="end_time_h_'+i+'" id="end_time_h_'+i+'" value="" size="2" maxlength="2" />HH&nbsp;:&nbsp;';
					$edformHTML += '<input type="text" name="end_time_m_'+i+'" id="end_time_m_'+i+'" value="" size="2" maxlength="2" />MM';
					$edformHTML += '<input type="text" name="detail_'+i+'" id="detail_'+i+'" value="" sieze="50" maxlength="50" />';
					$edformHTML += '<a class="clssubmit" id="submit_'+i+'" href="javascript:void(0)">edit</a>&nbsp;';					
					$edformHTML += '<a class="clsdelete" id="delete_'+i+'" href="javascript:void(0)">delete</a>&nbsp;';					
					$edformHTML += '<a class="clsconfirm" id="dconfirm_'+i+'" href="javascript:void(0)">confirm</a>&nbsp;';			
					$edformHTML += '<a class="clscopysingle" id="copysingle_'+i+'" href="javascript:void(0)">copy</a>&nbsp;';
					$edformHTML += '</div>';	
					
					$('#edForm').slideDown(200).append($edformHTML);
					
					$('#start_time_h_'+i).val((my_start_time[i].substring(0,2)));	
					$('#start_time_m_'+i).val((my_start_time[i].substring(3,5)));
					$('#end_time_h_'+i).val((my_end_time[i].substring(0,2)));
					$('#end_time_m_'+i).val((my_end_time[i].substring(3,5)));
					$('#detail_'+i).val(my_detail[i]);
				}
				
				$('.clsconfirm').hide();
			}//end if...else...

		});//end of dblclick
	});//end of edit link(new)

	//edit
	$('.clssubmit').live('click',function(){
		var start_time_h = $(this).prev().prev().prev().prev().prev().val();
		var start_time_m = $(this).prev().prev().prev().prev().val();
		var start_time = '20111111' + start_time_h + start_time_m + '00';
		var end_time_h = $(this).prev().prev().prev().val();
		var end_time_m = $(this).prev().prev().val();
		var end_time = '20111111' + end_time_h + end_time_m + '00';
		var detail = $(this).prev().val();

		var	orderOfForm = $('div[id^="edForm"]').index($(this).parent());
		//console.log(orderOfForm);return false;	
		if($('.td_selected_cell span.hideId').text().indexOf('-')>0){
			var event_id = $('.td_selected_cell span.hideId').text().split("-");
			var event_id = $.trim(event_id[orderOfForm - 1]);
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

	//delete
	$('.clsdelete').live('click',function(){
		$(this).fadeOut(100);
		$(this).next().delay(100).fadeIn(200);
		var orderOfForm	= $('div[id^="edForm"]').index($(this).parent());

		if($('.td_selected_cell span.hideId').text().indexOf('-')>0){
			var event_id = $('.td_selected_cell span.hideId').text().split("-");
			var event_id = $.trim(event_id[orderOfForm - 1]);
		}else{
			var event_id = $('.td_selected_cell span.hideId').text();
		}

		$('.clsconfirm').live('click',function(){
			ajaxdevt(event_id);
		});
		
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
	}//end of ajaxedt

	
	//add link
	$('#add').click(function(){
		$('div[id^="edForm"]').slideUp(200);
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

		$('#addspan').show();//is this essential?
		$('#addForm').slideUp(200);
		//$('div#eventInfo_all').delay(100).fadeIn(200);
		
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
		//console.log(name,date); //eg. huangfeng 2011-11-22
		
		//copied ~~~
		var	trcnt = (($('.td_selected_cell .subTable tbody tr').length - 1)/2);
			
		//loop to parse cell contant into an array:cell
		var my_start_time = new Array();
		for(i=0;i<trcnt;i++){
			my_start_time[i] = $('.td_selected_cell .subTable .ev_'+i+'_du td:first').text();
			//console.log(my_start_time[i]);
		}

		var my_end_time = new Array();
		for(i=0;i<trcnt;i++){
			my_end_time[i] = $('.td_selected_cell .subTable .ev_'+i+'_du td:last').text();
		}

		var my_detail = new Array();
		for(i=0;i<trcnt;i++){
			my_detail[i] = $('.td_selected_cell .subTable .ev_'+i+'_de td').attr('title');
		}
		
		$('#eventInfo_list').html('');
		for(i=0;i<trcnt;i++){
			$disHTML = '<div id="eventInfo_'+i+'">';
			//$disHTML += '<h5 style="display:none;"></h5>';
			$disHTML += '<span id="st_'+i+'">'+'['+my_start_time[i]+ ' -' +'</span>';
			$disHTML += '<span id="et_'+i+'">'+ my_end_time[i]+']</span>';
			$disHTML += '<div id="dtail_'+i+'">'+my_detail[i]+'</div>';					
			$disHTML += '</div>';	

			$('#eventInfo_list').append($disHTML);
		}
		
		$('#eventInfo_all').css({
			'font-size':'1.1em',
			'padding-bottom':'1.5em',
			'font-style':'italic'
		}).fadeIn('200');
	
		$('div[id^="dtail"]').css({
			'text-indent':'12px',
			'width':'200px',
			'font-style':'normal',
			'font-size':'1.2em'
		});
	
		$('#eventInfo_all > h2').css({
			'font-size':'2.0em',
			'font-style':'normal'
		});


		if(cpflg == true){
			var	newid = $('.td_selected_cell').attr('id');//eg. 0-0,0-1,0-2 ...
			var	newsplitted_id = newid.split('-');
			var newn_member = newsplitted_id['0'];
			var newn_date = newsplitted_id['1']; 
			//console.log('n_member:',n_member,'n_date:',n_date);
			var newname = $("tbody tr strong").eq(newn_member).text();
			var newdate = $("thead tr strong").eq(newn_date).attr('id');

			//console.log(newname,newdate,newn_member,cpdetl,cp_start_time_h,cp_start_time_m,cp_end_time_h,cp_end_time_m);
			ajaxinsertforcopy(newname,newdate,newn_member,cpdetl,cp_start_time_h,cp_start_time_m,cp_end_time_h,cp_end_time_m);	
			cpflg == false;
			YFT();
			//setTimeout("2000");
			setTimeout(function(){document.location.href = address + "schdl/index";},1000);
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


	function YFT()
	{
		$('#edForm').html('<p>Pasted!</p>');
		base = 52;
		interval = setInterval(fade,100);
	}
	function fade()
	{
		if(base > 255)
			clearInterval(interval);
		else
			$('p').css({'background-color':'rgb(199,95,'+ (base+=10) +')'}
	);
	}

	$("#eventInfo_all").toggle(
		function(){
			$(this).animate({width:"10px"},500);
			//defined as global
			eventInfo_tmp =	$(this).html();	
			$(this).html("");
		},
		function(){
			$(this).animate({width:"300px"},500);
			$(this).html(eventInfo_tmp);
		}
	);


	
	
});//end of document ready
	




















