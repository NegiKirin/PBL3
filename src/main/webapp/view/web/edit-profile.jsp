<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study With Me | Ứng dụng tìm kiếm người bạn học cùng</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="/PBL3/template/css/edit-profile.css">
</head>
<body>
    <div id="main">
        <div id="header">
            <div class="header-main">
                <li>
                    <a href="">
                        <button>
                            <i class="fa-solid fa-magnifying-glass"></i>
                        </button>
                    </a>
                </li>
                <li>
                    <a href="/PBL3/home.html">
                        <button class="header-main-mainbutton">
                            <i class="fa-solid fa-globe"></i>
                        </button>
                    </a>
                </li>
                <li>
                    <a href="">
                        <button>
                            <i class="fa-solid fa-book"></i>
                        </button>
                    </a>
                </li>
            </div>
            <div class="header-noti">
                <a href="">
                    <i class="fa-sharp fa-regular fa-bell"></i>
                </a>
            </div>
        </div>
        <div id="content">
            <div class="content-left">
                <div class="content-list-meeting">
                    <p class="text">Lịch hẹn</p>
                    <p class="all"><a href="">Tất cả</a></p>
                    <div class="content-left-item">
                        <p class="time-date"> 8 A.M - 9 A.M 08/03/2023</p>
                        <p class="with">Với</p>
                        <p class="name">Tran Le Nguyen</p>
                    </div>
                    <div class="content-left-item">
                        <p class="time-date"> 8 A.M - 9 A.M 08/03/2023</p>
                        <p class="with">Với</p>
                        <p class="name">Tran Le Nguyen</p>
                    </div>
                </div>
            </div>
            <div class="content-main">
                <h1 class="content-main-title">Chỉnh sửa thông tin cá nhân</h1>
                <form class="content-main-edit-infor">
                    <div class="edit-ava">
                        <p class="title-edit">Ảnh đại diện</p>
                        <a href=""><i class="fa-solid fa-user-pen"></i></a>
                        <img class="ava" src="/PBL3/image/avatarDefault.png" alt="">
                    </div>
                    <div class="edit-background">
                        <p class="title-edit">Ảnh bìa</p>
                        <a href=""><i class="fa-solid fa-user-pen"></i></a>
                        <img class="background" src="/PBL3/image/backgroundDefault.png" alt="">
                    </div>
                    <div class="edit-name">
                        <p class="title-edit">Họ tên</p>
                        <input type="text" value="Lê Việt Thanh" class="name_user">
                    </div>
                    <div class="edit-infor">
                        <p class="title-edit">Thông tin cá nhân</p>
                        <div class="list">
                            <i class="fa-solid fa-heart"></i>
                            <p class="content">Giới tính:</p>
                            <p class="infor">Nam</p>
                        </div>
                        <div class="list">
                            <i class="fa-solid fa-school"></i>
                            <p class="content">Trường học:</p>
                            <input type="text" value="Trường Đại học Bách khoa, Đại học Đà Nẵng" class="infor">
                        </div>
                        <div class="list">
                            <i class="fa-solid fa-location-dot"></i>
                            <p class="content">Địa chỉ:</p>
                            <input type="text" value="60 Nguyễn Lương Bằng, Hòa Khánh Bắc" class="infor">
                        </div>
                    </div>
                    <div class="edit-infor-account">
                        <p class="title-edit">Thông tin tài khoản</p>
                        <div class="list">
                            <p class="content">Email:</p>
                            <input type="text" value="thanhleviet723@gmail.com" class="infor">
                        </div>
                        <div class="list">
                            <p class="content">Mật khẩu:</p>
                            <input type="text" value="********" class="infor">
                        </div>
                    </div>
                    <input type="submit" value="Xác nhận thay đổi" class="submit">
                </form>
            </div>
            <div class="content-right">
                <div class="list-friends">
                    <p class="list-friends-title">Danh sách bạn bè</p>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>