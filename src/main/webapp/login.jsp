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
    <link rel="stylesheet" href="./css/login.css">
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
                <form action="">
                    <input class="login-submit" name="email" type="email" placeholder="Email">
                    <input class="login-submit-pwd" name="password" type="password" placeholder="Mật khẩu" required>
                    <label class="toggle" for="toggle">
                        <input type="checkbox" id="toggle">
                        <div class="slider"></div>
                    </label>
                    <p class="login-remember"> Ghi nhớ đăng nhập</p>
                    <input class="login-submit-button" type="submit" value="ĐĂNG NHẬP">
                </form>
                <p class="login-signup">Bạn chưa có tài khoản? <a href="./index.jsp">Đăng kí</a></p>
            </div>
        </div>
    </div>
</body>

</body>
</html>