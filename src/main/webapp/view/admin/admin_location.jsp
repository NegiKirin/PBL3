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
    <link rel="stylesheet" href="/PBL3/template/css/admin-location.css">
    <link rel="stylesheet" href="/PBL3/template/css/navbar.css">
</head>
<body>
<div id="main">
    <jsp:include page="/common/admin/admin-navbar.jsp"></jsp:include>
    <div id="content">
        <jsp:include page="/common/admin/Sidebar.jsp"></jsp:include>
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
<script src="<c:url value="/template/js/navbar.js"/>"></script>
</body>
</html>