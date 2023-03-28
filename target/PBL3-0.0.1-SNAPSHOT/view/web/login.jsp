<%@page import="com.studywithme.model.User"%>
<%@page import="java.util.Base64"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study With Me | Ứng dụng tìm kiếm người bạn học cùng</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/PBL3/template/css/login.css">
    <link rel="icon" href="/PBL3/template/image/Study1.png" type="image/icon type">
</head>
<body>
<%
	String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
	String email = (request.getAttribute("email")+"").equals("null")?"":request.getAttribute("email")+"";
	String error = (request.getAttribute("error")+"").equals("null")?"":request.getAttribute("error")+"";
	Object obj = session.getAttribute("user");
	User user = null;
	if(obj != null){
		user = (User)obj;
	}
	//if(obj != null){
	//	response.sendRedirect("thanhcong.jsp");
	//}
	
	
%>

   <div id="main">
        <div id="header">
            <li><a href="">Thông tin về chúng tôi <i class="fa-sharp fa-solid fa-caret-down"></i></a></li>
            <li><a href="">Đóng góp <i class="fa-sharp fa-solid fa-caret-down"></i></a></li>
        </div>
        <div id="content">
            <div class="content-slogan">
                <p class="content-sologan-text">Nơi giúp bạn tìm kiếm những người bạn học cùng ...</p>
            </div>
            <div class="content-login">
                <div class="content-login-title">
                    <h1 class="content-login-title-text">Đăng Nhập</h1>
                    <li class="login-icon"> <i class="fa-brands fa-facebook"></i> </li>
                    <li class="login-icon"> <i class="fa-brands fa-github"></i> </li>
                    <li class="login-icon"> <i class="fa-brands fa-google"></i> </li>
                </div>
                <%if(user == null){ %>
                <form action="/PBL3/login" method = "post">
                	
                    <input class="login-submit" name="email" id = "email" type="email" required="required" placeholder="Email" value = "<%= email%>">
                    <input class="login-submit-pwd" name="password" id = "password" type="password" required="required" placeholder="Mật khẩu" required>
                    <!--  <label class="toggle" for="toggle">
                        <input type="checkbox" id="toggle">
                        <div class="slider"></div>
                        <p class="login-remember"> Ghi nhớ đăng nhập</p>
                    </label>-->
                    <p class="error"><%=error %></p>
                    <input class="login-submit-button" type="submit" value="ĐĂNG NHẬP">
                </form>
                <p class="login-signup">Bạn chưa có tài khoản? <a href="./register.jsp">Đăng kí</a></p>
                <%}else{
                	String base64Image = Base64.getEncoder().encodeToString(user.getAvatar());
                	%>
                <div id="content-user">
                    <!--  <img src="./image/ava.png" alt="">-->
                    <img alt="" src="data:image/jpeg;base64,<%=base64Image %>">
                    <h1 class="user-name"><%=user.getFirstName() %> <%=user.getLastName() %></h1>
                    <li>
                        <button class="button-cont">
                            <a href="/PBL3/view/web/thanhcong.jsp">Tiếp tục đăng nhập</a> 
                        </button>
                    </li>
                    <li class="last-list">
                        <button class="button-logout">
                            <a href="/PBL3/logout">Đăng xuất </a> 
                        </button>
                    </li>
                </div>
                <%} %>
                
            </div>
        </div>
    </div>
</body>
</html>