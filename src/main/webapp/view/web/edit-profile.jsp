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
                    <a href="../home/home.html">
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
                    <div class="edit-background">
                        <img class="background" src="../image/background.png" alt="">
                        <input type="file" name="background" id="nackground" accept="image/*" />
                    </div>
                    <div class="edit-ava">
                        <img class="ava" src="../image/ava1.png" alt="">
                        <input type="file" name="avatar" id="avatar" accept="image/*" />
                    </div>
                    <div class="edit-name">
                        <p class="title-edit">Họ tên</p>
                        <input type="text" value="Lê Việt" class="first-name-user">
                        <input type="text" value="Thanh" class="last-name-user">
                    </div>
                    <div class="edit-infor">
                        <p class="title-edit">Thông tin cá nhân</p>
                        <div class="list">
                            <i class="fa-solid fa-heart"></i>
                            <p class="content">Giới tính:</p>
                            <select class="list-sex" name="" id="">
                                <option selected>Nam</option>
                                <option>Nữ</option>
                                <option>Khác</option>
                            </select>
                        </div>
                        <div class="list">
                            <i class="fa-solid fa-school"></i>
                            <p class="content">Trường học:</p>
                            <input placeholder="Chọn trường" list="list-school" id="school-choice" name="school-choice">

                            <datalist id="list-school">
                                <option value="Trường Đại học Bách khoa, Đại học Đà Nẵng">
                                <option value="Trường Đại học Kinh tế, Đại học Đà Nẵng">
                                <option value="Trường Đại học Kiến trúc Đà Nẵng">
                            </datalist>
                        </div>
                        <div class="list">
                            <i class="fa-solid fa-cake-candles"></i>
                            <p class="content">Ngày sinh:</p>
                            <input type="date" value="none" class="date">
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