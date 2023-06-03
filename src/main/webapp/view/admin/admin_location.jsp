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
    <script src="../../template/js/AdminLocation.js"></script>
    <link rel="stylesheet" href="/PBL3/template/css/admin-location.css">
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
            <a href="<c:url value="/admin-home"/>" class="user-list">
                <p class="content">Quản lí danh sách User</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="<c:url value="/admin-list-admin"/>" class="user-list">
                <p class="content">Quản lí danh sách Admin</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="<c:url value="/admin-location"/>" class="user-list selected">
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
            <h1 class="title-main">DANH SÁCH CÁC ĐỊA ĐIỂM </h1>

            <div class="content-list-location">


                    <div class="item">
                        <p class="district-name">Liên Chiểu</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="item">
                        <p class="district-name">Hải Châu</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="item">
                        <p class="district-name">Hòa Vang</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="item">
                        <p class="district-name">Thanh Khê</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="item">
                        <p class="district-name">Ngũ Hành Sơn</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="item">
                        <p class="district-name">Sơn Trà</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="item">
                        <p class="district-name">Cẩm Lệ</p>
                        <button class="fa-solid fa-trash"></button>
                        <div class="list-ward hide">
                            <p class="title">Danh sách phường/xã: </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button> </p>
                            <p class="ward-item">Hòa Khánh Bắc <button class="remove">Xóa</button></p>
                            <form class="add-ward">
                                <input type="text" placeholder="Nhập tên phường/xã...">
                                <button class="add" type="submit"><i class="fa-solid fa-plus"></i></button>
                            </form>
                        </div>
                    </div>
            </div>
            <div class="content-add"><i class="fa-solid fa-plus"></i></div>
        </div>
    </div>
</div>
<div class="add-new-district-main hide-add-div">
    <p class="title">Nhập tên quận/huyện:</p>
    <form>
        <textarea rows="5" placeholder="Hải Châu..."></textarea>
        <button type="submit">Thêm</button>
    </form>
</div>
<script>
    var oppenDiv = document.querySelector('#content .content-add')
    var addDiv = document.querySelector('.add-new-district-main')

    oppenDiv.addEventListener('click', function (e){
        addDiv.classList.toggle('hide-add-div')
    })

</script>
</body>
</html>