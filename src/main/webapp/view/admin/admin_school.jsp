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
    <link rel="stylesheet" href="/PBL3/template/css/admin-school.css">
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
                <a href="./admin_home.jsp" class="user-list">
                    <p class="content">Quản lí danh sách User</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a href="./admin_list_admin.jsp" class="user-list">
                    <p class="content">Quản lí danh sách Admin</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a class="user-list">
                    <p class="content">Quản lí danh sách Địa điểm</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a class="user-list selected">
                    <p class="content">Quản lí danh sách Trường học</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
            </a>
        </div>
        <div class="content-main">
            <h1 class="title-main">DANH SÁCH CÁC TRƯỜNG HỌC</h1>
            <div class="content-main-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
            </div>
            <div class="content-list-school">
                <div class="item">
                    <i class="fa-solid fa-school"></i>
                    <p class="name">Trường Đại học Bách khoa - Đại học Đà Nẵng</p>
                    <button class="delete">
                        <i class="fa-solid fa-trash"></i>
                        <p class="button-content">Xóa</p>
                    </button>
                </div>
                <div class="item">
                    <i class="fa-solid fa-school"></i>
                    <p class="name">Trường Đại học Kinh tế - Đại học Đà Nẵng</p>
                    <button class="delete">
                        <i class="fa-solid fa-trash"></i>
                        <p class="button-content">Xóa</p>
                    </button>
                </div>
            </div>
            <div class="content-add"><i class="fa-solid fa-plus"></i></div>
        </div>
    </div>
</div>

<div class="add-new-school-main hide-add-div">
    <p class="title">Nhập tên trường:</p>
    <form>
        <textarea rows="5" placeholder="Trường Đại học Bách khoa - Đại học Đà Nẵng"></textarea>
        <button type="submit">Thêm trường</button>
    </form>
</div>
<script>
    var oppenDiv = document.querySelector('#content .content-add')
    var addDiv = document.querySelector('.add-new-school-main')

    oppenDiv.addEventListener('click', function (e){
        addDiv.classList.toggle('hide-add-div')
    })

</script>
</body>
</html>