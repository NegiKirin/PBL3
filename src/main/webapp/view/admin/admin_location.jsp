
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study With Me | Ứng dụng tìm kiếm người bạn học cùng</title>
    <script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <script src="./adminlocation.js"></script>
    <link rel="stylesheet" href="./adminlocation.css">
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
            <a href="./admin_home.jsp" class="user-list">
                <p class="content">Quản lí danh sách User</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="./admin_list_admin.jsp" class="user-list">
                <p class="content">Quản lí danh sách Admin</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="./admin_location.jsp" class="user-list  selected">
                <p class="content">Quản lí danh sách Địa điểm</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="./admin_school.jsp" class="user-list">
                <p class="content">Quản lí danh sách Trường học</p>
                <i class="fa-solid fa-bars"></i>
            </a>
            <a href="./admin_appointment.jsp" class="user-list">
                <p class="content">Quản lí danh sách Cuộc hẹn</p>
                <i class="fa-solid fa-bars"></i>
            </a>
        </div>
        <div class="content-main">
            <h1 class="title-main">DANH SÁCH CÁC ĐỊA ĐIỂM </h1>
            <div class="table">
                <p class="item-title1">Danh sách quận</p>
                <p class="item-title2">Danh sách phường</p>
            </div>

            <div class="content-list-location">

                <div class="scrollable-container">
                    <div class="item">
                        <p class="district-name">Liên Chiểu</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>
                    <div class="item">
                        <p class="district-name">Hải Châu</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>
                    <div class="item">
                        <p class="district-name">Hòa Vang</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>
                    <div class="item">
                        <p class="district-name">Thanh Khê</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>
                    <div class="item">
                        <p class="district-name">Ngũ Hành Sơn</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>
                    <div class="item">
                        <p class="district-name">Sơn Trà</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>
                    <div class="item">
                        <p class="district-name">Cẩm Lệ</p>
                        <button id="delete2" class="fa-solid fa-trash"></button>
                    </div>

                </div>
            </div>
            <div class="mid"></div>
            <div class="ward">
                <div class="menu">
                    <div class="conlan">
                        <div class="count">Hòa Khánh Bắc<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Hòa Khánh Nam<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Liên Hiệp Nam<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Liên Hiệp Bắc<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Hòa Khánh Bắc<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Hòa Khánh Nam<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Liên Hiệp Nam<button id="delete1" class="fa-solid fa-trash"></button></div>
                        <div class="count">Liên Hiệp Bắc<button id="delete1" class="fa-solid fa-trash"></button></div>
                    </div>
                </div>
                <div class="divider"></div>
                <div class="add">
                    <p class="add-title">Thêm phần tử</p>
                    <div class="input">Nhập tên: <input type="text" placeholder="Điền tên vào" class="name-add"></div>
                    <select name="sl" id="" class="sl">
                        <option value="1">Phường / Xã</option>
                        <option value="1">Quận / Huyện</option>
                    </select>
                    <button class="addbtn">Thêm</button>
                </div>
            </div>

        </div>
    </div>
</div>
<div id="confirmBox">
    <h3>Bạn có chắc chắn muốn xóa không?</h3>
    <button id="confirmButton">Có</button>
    <button id="cancelButton">Không</button>

</div>





</body>
</html>