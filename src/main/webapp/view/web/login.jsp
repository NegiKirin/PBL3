<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp" %>

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
                
			<c:if test="${user==null}">
				<form action="/PBL3/login" method = "post">
                    <input class="login-submit" name="email" id = "email" type="email" required="required" placeholder="Email" value = "${email }">
                    <input class="login-submit-pwd" name="password" id = "password" type="password" required="required" placeholder="Mật khẩu" required>
                    <p class="error">${error }</p>
                    <input class="login-submit-button" type="submit" value="ĐĂNG NHẬP">
                </form>
                <p class="login-signup">Bạn chưa có tài khoản? <a href="/PBL3/view/web/register.jsp">Đăng kí</a></p>
			</c:if>
			
			<c:if test="${user!=null}">
				<div id="content-user">
                    <img alt="" src="data:image/jpeg;base64,${user.avatar}">
                    <h1 class="user-name">${user.firstName} ${user.lastName}</h1>
                    <li>
                        <button class="button-cont">
                            <a href="/PBL3/home">Tiếp tục đăng nhập</a> 
                        </button>
                    </li>
                    <li class="last-list">
                        <button class="button-logout">
                            <a href="/PBL3/logout">Đăng xuất </a> 
                        </button>
                    </li>
                </div>
			</c:if>

            </div>
        </div>
    </div>
</body>
</html>