###------------------------------------------------------------------------------------------------------------------------
 @package: wdcnz

 @author: Owen Evans
 @www: wdcnz.com

 @copyright: COPYRIGHT 7 Owen Evans
 @license: MIT

 =============================================================================
 Filename: main.coffee
 =============================================================================
 This file is the main entry point for coffeescript on the wdcnz app.
 ---------------------------------------------------------------------------------------------------------------------###
$ ->

	config =
		currentClass: 'current'
		changeHash: false
		scrollSpeed: 750
		scrollOffset: -25
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
	config.scrollOffset=20;
	$('#mobile-menu').onePageNav(
		config
	);
	$( '.hamburger' ).click =>
		$('.hamburger').addClass('hidden');
		$('.topmenu').removeClass('hidden');
	$('.topmenu a, .topmenu .close').click =>
		$('.hamburger').removeClass('hidden');
		$('.topmenu').addClass('hidden');
	$( window ).resize =>
		delete window.margin_left;
	$(document).scroll =>
		mq = window.matchMedia('(max-width: 400px)');
		if mq.matches
			return;
		window.margin_left = window.margin_left || $("#floating-menu").position().left;
		if $(window).scrollTop()>0
			if $('#floating-menu').hasClass('fixed')
				$('#floating-menu').removeClass('fixed');
				$('#floating-menu').addClass('floating');
				$("#floating-menu").css('left',window.margin_left);
		else
			if $('#floating-menu').hasClass('floating')
				$('#floating-menu').removeClass('floating');
				$('#floating-menu').addClass('fixed');
				delete window.margin_left;
