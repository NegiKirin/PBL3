<%@include file="/common/taglib.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Study With Me | Ứng dụng tìm kiếm người bạn học cùng</title>
    <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
    <%--    <script src="https://code.jquery.com/jquery-3.6.4.js"
                integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>--%>
    <link rel="icon" href="<c:url value="/template/image/Study1.png"/>" type="image/icon type">
    <link rel="stylesheet" href="<c:url value="/template/css/home.css"/>">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/js/bootstrap.min.js"></script>
    <script src="/PBL3/template/paging/jquery.twbsPagination.js" type="text/javascript"></script>
</head>
<body>
<jsp:include page="/common/web/navbar.jsp"></jsp:include>
<div id="main">
    <div id="content">
        <div class="content-left">
            <div class="content-calender">
                <div class="calender-title">
                    <p class="Lichcuaban">Lịch của bạn</p>
                </div>
                <div class="calender-main">
                    <script type="text/javascript">
                        var dt = new Date();
                        var month = dt.getMonth(); // read the current month
                        var year = dt.getFullYear(); // read the current year

                        dt = new Date(year, month, 01);//Year , month,date format

                        var first_day = dt.getDay(); //, first day of present month
                        //document.write("first_day=" + first_day + "<br><br>");

                        dt.setMonth(month + 1, 0); // Set to next month and one day backward.
                        var last_date = dt.getDate(); // Last date of present month
                        //document.write(dt); // Last date in full
                        //document.write("<br><br> Last Date of the month =" + last_date + "<br><br>");

                        var dy = 1; // day variable for adjustment of starting date.
                        document.write("<table><tr><td>Sun</td><td>Mon</td><td>Tue</td><td>Wed</td><td>Thu</td><td>Fri</td><td>Sat</td>");

                        for (i = 0; i <= 41; i++) {
                            if ((i % 7) == 0) {
                                document.write("</tr><tr>");
                            } // if week is over then start a new line
                            if ((i >= first_day) && (dy <= last_date)) {
                                document.write("<td>" + dy + "</td>");
                                dy = dy + 1;
                            } else {
                                document.write("<td> </td>");
                            } // Blank dates.
                        } // end of for loop

                        document.write("</tr></table>")
                    </script>
                </div>
            </div>
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
            <h1 class="content-main-title">Cộng đồng</h1>
            <div class="content-main-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
            </div>
            <div class="content-main-list">
                <%--<div class="content-main-item">
                    <div class="profile">
                        <img class="background" src="./image/background.png" alt="">
                        <img class="avatar" src="./image/ava1.png" alt="">
                        <p class="name">Phúc Tân</p>
                    </div>
                    <div class="content">
                        <div class="item">
                            <p class="time">8 A.M - 9 A.M</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                        </div>
                    </div>
                    <button class="see-more" onclick="myFunction()">Xem chi tiết</button>
                </div>
                <div class="content-main-item">
                    <div class="profile">
                        <img class="background" src="./image/background.png" alt="">
                        <img class="avatar" src="./image/ava1.png" alt="">
                        <p class="name">Phúc Tân</p>
                    </div>
                    <div class="content">
                        <div class="item">
                            <p class="time">8 A.M - 9 A.M</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                        </div>
                    </div>
                    <button class="see-more" onclick="myFunction()">Xem chi tiết</button>
                </div>
                <div class="content-main-item">
                    <div class="profile">
                        <img class="background" src="./image/background.png" alt="">
                        <img class="avatar" src="./image/ava1.png" alt="">
                        <p class="name">Phúc Tân</p>
                    </div>
                    <div class="content">
                        <div class="item">
                            <p class="time">8 A.M - 9 A.M</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                        </div>
                    </div>
                    <button class="see-more" onclick="myFunction()">Xem chi tiết</button>
                </div>
                <div class="content-main-item">
                    <div class="profile">
                        <img class="background" src="./image/background.png" alt="">
                        <img class="avatar" src="./image/ava1.png" alt="">
                        <p class="name">Phúc Tân</p>
                    </div>
                    <div class="content">
                        <div class="item">
                            <p class="time">8 A.M - 9 A.M</p>
                            <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                        </div>
                    </div>
                    <button class="see-more" onclick="myFunction()">Xem chi tiết</button>
                </div>
            </div>--%>
                <c:forEach items="${appointments}" var="appointment">
                    <div class="content-main-item">
                        <div class="profile">
                            <c:if test="${appointment.host.background!=null}">
                                <img src="data:image/jpeg;base64,${appointment.host.background}" class="background">
                            </c:if>
                            <c:if test="${appointment.host.background==null}">
                                <img class="background" src="<c:url value="/template/image/backgroundDefault.png"/>"
                                     alt="">
                            </c:if>
                            <c:if test="${appointment.host.avatar!=null}">
                                <img src="data:image/jpeg;base64,${appointment.host.avatar}" class="avatar">
                            </c:if>
                            <c:if test="${appointment.host.avatar==null}">
                                <img class="avatar" src="<c:url value="/template/image/avatarDefault.jpg"/>" alt="">
                            </c:if>
                            <p class="name">${appointment.host.fullName}</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <button class="see-more" onclick="myFunction()">Xem chi tiết</button>
                    </div>
                </c:forEach>
                    <form action="<c:url value="/home"/> " id="formPaging" method="get">
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                    </form>
            </div>
            <div class="content-right">
                <%--<div class="list-friends">
                    <p class="list-friends-title">Danh sách bạn bè</p>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                    <div class="list-friends-item">
                        <img src="../image/ava.png" alt="">
                        <p class="name"><a href=""> Ho va ten </a></p>
                        <i class="fa-solid fa-mug-saucer"></i>
                    </div>
                </div>--%>
                <jsp:include page="/common/web/ListFriend.jsp"/>
                <div class="your-profile">
                    <p class="title">Lịch đặt hẹn của bạn</p>
                    <div class="your-profile-main">
                        <div class="profile">
                            <img class="background" src="./image/background.png" alt="">
                            <img class="avatar" src="./image/ava1.png" alt="">
                            <p class="name">Phúc Tân</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="time">8 A.M - 9 A.M</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>60 Nguyen Luong...</p>
                            </div>
                        </div>
                        <p class="add"><a href="">+</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="booking-apm" id="myDIV">
            <div class="content">
                <img src="../image/background.png" alt="" class="background">
                <button class="exit" onclick="myFunction()">X</button>
                <img src="../image/ava1.png" alt="" class="ava">
                <h1 class="name">Phúc Tân</h1>
                <form class="infor-apm">
                    <p class="title">Thông tin cuộc hẹn:</p>
                    <div class="list">
                        <i class="fa-solid fa-clock"></i>
                        <p class="time">8 A.M - 9 A.M</p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-store"></i>
                        <p class="type-location">Coffee</p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-location-dot"></i>
                        <p class="address">60 Nguyen Luong Bang</p>
                    </div>
                    <div class="list">
                        <i class="fa-solid fa-users"></i>
                        <p class="number">3 người khác tham gia</p>
                    </div>
                    <input class="submit" type="submit" value="KẾT NỐI NGAY">
                </form>
            </div>
        </div>
    </div>
    <script type="text/javascript">
        function myFunction() {
            var x = document.getElementById("myDIV");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "none";
            }
        }
    </script>
    <%--<script type="text/javascript">
        var totalPages = ${totalPages};
        var currentPage = ${page};
        var limit = 10;
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 5,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#formPaging').submit();
                }
            }).on('page', function (event, page) {
                console.info(page + ' (from event listening)');
            });
        });
    </script>--%>
    <script type="text/javascript">
        <%--var totalPages = ${page};--%>
        var currentPage = ${page};
        var limit = 6;
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: 10,
                visiblePages: 5,
                startPage: 1,
                onPageClick: function (event, page) {
                    if(currentPage !== page){
                        $('#maxPageItem').val(limit);
                        $('#page').val(page);
                        $('#formPaging').submit();
                    }
                }
            }).on('page', function (event, page) {
                console.info(page + ' (from event listening)');
            });
        });
    </script>
</body>
</html>