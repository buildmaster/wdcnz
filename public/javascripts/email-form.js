WDCNZ = {
	text:["Tech talks for web devs","Web dev conversations","JavaScript, HTML5, CSS", ".NET, PHP, Ruby","Mobile, Security, Scale"],
	currentIndex:0,
	init:function(){
		this.interval = setInterval(this.rotateText,5000,this)
	},
	rotateText:function(){
		WDCNZ.currentIndex++;
		if(WDCNZ.currentIndex>=WDCNZ.text.length)
		{
			WDCNZ.currentIndex = 0;
		}
		WDCNZ.fadeText();
		setTimeout(WDCNZ.setText,500);
		
	},
	fadeText:function(){
		$(".b-line").addClass('fade');
	},
	setText:function()
	{
		
		$(".b-line").text(WDCNZ.text[WDCNZ.currentIndex]);
		$(".b-line").removeClass('fade');
	},
}

jQuery(function($){
   if($("#email").width()==200){
		$("#email").Watermark("ADD YOUR EMAIL","#D8D8D9")
	}
	else{
   $("#email").Watermark("ADD YOUR EMAIL FOR UPDATES","#D8D8D9");
	}
   WDCNZ.init();
 	$("#slide1 .right").bind('click',function(){
		$('#slide1').removeClass('selected');
		$('#slide1').addClass('previous');
		$('#slide2').addClass('selected');
		$('#slide2').removeClass('next')
		return false;
	});

	$("#slide2 .left").bind('click',function(){
		$('#slide2').removeClass('selected');
		$('#slide2').addClass('next');
		$('#slide1').addClass('selected');
		$('#slide1').removeClass('previous')
		return false;
	});
   $("#slide2 .right").bind('click',function(){
		$('#slide2').removeClass('selected');
		$('#slide2').addClass('previous');
		$('#slide3').addClass('selected');
		$('#slide3').removeClass('next')
		return false;
	});
   $("#slide3 .left").bind('click',function(){
		$('#slide2').addClass('selected');
		$('#slide2').removeClass('previous');
		$('#slide3').removeClass('selected');
		$('#slide3').addClass('next')
		return false;
	});
});

