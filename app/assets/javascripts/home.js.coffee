# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

	
$ ->
	$("input#email").placeholder()
	$("#subForm").submit (e) =>
		e.preventDefault();
		if($("input.email").val()=="")
			$("input.email").addClass("red");
			return false;
		$.getJSON(
			$("#subForm").attr("action") + "?callback=?",
			$("#subForm").serialize(),
			->
				$("#subForm").addClass("hidden")
				$("#formConfirm").removeClass("hidden")
		)

	$("#update_button").click =>
		$("#subForm").removeClass("hidden")
		$("#update_button").addClass("hidden")
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
		if $(window).scrollTop()>200
			if $('#floating-menu').hasClass('fixed')
				$('#floating-menu').removeClass('fixed')
				$('#floating-menu').addClass('floating')
		else
			if $('#floating-menu').hasClass('floating')
				$('#floating-menu').removeClass('floating')
				$('#floating-menu').addClass('fixed')

	
