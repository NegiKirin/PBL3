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
    <link rel="stylesheet" href="/PBL3/template/css/admin-appointment.css">
</head>
<body>
<div id="main">
    <div id="header">
        <div class="header-info-admin">
            <img src="../../template/image/avatarDefault.png" alt="">
            <a href=""><p class="header-info-user-name"> Ho va ten </p></a>
            <i class="fa-solid fa-user-pen"></i>
        </div>
    </div>
    <div id="content">
        <div class="content-left">

                <a href="./admin_home.jsp" class="user-list">
                    <p class="content">Quản lí danh sách User</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a href="./admin_list_admin.jsp" class="user-list">
                    <p class="content">Quản lí danh sách Admin</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a href="./admin_location.jsp" class="user-list">
                    <p class="content">Quản lí danh sách Địa điểm</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a href="./admin_school.jsp" class="user-list">
                    <p class="content">Quản lí danh sách Trường học</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a href="./admin_appointment.jsp" class="user-list selected">
                    <p class="content">Quản lí danh sách Cuộc hẹn</p>
                    <i class="fa-solid fa-bars"></i>
                </a>

        </div>
        <div class="content-main">
            <h1 class="title-main">DANH SÁCH CÁC CUỘC HẸN</h1>
            <div class="content-main-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
            </div>
            <div class="content-main-list">
<%--                <c:forEach items="${appointments}" var="appointment">--%>
                <div class="content-main-item">
                    <div class="profile">
                        <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
                        <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
                        <p class="name">Le Viet Thanh</p>
                    </div>
                    <div class="content">
                        <div class="item">
                            <p class="date">02-03-2023</p>
                            <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00-00:00</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i>132 Nguyễn Lương Bằng</p>
                            <input type="hidden" value="${appointment.address.addressType.type}">
                            <input type="hidden" value="${appointment.maximum}">
                            <input type="hidden" value="${fn:length(appointment.participants)}" name="totalParticipants">
                            <div class="participants">
                                <c:forEach var="participant" items="${appointment.participants}">
                                    <div class="participant">
                                        <input type="hidden" value="${participant.avatar}">
                                        <input type="hidden" value="${participant.fullName}">
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                        <input type="hidden" name="idAppointment" value="${appointment.id}">
                    </div>
                    <button class="see-more">Xem chi tiết</button>
                </div>
            </div>
        </div>+

    </div>
</div>
<%-- div phu --%>
<div class="booking-apm hide" id="myDIV">
    <div class="panel"> </div>
    <div class="content">
        <img src="" alt="" class="background">
        <img src="" alt="" class="ava">
        <h1 class="name">Tên Trống</h1>
        <form class="infor-apm" action="home" method="post">
            <div class="flex">
                <div class="infor">
                    <p class="title">Thông tin cuộc hẹn:</p>
                    <div class="list">
                        <i class="fa-solid fa-clock"></i>
                        <p class="date">01-01-2003</p>
                        <p class="time">00:00 - 00:00</p>
                    </div>
                    <div class="list inline">
                        <i class="fa-solid fa-store"></i>
                        <p class="type-location">Trống</p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-location-dot"></i>
                        <p class="address">Mặc định</p>
                    </div>
                </div>
                <div class="list-members">
                    <p class="title inline">Người đã tham gia: </p>
                    <p class="number"></p>
                    <div class="list scroll-style">
                    </div>
                </div>
            </div>
        </form>
        <button class="exit">X</button>
    </div>
</div>
<script src="<c:url value="/template/js/AdminAppointment.js"/>"></script>
</body>
</html>
