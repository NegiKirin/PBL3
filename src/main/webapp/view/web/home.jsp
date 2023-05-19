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
    <script src="<c:url value="/template/paging/jquery.twbsPagination.js"/> " type="text/javascript"></script>
</head>
<body>
<jsp:include page="/common/web/navbar.jsp"></jsp:include>
<div id="main">
    <div id="content">
        <div class="content-left">
            <jsp:include page="/common/web/Calender.jsp"></jsp:include>
            <div class="content-list-meeting">
                <p class="text">Lịch hẹn</p>
                <p class="all"><a href="">Tất cả</a></p>
                <div class="content-left-item">
                    <p class="time-date"> 8 A.M - 9 A.M 08/03/2023</p>
                    <p class="with">Với</p>
                    <p class="name">Tran Le Nguyen</p>
                    <input type="hidden" value="2023-05-15 15:22:19.0" name="date">
                </div>
                <div class="content-left-item">
                    <p class="time-date"> 8 A.M - 9 A.M 08/03/2023</p>
                    <p class="with">Với</p>
                    <p class="name">Tran Le Nguyen</p>
                </div>
            </div>
        </div>
        <div class="content-main">

            <div class="content-main-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
            </div>
            <div class="content-main-list">
                <c:forEach items="${appointments}" var="appointment">
                    <div class="content-main-item">
                        <div class="profile">
                            <img src="data:image/jpeg;base64,${appointment.host.background}" class="background" alt="background"/>
                            <img src="data:image/jpeg;base64,${appointment.host.avatar}" class="avatar" alt="avatar"/>
                            <p class="name">${appointment.host.fullName}</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="date">07/05/2023</p>
                                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}"></p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>${appointment.address.detail}</p>
                            </div>
                        </div>
                        <button class="see-more" onclick="myFunction()">Xem chi tiết</button>
                    </div>

                </c:forEach>
                    <form action="<c:url value="/home"/> " id="formPaging" method="get">
                        <ul class="pagination" id="pagination"></ul>
                        <input type="hidden" value="" id="page" name="page"/>
                        <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                        <input type="hidden" value="" id="sortName" name="sortName">
                        <input type="hidden" value="" id="sortBy" name="sortBy">
                        <c:if test="${dateMeeting != null}">
                            <input type="hidden" value="${dateMeeting}" id="dateMeeting" name="dateMeeting">
                        </c:if>
                    </form>
            </div>
            </div>
            <div class="content-right">
                <jsp:include page="/common/web/ListFriend.jsp"/>
                <div class="your-profile">
                    <p class="title">Lịch đặt hẹn của bạn</p>
                    <div class="your-profile-main">
                        <div class="profile">
                            <img src="data:image/jpeg;base64,${user.background}" class="background" alt="background"/>
                            <img src="data:image/jpeg;base64,${user.avatar}" class="avatar" alt="avatar"/>
                            <p class="name">${user.fullName}</p>
                        </div>
                        <div class="content">
                            <%--<c:forEach items="${appointmentOf}" var="appointment">
                                <div class="item">
                                    <p class="time" id="start">
                                        <input type="time" value="${appointment.starting_time}" disabled="disabled">
                                        <input type="time" value="${appointment.ending_time}" disabled="disabled">
                                    </p>
                                    <p class="address"><i class="fa-solid fa-location-dot"></i>${appointment.detail}</p>
                                </div>
                            </c:forEach>--%>
                                <div class="item">
                                    <p class="date">07/05/2023</p>
                                    <label class="line"></label>
                                    <p class="time" starttime="2023-05-15 15:22:19.0" endtime="2023-05-15 19:22:13.0">
                                        15:20 PM - 19:20 PM
                                    </p>
                                    <p class="address"><i class="fa-solid fa-location-dot"></i>Mô tả</p>
                                </div>
                                <div class="item">
                                    <p class="date">07/05/2023</p>
                                    <p class="time" starttime="2023-05-15 15:22:19.0" endtime="2023-05-15 19:22:13.0">
                                        15:20 PM - 19:20 PM
                                    </p>
                                    <p class="address"><i class="fa-solid fa-location-dot"></i>Mô tả</p>
                                </div>
                                <div class="item">
                                    <p class="date">07/05/2023</p>
                                    <p class="time" starttime="2023-05-15 15:22:19.0" endtime="2023-05-15 19:22:13.0">
                                        15:20 PM - 19:20 PM
                                    </p>
                                    <p class="address"><i class="fa-solid fa-location-dot"></i>Mô tả</p>
                                </div>
                        </div>
                        <a href="<c:url value="/create-appointment"/> ">
                            <button class="add">
                                <i class="fa-solid fa-gear"></i>
                            </button>
                        </a>
                    </div>
                </div>
            </div>
        
        <div class="booking-apm" id="myDIV">
            <div class="content">
                <img src="data:image/jpeg;base64,${user.background}" alt="" class="background">
                <button class="exit" onclick="myFunction()">X</button>
                <img src="data:image/jpeg;base64,${user.avatar}" alt="" class="ava">
                <h1 class="name">Phúc Tân</h1>
                <form class="infor-apm">
                    <p class="title">Thông tin cuộc hẹn:</p>
                    <div class="list">
                        <i class="fa-solid fa-clock"></i>
                        <p class="date">07/05/2023</p>
                        <p class="time">8 A.M - 9 A.M</p>
                    </div>
                    <div class="list inline">
                        <i class="fa-solid fa-store"></i>
                        <p class="type-location">Coffee</p>
                    </div>
                    <div class="list inline">
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
    <script src="<c:url value="/template/js/Home.js"/>"></script>
    <script src="<c:url value="/template/js/Calender.js"/>"></script>
<%--    <script type="text/javascript">

    </script>--%>
    <script type="text/javascript">
        var totalPages = ${totalPages};
        var currentPage = ${page};
        var limit = 6;
        var dateMeeting = "";
        $(function () {
            window.pagObj = $('#pagination').twbsPagination({
                totalPages: totalPages,
                visiblePages: 10,
                startPage: currentPage,
                onPageClick: function (event, page) {
                    if(currentPage !== page){
                        $('#maxPageItem').val(limit);
                        $('#page').val(page);
                        $('#sortName').val('createdDate');
                        $('#sortBy').val('desc');
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