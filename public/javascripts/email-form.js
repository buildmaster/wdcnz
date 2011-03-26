WDCNZ = {
	text:["Web Dev Community","Tech talks for Web Devs","JavaScript, HTML5, CSS", ".NET, PHP, Ruby","Mobile, Security, Scale"],
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
		WDCNZ.setText(WDCNZ.text[WDCNZ.currentIndex]);
		
	},
	setText:function(newText)
	{
		$(".b-line").text(newText);
	},
}

jQuery(function($){
   
   $("#email").Watermark("ADD YOUR EMAIL FOR UPDATES","#74C9DE");
   WDCNZ.init();
});

