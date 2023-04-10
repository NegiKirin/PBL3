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


function checkPassword(){
		password = document.getElementById("password").value;
		re_password = document.getElementById("re_password").value;

		if(password!=re_password){
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp";
			return false;
		}
		else{
			document.getElementById("msg").innerHTML = "";
			return true;
			}
		}