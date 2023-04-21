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
                            <button onclick="open_div('detail-div')" class="button detail">
                                <i class="fa-solid fa-circle-info"></i>
                                <p class="button-content">Chi tiết</p>
                            </button>
                            <button onclick="open_div('edit-div')" class="button edit">
                                <i class="fa-solid fa-file-pen"></i>
                                <p class="button-content">Chỉnh sửa</p>
                            </button>
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
                            <button onclick="open_div('detail-div')" class="button detail">
                                <i class="fa-solid fa-circle-info"></i>
                                <p class="button-content">Chi tiết</p>
                            </button>
                            <button onclick="open_div('edit-div')" class="button edit">
                                <i class="fa-solid fa-file-pen"></i>
                                <p class="button-content">Chỉnh sửa</p>
                            </button>
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
                            <button onclick="open_div('detail-div')" class="button detail">
                                <i class="fa-solid fa-circle-info"></i>
                                <p class="button-content">Chi tiết</p>
                            </button>
                            <button onclick="open_div('edit-div')" class="button edit">
                                <i class="fa-solid fa-file-pen"></i>
                                <p class="button-content">Chỉnh sửa</p>
                            </button>
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
    <div id="detail-div" class="detail-main">
        <div class="content-main-edit-infor">
            <img class="background" src="../image/background.png" alt="">
            <img class="ava" src="../image/ava1.png" alt="">
            <h1 class="name">Lê Việt Thanh</h1>

            <div class="infor-user">
                <p class="title-infor-user">Thông tin cá nhân</p>
                <div class="content-infor-user">
                    <div class="item">
                        <i class="icon-infor fa-solid fa-heart"></i>
                        <p class="title">Giới tính:</p>
                        <p class="content">Nam</p>
                    </div>
                    <div class="item">
                        <i class="icon-infor fa-solid fa-school"></i>
                        <p class="title">Trường học:</p>
                        <p class="content">Trường Đại học Bách khoa, Đại học Đà Nẵng</p>
                    </div>
                    <div class="item">
                        <i class="icon-infor fa-solid fa-cake-candles"></i>
                        <p class="title">Ngày sinh:</p>
                        <input type="date" value="2023-02-02" class="date" disabled="disabled">
                    </div>
                </div>
            </div>
            <div class="list-apm">
                <p class="title-list-apm">Danh sách cuộc hẹn đã tham gia</p>
                <div class="item-apm">
                    <div class="content-apm">
                        <div class="user list">
                            <img src="../image/ava.png" alt="">
                            <p class="name text">Ho va ten</p>
                        </div>
                        <div class="time list">
                            <p class="title text">Thời gian:</p>
                            <p class="content text">8 AM - 9 AM</p>
                        </div>
                        <div class="date list">
                            <p class="title text">Ngày:</p>
                            <input type="date" class="date" disabled="disabled" value="2023-02-02">
                        </div>
                        <div class="list-rate list text">
                            <p class="title">Đánh giá<i class="fa-solid fa-chevron-down"></i></p>
                        </div>
                    </div>
                    <div class="list-rate-apm">
                        <div class="item a1">
                            <img src="../image/ava.png" alt="">
                            <p class="name text">Ho va ten</p>
                            <div class="rate-star">
                                <p class="rate-star-title">Đánh giá:</p>
                                <form>
                                    <div class="form-group">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </form>
                            </div>
                            <script>
                                document.addEventListener(
                                    "DOMContentLoaded",
                                    function (event) {
                                    // Lấy danh sách các phần tử <i> có lớp "a fa fa-star"
                                        const stars = document.querySelectorAll(".a1 i.fa.fa-star");
                                    // Lấy số lượng phần tử cần được check
                                        const n = 3;
            
                                    // Duyệt qua các phần tử và thêm thuộc tính "checked" cho n phần tử đầu tiên
                                        for (let i = 0; i < n; i++) {
                                            if (stars[i]) {
                                                stars[i].classList.add("checked");
                                            }
                                        }
                                    }
                                );
                            </script>
                        </div>
                        <div class="item a2">
                            <img src="../image/ava.png" alt="">
                            <p class="name text">Ho va ten</p>
                            <div class="rate-star">
                                <p class="rate-star-title">Đánh giá:</p>
                                <form>
                                    <div class="form-group">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                </form>
                            </div>
                            <script>
                                document.addEventListener(
                                    "DOMContentLoaded",
                                    function (event) {
                                    // Lấy danh sách các phần tử <i> có lớp "a fa fa-star"
                                        const stars = document.querySelectorAll(".a2 i.fa.fa-star");
                                    // Lấy số lượng phần tử cần được check
                                        const n = 2;
            
                                    // Duyệt qua các phần tử và thêm thuộc tính "checked" cho n phần tử đầu tiên
                                        for (let i = 0; i < n; i++) {
                                            if (stars[i]) {
                                                stars[i].classList.add("checked");
                                            }
                                        }
                                    }
                                );
                            </script>
                        </div>
                    </div>
                </div>
                <div class="item-apm">
                    <div class="content-apm">
                        <div class="user list">
                            <img src="../image/ava.png" alt="">
                            <p class="name text">Ho va ten</p>
                        </div>
                        <div class="time list">
                            <p class="title text">Thời gian:</p>
                            <p class="content text">8 AM - 9 AM</p>
                        </div>
                        <div class="date list">
                            <p class="title text">Ngày:</p>
                            <input type="date" class="date" disabled="disabled" value="2023-02-02">
                        </div>
                        <div class="list-rate list text">
                            <p class="title">Đánh giá<i class="fa-solid fa-chevron-down"></i></p>
                        </div>
                        <div class="list-rate-apm" id="b">
                            <div class="item b1">
                                <img src="../image/ava.png" alt="">
                                <p class="name text">Ho va ten</p>
                                <div class="rate-star">
                                    <p class="rate-star-title">Đánh giá:</p>
                                    <form>
                                        <div class="form-group">
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </form>
                                </div>
                                <script>
                                    document.addEventListener(
                                        "DOMContentLoaded",
                                        function (event) {
                                        // Lấy danh sách các phần tử <i> có lớp "a fa fa-star"
                                            const stars = document.querySelectorAll(".b1 i.fa.fa-star");
                
                                        // Lấy số lượng phần tử cần được check
                                            const n = 4;
                
                                        // Duyệt qua các phần tử và thêm thuộc tính "checked" cho n phần tử đầu tiên
                                            for (let i = 0; i < n; i++) {
                                                if (stars[i]) {
                                                    stars[i].classList.add("checked");
                                                }
                                            }
                                        }
                                    );
                                </script>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="exit" onclick="open_div('detail-div')">X</button>
        </div>
    </div>
    <div id="edit-div" class="edit-main">
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
            <button class="exit" onclick="open_div('edit-div')">X</button>
        </div>
    </div>
    <div id="confirm-div" class="confirm-main">
        <div class="confirm-delete">
            <p class="title">Xác nhận xóa tài khoản này?</p>
            <div class="list">
                <button onclick="open_div('confirm-div')" class="remove">Xác nhận</button>
                <button onclick="open_div('confirm-div')" class="exit">Thoát</button>
            </div>
        </div>
    </div>
    <script>
        function open_div(id) {
          var x = document.getElementById(id);
          if (x.style.display === "none") {
            x.style.display = "block";
          } else {
            x.style.display = "none";
          }
        }
    </script>
</body>
</html>