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
    <link rel="stylesheet" href="<c:url value="/template/css/create-appointment.css"/>">
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
            <h1 class="content-main-title">Chỉnh sửa lịch đặt hẹn của bạn</h1>
            <div>
                <div class = create-appointment>
                    <p class = "your-calender">Lịch của bạn</p>
                    <p class = "create">Tạo mới các lịch hẹn</p>
                    <div class="content-main-edit-infor">
                        <img class="background" src="../image/background.png" alt="">
                        <img class="ava" src="../image/ava1.png" alt="">
                        <div class="infor-user">
                            <p class = "date">Ngày 5/3/2023</p>
                            <div class="time">8 A.M - 12 A.M</div>
                            <div class="address">
                                <i class="fa-solid fa-location-dot"></i>
                                144 Nguyễn Lương Bằng, Liên Chiểu
                            </div>
                        </div>
                    </div>
                    <p class = "time-begin">Giờ bắt đầu:</p>
                    <p class = "time-end">Giờ kết thúc:</p>
                    <p class = "palace">Địa điểm:</p>

                    <input type="time" class="text1">
                    <input type="time" class="text2">
                    <input type="text" class="text3">
                    <button class="button">TẠO NGAY</button>

                </div>
            </div>
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
<div class="vice-main" id="myDIV">
    <div class="edit-infor">
        <h1 class="edit-infor-title">Chỉnh sửa thông tin cá nhân</h1>
        <p class="title-edit">Ảnh bìa</p>
        <form class="edit-background" runat="server">
            <img id="blah1" src="../image/background.png" alt="your image" />
            <input class="input-img" accept="image/*" type='file' id="imgInp1" />
            <button class="submit">Xác nhận thay đổi</button>
            <script>
                imgInp1.onchange = evt => {
                    const [file] = imgInp1.files
                    if (file) {
                        blah1.src = URL.createObjectURL(file)
                    }
                }
            </script>
        </form>
        <p class="title-edit">Ảnh đại diện</p>
        <form class="edit-ava" runat="server">
            <img id="blah2" src="../image/ava1.png" alt="your image" />
            <input class="input-img" accept="image/*" type='file' id="imgInp2" />
            <button class="submit">Xác nhận thay đổi</button>
            <script>
                imgInp2.onchange = evt => {
                    const [file] = imgInp2.files
                    if (file) {
                        blah2.src = URL.createObjectURL(file)
                    }
                }
            </script>
        </form>
        <form action="">
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
                <input class="list-school" placeholder="Chọn trường" list="list-school" id="school-choice" name="school-choice">

                <datalist id="list-school">
                    <option value="Trường Đại học Bách khoa, Đại học Đà Nẵng">
                    <option value="Trường Đại học Kinh tế, Đại học Đà Nẵng">
                    <option value="Trường Đại học Kiến trúc Đà Nẵng">
                </datalist>
            </div>
            <div class="list">
                <i class="fa-solid fa-cake-candles"></i>
                <p class="content">Ngày sinh:</p>
                <input type="date" value="2023-02-02" class="date">
            </div>
            <button class="submit">Xác nhận thay đổi</button>
        </form>
        <button class="exit" onclick="myFunction()">X</button>
    </div>
</div>
<script>
    function myFunction() {
        var x = document.getElementById("myDIV");
        if (x.style.display === "none") {
            x.style.display = "block";
        } else {
            x.style.display = "none";
        }
    }
</script>
</body>
</html>

