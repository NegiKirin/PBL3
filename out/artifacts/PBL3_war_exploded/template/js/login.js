$(function(){
	//$('.content-signin').hide();
	$('.button-signin').click(function(event){
		$('.content-login').animate({opacity:0,marginLeft:-100})
		$('.content-login').hide()
		$('.content-signin').show()
		$('.content-signin').animate({opacity:1,marginLeft:0})
	});
	$('.button-login').click(function(event){
		$('.content-signin').animate({opacity:0,marginLeft:-100})
		$('.content-signin').hide()
		$('.content-login').show()
		$('.content-login').animate({opacity:1,marginLeft:0})
	});
});


