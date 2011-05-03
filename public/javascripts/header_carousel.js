WDCNZ = {
	text:["Tech talks for web devs","Web dev conversations","JavaScript, HTML5, CSS","Mobile, Security, Scale"],
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
   WDCNZ.init();
});