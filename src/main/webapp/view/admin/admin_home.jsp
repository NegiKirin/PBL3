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
                                <i class="fa-solid fa-lock"></i>
                                <p class="button-content">Khóa</p>
                            </button>
                            <button class="button remove">
                                <i class="fa-solid fa-trash"></i>
                                <p class="button-content">Xóa</p>
                            </button>
                        </div>
                        <input type="hidden" class="school" value="Trường Đại học Bách khoa - Đại học Đà Nẵng">
                        <input type="hidden" class="background" value="../../template/image/backgroundDefault.png">
                        <input type="hidden" class="user-name" value="thanhleviet723@gmail.com">
                        <input type="hidden" class="password" value="123123456">
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
                                <i class="fa-solid fa-lock"></i>
                                <p class="button-content">Khóa</p>
                            </button>
                            <button class="button remove">
                                <i class="fa-solid fa-trash"></i>
                                <p class="button-content">Xóa</p>
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
                            <p class="content">Nam</p>
                        </div>
                        <div class="birth">
                            <p class="title">Ngày sinh:</p>
                            <input class="date" type="date" value="2023-02-02" disabled="disabled">
                        </div>
                        <div class="buttons">
                            <button class="button lock">
                                <i class="fa-solid fa-lock"></i>
                                <p class="button-content">Khóa</p>
                            </button>
                            <button class="button remove">
                                <i class="fa-solid fa-trash"></i>
                                <p class="button-content">Xóa</p>
                            </button>
                        </div>
                        <input type="hidden" value="Trường Đại học Bách khoa - Đại học Đà Nẵng">
                        <input type="hidden" class="background" value="../../template/image/backgroundDefault.png">
                        <input type="hidden" class="user-name" value="thanhleviet723@gmail.com">
                        <input type="hidden" class="password" value="123123123">
                    </div>
                </div>
            </div>
            <div class="content-add"><i class="fa-solid fa-plus"></i></div>
        </div>
    </div>




    <%--    div phụ    --%>
    <div class="detail-div hide">
        <div class="panel"></div>
        <div class="detail-div-main">
            <p class="title-main">Thông tin chi tiết tài khoản</p>
            <img src="" class="background" alt="background"/>
            <img src="" class="ava" alt="avatar" loading="lazy"/>
            <h1 class="name" id="name"></h1>
            <div class="role">
                <p class="title">Phân quyền:</p>
                <select class="list-role" name="role" id="role">
                    <option selected value="user">User</option>
                    <option value="admin">Admin</option>
                </select>
            </div>
            <div class="infor-user">
                <form action="edit-profile" method="post" enctype='multipart/form-data' id="editProfile">
                    <p class="title-edit">Thông tin cá nhân</p>
                    <div class="list">
                        <i class="fa-solid fa-heart"></i>
                        <p class="content">Giới tính:</p>
                        <select class="list-sex" name="gender" value="${profileUser.gender}">
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
                    <div class="chance-password">
                        <p class="title-edit">Thay đổi mật khẩu tài khoản</p>
                        <div class="list">
                            <p class="content">Email đăng nhập:</p>
                            <input class="email" placeholder="">
                        </div>
                        <div class="list">
                            <p class="content">Mật khẩu:</p>
                            <input class="password" placeholder="">
                        </div>
                        <button class="submit">Xác nhận thay đổi</button>
                    </div>
                    <input type="hidden" value="editProfile" name="action">
                    <input type="hidden" value="${profileUser.id}" name="profileUserId">
                </form>
                <button class="exit">X</button>
            </div>
        </div>
    </div>


    <div class="confirm-div hide delete">
        <div class="panel"></div>
        <div class="confirm-delete">
            <p class="title">Bạn muốn xóa vĩnh viễn tài khoản này?</p>
            <div class="list">
                <button class="remove">Xác nhận</button>
                <button class="exit">Thoát</button>
            </div>
        </div>
    </div>

    <div class="confirm-div hide lock">
        <div class="panel"></div>
        <div class="confirm-lock">
            <p class="title">Bạn muốn khóa tài khoản này?</p>
            <div class="list">
                <button class="lock">Xác nhận</button>
                <button class="exit">Thoát</button>
            </div>
        </div>
    </div>

    <div class="add-new-user hide">
        <div class="panel"></div>
        <div class="add-new-user-main">
            <div class="title-main">Thêm một người dùng mới</div>
            <div class="content-main">
                <div class="account">
                    <p class="title-account">Thông tin tài khoản</p>
                    <input class="email" placeholder="Nhập tên tài khoản">
                    <input class="password" placeholder="Nhập mật khẩu">
                    <input class="re-password" placeholder="Nhập lại mật khẩu">
                </div>
                <div class="infor">
                    <p class="title-infor">Thông tin cá nhân</p>
                    <div class="list">
                        <i class="fa-solid fa-heart"></i>
                        <p class="content">Giới tính:</p>
                        <select class="list-sex" name="gender">
                            <option hidden="hidden" selected>Chọn giới tính</option>
                            <option value="male">Nam</option>
                            <option value="female">Nữ</option>
                            <option value="other">Khác</option>
                        </select>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-school"></i>
                        <p class="content">Trường học:</p>
                    </div>
                    <select class="list-school" name="school">
                        <option selected hidden="hidden">Chọn trường học</option>
                        <c:forEach items="${listSchool}" var="school">
                            <option idSchool="${school.id}">${school.nameSchool}</option>
                        </c:forEach>
                    </select>
                    <div class="list">
                        <i class="fa-solid fa-cake-candles"></i>
                        <p class="content">Ngày sinh:</p>
                        <input type="date" value="2003-01-01" class="date" name="dateOfBirth"/>
                    </div>
                </div>
            </div>
            <button class="add">TẠO NGAY</button>
            <button class="exit">X</button>
        </div>
    </div>
    <script src="<c:url value="/template/js/AdminHome.js"/>"></script>
</body>
</html>