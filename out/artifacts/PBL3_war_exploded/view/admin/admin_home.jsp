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
    <link rel="stylesheet" href="/PBL3/template/css/admin-home.css">
</head>
<body>
    <div id="main">
        <div id="header">
            <div class="header-info-admin">
                <img src="../image/ava.png" alt="">
                <a href="../edit-infor/edit-infor.html"><p class="header-info-user-name"> Ho va ten </p></a>
                <i class="fa-solid fa-user-pen"></i>
            </div>
        </div>
        <div id="content">
            <div class="content-left">
                <a href="">
                    <button class="user-list selected">
                        <p class="content">Quản lí danh sách User</p>
                        <i class="fa-solid fa-bars"></i>
                    </button>
                    <button class="user-list">
                        <p class="content">Quản lí danh sách Địa điểm</p>
                        <i class="fa-solid fa-bars"></i>
                    </button>
                </a>
            </div>
            <div class="content-main">
                <h1 class="title-main">DANH SÁCH CÁC USER </h1>
                <div class="content-main-search">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
                </div>
                <div class="content-list-user">
                    <div class="item">
                        <div class="ava-name">
                            <img src="../image/ava1.png" alt="">
                            <p class="name">Họ và tên</p>
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
                            <button onclick="open_div('confirm-div')" class="button remove">
                                <i class="fa-solid fa-trash"></i>
                                <p class="button-content">Xóa</p>
                            </button>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ava-name">
                            <img src="../image/ava1.png" alt="">
                            <p class="name">Họ và tên</p>
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
                            <button onclick="open_div('confirm-div')" class="button remove">
                                <i class="fa-solid fa-trash"></i>
                                <p class="button-content">Xóa</p>
                            </button>
                        </div>
                    </div>
                    <div class="item">
                        <div class="ava-name">
                            <img src="../image/ava1.png" alt="">
                            <p class="name">Họ và tên</p>
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
                            <button onclick="open_div('confirm-div')" class="button remove">
                                <i class="fa-solid fa-trash"></i>
                                <p class="button-content">Xóa</p>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="detail-div hide">
        <div class="panel"></div>
        <div class="detail-div-main">
            <p class="title-main">Thông tin chi tiết tài khoản</p>
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="ava" alt="avatar" loading="lazy"/>
            <h1 class="name">Le Viet Thanh</h1>
            <div class="infor-user">
                <form action="edit-profile" method="post" enctype='multipart/form-data' id="editProfile">
                    <p class="title-edit">Thông tin cá nhân</p>
                    <div class="list">
                        <i class="fa-solid fa-heart"></i>
                        <p class="content">Giới tính:</p>
                        <select class="list-sex" name="gender" id="gender" value="${profileUser.gender}">
                            <option value="male">Nam</option>
                            <option value="female">Nữ</option>
                            <option value="other">Khác</option>
                        </select>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-school"></i>
                        <p class="content">Trường học:</p>
                        <select class="list-school" id="list-school" name="school" idSchool="${profileUser.school.id}">
                            <c:forEach items="${listSchool}" var="school">
                                <option idSchool="${school.id}">${school.nameSchool}</option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-cake-candles"></i>
                        <p class="content">Ngày sinh:</p>
                        <input type="date" date="${profileUser.dateOfBirth}" class="date" name="dateOfBirth"/>
                    </div>
                    <input type="hidden" value="editProfile" name="action">
                    <input type="hidden" value="${profileUser.id}" name="profileUserId">
                    <div class="chance-password">
                        <p class="title-edit">Thay đổi mật khẩu tài khoản</p>
                        <div class="list">
                            <p class="content">Email đăng nhập:</p>
                            <input class="email" placeholder="Thanhhappy723@gmail.com">
                        </div>
                        <div class="list">
                            <p class="content">Mật khẩu:</p>
                            <input class="password" placeholder="123123123">
                        </div>
                        <button class="submit">Xác nhận thay đổi</button>
                    </div>
                </form>
                <button class="exit">X</button>
            </div>
        </div>
    </div>
    <div class="confirm-div hide">
        <div class="confirm-delete">
            <p class="title">Xác nhận xóa tài khoản này?</p>
            <div class="list">
                <button class="remove">Xác nhận</button>
                <button class="exit">Thoát</button>
            </div>
        </div>
    </div>
    <script src="<c:url value="/template/js/AdminHome.js"/>"></script>
</body>
</html>