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
    <link rel="icon" href="/PBL3/template/image/Study1.png" type="image/icon type">
    <link rel="stylesheet" href="/PBL3/template/css/register.css">
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
		String firstName = (request.getAttribute("firstName")+"").equals("null")?"":request.getAttribute("firstName")+"";
		String lastName = (request.getAttribute("lastName")+"").equals("null")?"":request.getAttribute("lastName")+"";
		
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
                <div>
                <form action="/PBL3/register"  method ="get">
                	<table>
                		<tr>
                			<td><input class="signin-submit" name="firstName" id="firstName" type="text" placeholder="Họ" required="required" value="<%=firstName%>"></td>
                			<td><input class="signin-submit" name="lastName" id="lastName" type="text" placeholder="Tên" required="required" value="<%=lastName%>"></td>
                		</tr>
                		<tr>
                			<td><input name="sex" id="male" type="radio" required="required" value="male">
                			<label for="male">Nam</label></td>
                			<td><input name="sex" id="female" type="radio" required="required" value="female">
                			<label for="female">Nữ</label></td>
                		</tr>
                		<tr>
                			<td colspan="2"><input class="signin-submit" name="email" id = "email" type="email" placeholder="Email" 
                    		required="required" value = "<%=email %>"></td>
                		</tr>
                		<%
                    	if(error_email!=""){
                    	%>
                		<tr>
                			<td><div id = "error_email"><%=error_email %></div></td>
                		</tr>
                		<%} %>
                		
                		<tr>
                			<td colspan="2"><input class="signin-submit" name="password" id = "password" type="password" placeholder="Mật khẩu" required="required" onkeyup = "checkPassword()"></td>
                		</tr>
                		<tr>
                			<td colspan="2"><input class="signin-submit" name="re_password" id ="re_password" type="password" 
                    placeholder="Nhập lại mật khẩu" required = "required" onkeyup = "checkPassword()"></td>
                		</tr>
                		<tr>
                			<td colspan="2"><label class="pwd-not-same" for = "re_password"><p id = "msg"></p> </label></td>
                		</tr>
                		<tr>
                			<td colspan="2"> <div id = "error_password"><%=error_password%></div></td>
                		</tr>
                	</table>
                	
                    <input class="signin-submit-button" type="submit" name = "dangKi" id = "dangKi" value="ĐĂNG KÍ">
                </form>
                </div>
                <p class="login-signup">Bạn đã có tài khoản? <a href="login.jsp">Đăng nhập</a></p>
            </div>
        </div>
    </div>
</body>

<script>
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
</script>
</html>
