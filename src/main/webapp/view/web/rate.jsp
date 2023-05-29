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
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../../template/css/rate.css">
</head>
<body>
<div id="main">
    <div id="header">
        <div class="header-info-user" >
            <img src="../image/ava.png" alt="">
            <a href="../edit-infor/edit-infor.html"><p class="header-info-user-name"> Ho va ten </p></a>
            <i class="fa-solid fa-user-pen"></i>
        </div>
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
            <h1 class="content-main-title">Danh</h1>

            <div class = "crete-rate">
                <div class="scrollable-container">
                    <div class="list-rate">
                        <div class="rate">
                            <p class="ID"><img class="avata-host" src="../../template/image/avatarDefault.png" alt=""></i>  Lê Thanh</p>
                            <p class="time-date"><i class="fa-solid fa-clock"></i> 8 A.M - 9 A.M 08/03/2023</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i> 60 Nguyen Luong Bang</p>
                            <button class="show-button" title="Xem thành viên"></i>Đánh giá<i class="fa-solid fa-caret-down"></i></button>
                        </div>
                        <form class="list">
                            <p class="content-list">Danh sách thành viên:</p>
                            <div class="member">
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Nguyen Pham Phuc Tan</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Hồ Duy Phúc</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Lê Việt Thanh</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="abc">
                                <button class="accept button"></i>Xác nhận</button>
                                <button class="denied button"></i>Hủy</button>
                            </div>
                        </form>
                    </div>
                    <div class="list-rate">
                        <div class="rate">
                            <p class="ID"><img class="avata-host" src="../../template/image/avatarDefault.png" alt=""></i>  Lê Thanh</p>
                            <p class="time-date"><i class="fa-solid fa-clock"></i> 8 A.M - 9 A.M 08/03/2023</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i> 60 Nguyen Luong Bang</p>
                            <button class="show-button" title="Xem thành viên" ></i>Đánh giá<i class="fa-solid fa-caret-down"></i></button>
                        </div>
                        <form class="list" >
                            <p class="content-list">Danh sách thành viên:</p>
                            <div class="member">
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Nguyen Pham Phuc Tan</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Hồ Duy Phúc</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Lê Việt Thanh</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="abc">
                                <button class="accept button"></i>Xác nhận</button>
                                <button class="denied button"></i>Hủy</button>
                            </div>
                        </form>
                    </div>
                    <div class="list-rate">
                        <div class="rate">
                            <p class="ID"><img class="avata-host" src="../../template/image/avatarDefault.png" alt=""></i>  Lê Thanh</p>
                            <p class="time-date"><i class="fa-solid fa-clock"></i> 8 A.M - 9 A.M 08/03/2023</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i> 60 Nguyen Luong Bang</p>
                            <button class="show-button" title="Xem thành viên" id="showbtn"></i>Đánh giá<i class="fa-solid fa-caret-down"></i></button>
                        </div>
                        <form class="list" id="myElement">
                            <p class="content-list">Danh sách thành viên:</p>
                            <div class="member">
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Nguyen Pham Phuc Tan</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Hồ Duy Phúc</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                                <div class="item">
                                    <img class="avata-member" src="../../template/image/avatarDefault.png" alt="">
                                    <p class="Name-member">Lê Việt Thanh</p>
                                    <div class="rate-start">
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                        <i class="fa-solid fa-star"></i>
                                    </div>
                                </div>
                            </div>
                            <div class="abc">
                                <button class="accept button"></i>Xác nhận</button>
                                <button class="denied button"></i>Hủy</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="content-right">
            <div class="list-friends">
                <p class="list-friends-title">Danh sách bạn bè</p>
                <div class="list-friends-item">
                    <img src="../../template/image/avatarDefault.png" alt="">
                    <p class="name"><a href=""> Ho va ten </a></p>
                    <i class="fa-solid fa-mug-saucer"></i>
                </div>
                <div class="list-friends-item">
                    <img src="../../template/image/avatarDefault.png" alt="">
                    <p class="name"><a href=""> Ho va ten </a></p>
                    <i class="fa-solid fa-mug-saucer"></i>
                </div>
                <div class="list-friends-item">
                    <img src="../../template/image/avatarDefault.png" alt="">
                    <p class="name"><a href=""> Ho va ten </a></p>
                    <i class="fa-solid fa-mug-saucer"></i>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="../../template/js/rate.js" ></script>
</body>
</html>

