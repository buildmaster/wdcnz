# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

	
$ ->
	$("#update_button").click =>
		$("#contact").removeClass("collapsed")
		$("#contact div").removeClass("hidden")
		$(window).scrollTo("#contact",800)
		return false
	config =
		currentClass: 'current'
		changeHash: false
		scrollSpeed: 750
		scrollOffset: 19
		scrollThreshold: 0.5
		filter: ':not(.external)'
		easing: 'swing'
		begin: () -> 
			$('body').append('<div id="device-dummy" style="height: 1px;"></div>')
			return
		end: () -> 
			$('#device-dummy').remove()
	$('#main-menu').onePageNav(
		config
	);
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

	
