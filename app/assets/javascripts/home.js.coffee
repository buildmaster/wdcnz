# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
	$('#main-menu').onePageNav({
	  currentClass: 'current',
	  changeHash: true,
	  scrollSpeed: 750,
	  scrollOffset: 0,
	  scrollThreshold: 0.5,
	  filter: ':not(.external)',
	  easing: 'swing'
	});
	$(document).scroll => 
		$("#floating-menu").css('left',$("#floating-menu").position().left);
		if $(window).scrollTop()>240
			if $('#floating-menu').hasClass('fixed')
				$('#floating-menu').removeClass('fixed')
				$('#floating-menu').addClass('floating')
		else
			if $('#floating-menu').hasClass('floating')
				$('#floating-menu').removeClass('floating')
				$('#floating-menu').addClass('fixed')

	
