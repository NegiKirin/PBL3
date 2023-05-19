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
    <link rel="stylesheet" href="<c:url value="/template/css/create_appointment.css"/>">
</head>
<body>
<div id="main">
    <jsp:include page="/common/web/navbar.jsp"></jsp:include>
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
            <div class="create-appointment">
                <div class="your-calendar">
                    <p class = "title">Lịch của bạn</p>
                    <div class="under-title">
                        <div class="profile">
                            <img src="data:image/jpeg;base64,${user.background}" class="background" alt="background"/>
                            <img src="data:image/jpeg;base64,${user.avatar}" class="avatar" alt="avatar"/>
                        </div>
                        <div class="content">
                            <form class="item">
                                <p class="date">07/05/2023</p>
                                <div class="date-content">
                                    <div class="time" starttime="2023-05-15 15:22:19.0" endtime="2023-05-15 19:22:13.0">
                                        15:20 PM - 19:20 PM
                                    </div>
                                    <i class="fa-solid fa-location-dot"></i>
                                    <div class="address">123 Nguyễn Lương Bằng</div>
                                    <button type="submit" class="delete">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </div>
                            </form>
                            <form class="item">
                                <p class="date">07/05/2023</p>
                                <div class="date-content">
                                    <div class="time" starttime="2023-05-15 15:22:19.0" endtime="2023-05-15 19:22:13.0">
                                        15:20 PM - 19:20 PM
                                    </div>
                                    <i class="fa-solid fa-location-dot"></i>
                                    <div class="address">123 Nguyễn Lương Bằng</div>
                                    <button type="submit" class="delete">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </div>
                            </form>
                            <form class="item">
                                <p class="date">07/05/2023</p>
                                <div class="date-content">
                                    <div class="time" starttime="2023-05-15 15:22:19.0" endtime="2023-05-15 19:22:13.0">
                                        15:20 PM - 19:20 PM
                                    </div>
                                    <i class="fa-solid fa-location-dot"></i>
                                    <div class="address">123 Nguyễn Lương Bằng</div>
                                    <button type="submit" class="delete">
                                        <i class="fa-solid fa-trash"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="create-app">
                    <p class = "title">Tạo mới các lịch hẹn</p>
                    <jsp:include page="/common/web/Calender.jsp"></jsp:include>
                    <form class="create-app-form">
                        <div class="item">
                            <p class = "title">Giờ bắt đầu:</p>
                            <input type="time" class="time-begin"value="00:00">
                        </div>
                        <div class="item">
                            <p class = "title">Giờ kết thúc:</p>
                            <input type="time" class="time-end" value="00:00">
                        </div>
                        <div class="item last">
                            <p class = "title">Địa điểm:</p>
                            <select class="list-district list" id="list-district" name="district">
                                <option value="" selected disabled hidden>Chọn quận/huyện</option>
                                <option>Liên Chiểu</option>
                                <option>Hải Châu</option>
                                <option>Sơn Trà</option>
                            </select>
                            <select class="list-ward list" id="list-ward" name="ward">
                                <option value="" selected disabled hidden>Chọn phường/xã</option>
                                <option>Hòa Khánh Bắc</option>
                                <option>Hòa Khánh Nam</option>
                            </select>
                            <input class="detail-location" type="text" placeholder="Nhập số nhà và tên đường">
                        </div>
                        <button class="button" type="submit">TẠO NGAY</button>
                    </form>
                </div>
            </div>
        </div>
        <div class="content-right">
            <jsp:include page="/common/web/ListFriend.jsp"></jsp:include>
        </div>
    </div>
</div>
<script src="<c:url value="/template/js/Calender.js"/>"></script>
</body>
</html>

