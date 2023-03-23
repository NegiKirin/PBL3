
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="./css/register.css">
</head>
<body>

	<%
		Object obj = session.getAttribute("user");
		if(obj != null){
			response.sendRedirect("thanhcong.jsp");
		}
	
		String error_email = (request.getAttribute("error_email")+"").equals("null")?"":request.getAttribute("error_email")+"";
		String error_password = (request.getAttribute("error_password")+"").equals("null")?"":request.getAttribute("error_password")+"";
		String email = (request.getAttribute("email")+"").equals("null")?"":request.getAttribute("email")+"";
	
	%>

    <div id="main">
        <div id="header">
            <li><a href="">Thông tin về chúng tôi <i class="fa-sharp fa-solid fa-caret-down"></i></a></li>
            <li><a href="">Đóng góp <i class="fa-sharp fa-solid fa-caret-down"></i></a></li>
        </div>
        <div id="content">
            <div class="content-signin">
                <div class="content-signin-title">
                    <h1 class="content-signin-title-text">Đăng Kí</h1>
                    <li class="signin-icon"> <i class="fa-brands fa-facebook"></i> </li>
                    <li class="signin-icon"> <i class="fa-brands fa-github"></i> </li>
                    <li class="signin-icon"> <i class="fa-brands fa-google"></i> </li>
                
                </div>
                <form action="register"  method ="get">
                	
                    <input class="signin-submit" name="email" id = "email" type="email" placeholder="Email" 
                    required="required" value = "<%=email %>">
                    <div id = "error_email"><%=error_email %></div>
                    <input class="signin-submit" name="password" id = "password" type="password" placeholder="Mật khẩu" required="required" onkeyup = "checkPassword()">
                    
                    <input class="signin-submit" name="re_password" id ="re_password" type="password" 
                    placeholder="Nhập lại mật khẩu" required = "required" onkeyup = "checkPassword()">
                    <label class="pwd-not-same" for = "re_password"><span id = "msg"></span> </label>
                    <div id = "error_password">
                	<%=error_password %></div>
                    
                    <input class="signin-submit-button" type="submit" name = "dangKi" id = "dangKi" value="ĐĂNG KÍ">
                </form>
                <p class="login-signup">Bạn đã có tài khoản? <a href="./login.jsp">Đăng nhập</a></p>
            </div>
        </div>
    </div>
</body>

<script>
	function checkPassword(){
		password = document.getElementById("password").value;
		re_password = document.getElementById("re_password").value;

		if(password!=re_password){
			document.getElementById("msg").innerHTML = "Mật khẩu không khớp!";
			return false;
		}
		else{
			document.getElementById("msg").innerHTML = "";
			return true;
			}
		}
</script>
</html>
