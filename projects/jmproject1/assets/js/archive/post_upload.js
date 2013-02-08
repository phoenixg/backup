/**
 * textarea区域颜色切换 
 * 
 */
$(document).ready(function()
{
	$("textarea#upload").focus(function(){
		$(this).text("");
		setbg('green');
	});
	
	$("textarea#upload").blur(function(){
		setbg('');
	});
	
});

function setbg(color)
{
	document.getElementById("upload").style.background = color;
}

/**
 * 格式化选中文本
 */

//返回选中文本的开始位置和结束位置
function getPositions(){
	var startPosition = endPosition = 0;
	var element = document.getElementById('upload');
	if (document.selection) 
	{
		//for Internet Explorer
		var range = document.selection.createRange();
		var dRange = range.duplicate();
		dRange.moveToElementText(element);
		dRange.setEndPoint("EndToEnd", range);
		startPosition = dRange.text.length - range.text.length;
		endPosition = startPosition  + range.text.length;
	}
	else if (window.getSelection) 
	{
		//For Firefox, Chrome, Safari etc
		startPosition = element.selectionStart;
		endPosition = element.selectionEnd;
		
	}
	
	//console.log(startPosition, endPosition);
	return {'start': startPosition, 'end': endPosition};
}

//应用格式并显示于指定元素内
$('#apply').click(function(){
	var html = $('#contain').html($('#upload').val());
});


//点击某格式元素，就执行格式改变
$('.tag').click(function(){
	//获得选中文本的开始和结束位置
	var positions = getPositions();
	
	if(positions.start == positions.end)
	{
		return false;
	}
	
	//选中了什么元素
	var tag = $(this).text().toLowerCase();//eg. i u b		

	console.log(tag);
	
	//全文文本
	var textOnPage = $('#upload').val();
	//最开始到选中处的文本开始
	var startString = textOnPage.substr(0, positions.start);
	//选中的文本
	var targetString = textOnPage.substr(positions.start, positions.end - positions.start);
	//加标签以后选中的文本
	var formattedString = "<" + tag +">" + targetString + "</" + tag +">";
	//选中处文本末至文章末
	var endString = textOnPage.substr(positions.end);
	//重新拼合文本
	$('#upload').val(startString + formattedString + endString);
});
