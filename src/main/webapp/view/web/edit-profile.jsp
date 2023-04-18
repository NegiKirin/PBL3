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
    <link rel="stylesheet" href="/PBL3/template/css/edit-profile.css">
    <script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>
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
                <h1 class="content-main-title">Xem thông tin cá nhân</h1>
                <div class="content-main-edit-infor">
                    <c:if test="${user.background==null}">
                        <img class="background" src="/PBL3/template/image/backgroudDefault.png" alt="background">
                    </c:if>
                    <c:if test="${user.background!=null}">
                        <img src="data:image/jpeg;base64,${user.background}" class="background" alt="background">
                    </c:if>
                    <c:if test="${user.avatar==null}">
                        <img class="ava" src="/PBL3/template/image/avatarDefault.jpg" alt="avatar">
                    </c:if>
                    <c:if test="${user.avatar!=null}">
                        <img src="data:image/jpeg;base64,${user.avatar}" class="ava" alt="avatar">
                    </c:if>
                    <h1 class="name">${user.fullName}</h1>

                    <div class="infor-user">
                        <p class="title-infor-user">Thông tin cá nhân</p>
                        <div class="content-infor-user">
                            <div class="item">
                                <i class="icon-infor fa-solid fa-heart"></i>
                                <p class="title">Giới tính: </p>
                                <c:if test="${user.gender==0}">
                                    <p class="content">Nam</p>
                                </c:if>
                                <c:if test="${user.gender==1}">
                                    <p class="content">Nữ</p>
                                </c:if>
                            </div>
                            <div class="item">
                                <i class="icon-infor fa-solid fa-school"></i>
                                <p class="title">Trường học: </p>
                                <p class="content">${user.school.nameSchool}</p>
                            </div>
                            <div class="item">
                                <i class="icon-infor fa-solid fa-cake-candles"></i>
                                <p class="title">Ngày sinh:</p>
                                <input type="date" value="${user.dateOfBirth}" class="date" disabled="disabled">
                            </div>
                        </div>
                        <button onclick="myFunction()" class="edit"><i class="fa-solid fa-pen-to-square"></i>Chỉnh sửa</button>
                    </div>
                    <div class="list-apm">
                        <p class="title-list-apm">Danh sách cuộc hẹn đã tham gia</p>
                        <div class="item-apm">
                            <div class="content-apm">
                                <div class="user list">
                                    <c:if test="${user.avatar==null}">
                                        <img src="/PBL3/template/image/avatarDefault.jpg" alt="avatar">
                                    </c:if>
                                    <c:if test="${user.avatar!=null}">
                                        <img alt="avatar" src="data:image/jpeg;base64,${user.avatar}">
                                    </c:if>
                                    <p class="name text">${user.fullName}</p>
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
                                    <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
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
                                    <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
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
                                    <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
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
                                        <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
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
                </div>
            </div>
            <div class="content-right">
                <div class="list-friends">
                    <p class="list-friends-title">Danh sách bạn bè</p>
                    <div class="list-friends-item">
                        <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="/PBL3/template/image/avatarDefault.jpg" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="vice-main" id="myDIV">
        <div class="edit-infor">
            <h1 class="edit-infor-title">Chỉnh sửa thông tin cá nhân</h1>
            <p class="title-edit">Ảnh bìa</p>
            <form class="edit-background" runat="server" action="upload-image">
                <c:if test="${user.background==null}">
                    <img id="blah1" src="/PBL3/template/image/backgroudDefault.png" alt="your image">
                </c:if>
                <c:if test="${user.background!=null}">
                <img src="data:image/jpeg;base64,${user.background}" alt="your image">
                </c:if>
                <%--<img id="blah1" src="./image/background.png" alt="your image" />--%>
                <input class="input-img" accept="image/*" type='file' id="imgInp1" name="background"/>
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
            <form class="edit-ava" runat="server" action="upload-image" method="post">
                <c:if test="${user.avatar==null}">
                    <img src="/PBL3/template/image/avatarDefault.jpg" alt="your image" id="blah2">
                </c:if>
                <c:if test="${user.avatar!=null}">
                    <img src="data:image/jpeg;base64,${user.avatar}" alt="your image" id="blah2">
                </c:if>
                <%--<img id="blah2" src="/PBL3/template/image/avatarDefault.jpg" alt="your image" />--%>
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
            <form action="UpdateProfile" method="post">
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
                    <input class="list-school" placeholder="Chọn trường" list="list-school" id="school-choice" name="school-choice"/>

                    <datalist id="list-school">
                        <c:forEach items="listSchool" var="school">
                            
                        </c:forEach>
                    </datalist>
                </div>
                <div class="list">
                    <i class="fa-solid fa-cake-candles"></i>
                    <p class="content">Ngày sinh:</p>
                    <input type="date" value="2023-02-02" class="date" name="dateOfBirth"/>
                </div>
                <button class="submit">Xác nhận thay đổi</button>
            </form>
            <button class="exit" onclick="myFunction()">X</button>
        </div>
    </div>
    <script>
        function myFunction() {
          var x = document.getElementById("myDIV");
          if (x.style.display === "none") {
            x.style.display = "block";
          } else {
            x.style.display = "none";
          }
        }
    </script>
</body>
</html>