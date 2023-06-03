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
    <link rel="stylesheet" href="/PBL3/template/css/admin-list-admin.css">
    <link rel="stylesheet" href="/PBL3/template/css/navbar.css">
</head>
<body>
<div id="main">
    <jsp:include page="/common/web/admin-navbar.jsp"></jsp:include>
    <div id="content">
        <div class="content-left">
            <a href="<c:url value="/admin-home"/>" class="user-list">
                <p class="content">Quản lí danh sách User</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="<c:url value="/admin-list-admin"/>" class="user-list  selected">
                <p class="content">Quản lí danh sách Admin</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="<c:url value="/admin-location"/>" class="user-list">
                <p class="content">Quản lí danh sách Địa điểm</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="<c:url value="/admin-school"/>" class="user-list">
                <p class="content">Quản lí danh sách Trường học</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="<c:url value="/admin-appointment"/>" class="user-list">
                <p class="content">Quản lí danh sách Cuộc hẹn</p>
                <i class="fa-solid fa-bars"></i>
            </a>
        </div>
        <div class="content-main">
            <h1 class="title-main">DANH SÁCH CÁC ADMIN</h1>
            <div class="content-main-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
            </div>
            <div class="content-list-user">
                <div class="item">
                    <div class="ava-name">
                        <img src="../../template/image/avatarDefault.png" alt="">
                        <p class="name">Le Viet Thanh</p>
                    </div>
                    <div class="sex">
                        <p class="title">Giới tính:</p>
                        <p class="content">Nam</p>
                    </div>
                    <div class="birth">
                        <p class="title">Ngày sinh:</p>
                        <input class="date" type="date" value="2023-02-02" disabled="disabled">
                    </div>
                    <div class="buttons">
                        <button class="button lock">
                          <i class="fa-solid fa-user-xmark"></i>
                            <p class="button-content">Gỡ quyền Admin</p>
                        </button>
                    </div>
                    <input type="hidden" class="school" value="Trường Đại học Bách khoa - Đại học Đà Nẵng">
                    <input type="hidden" class="background" value="../../template/image/backgroundDefault.png">
                </div>
                <div class="item">
                    <div class="ava-name">
                        <img src="../../template/image/avatarDefault.png" alt="">
                        <p class="name">Họ và tên</p>
                    </div>
                    <div class="sex">
                        <p class="title">Giới tính:</p>
                        <p class="content">Nữ</p>
                    </div>
                    <div class="birth">
                        <p class="title">Ngày sinh:</p>
                        <input class="date" type="date" value="2023-02-02" disabled="disabled">
                    </div>
                    <div class="buttons">
                        <button class="button lock">
                          <i class="fa-solid fa-user-xmark"></i>
                          <p class="button-content">Gỡ quyền Admin</p>
                        </button>
                    </div>
                    <input type="hidden" value="Trường Đại học Bách khoa - Đại học Đà Nẵng">
                    <input type="hidden" class="background" value="../../template/image/backgroundDefault.png">
                    <input type="hidden" class="user-name" value="thanhleviet723@gmail.com">
                    <input type="hidden" class="password" value="123123123">
                </div>
                <div class="item">
                    <div class="ava-name">
                        <img src="../../template/image/avatarDefault.png" alt="">
                        <p class="name">Họ và tên</p>
                    </div>
                    <div class="sex">
                        <p class="title">Giới tính:</p>
                        <p class="content">Nữ</p>
                    </div>
                    <div class="birth">
                        <p class="title">Ngày sinh:</p>
                        <input class="date" type="date" value="2023-02-02" disabled="disabled">
                    </div>
                    <div class="buttons">
                        <button class="button lock">
                          <i class="fa-solid fa-user-xmark"></i>
                          <p class="button-content">Gỡ quyền Admin</p>
                        </button>
                    </div>
                    <input type="hidden" value="Trường Đại học Bách khoa - Đại học Đà Nẵng">
                    <input type="hidden" class="background" value="../../template/image/backgroundDefault.png">
                    <input type="hidden" class="user-name" value="thanhleviet723@gmail.com">
                    <input type="hidden" class="password" value="123123123">
                </div>
            </div>
        </div>
    </div>



    <-- Div phu -->
    <div class="detail-div hide">
        <div class="panel"></div>
        <div class="detail-div-main">
            <p class="title-main">Thông tin chi tiết tài khoản</p>
            <img src="" class="background" alt="background"/>
            <img src="" class="ava" alt="avatar" loading="lazy"/>
            <h1 class="name" id="name"></h1>
            <div class="role">
                <p class="title">Phân quyền:</p>
                <p class="content">Admin</p>
            </div>
            <div class="infor-user">
                <form action="edit-profile" method="post" enctype='multipart/form-data' id="editProfile">
                    <p class="title-edit">Thông tin cá nhân</p>
                    <div class="list">
                        <i class="fa-solid fa-heart"></i>
                        <p class="content">Giới tính:</p>
                        <p class="sex"></p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-school"></i>
                        <p class="content">Trường học:</p>
                        <p class="school"></p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-cake-candles"></i>
                        <p class="content">Ngày sinh:</p>
                        <input type="date" value="2023-01-01" class="date" name="dateOfBirth"/>
                    </div>
                    <input type="hidden" value="editProfile" name="action">
                    <input type="hidden" value="${profileUser.id}" name="profileUserId">
                </form>
                <button class="exit">X</button>
            </div>
        </div>
    </div>
    <script src="<c:url value="/template/js/AdminListAdmin.js"/>"></script>
    <script src="<c:url value="/template/js/navbar.js"/>"></script>
</div>
</body>
</html>

