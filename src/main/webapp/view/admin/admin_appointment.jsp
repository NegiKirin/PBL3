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
    <link rel="stylesheet" href="/PBL3/template/css/admin-appointment.css">
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
                <a class="user-list">
                    <p class="content">Quản lí danh sách Địa điểm</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a class="user-list">
                    <p class="content">Quản lí danh sách Trường học</p>
                    <i class="fa-solid fa-bars"></i>
                </a>
                <a class="user-list selected">
                    <p class="content">Quản lí danh sách Cuộc hẹn</p>
                    <i class="fa-solid fa-bars"></i>
                </a>

        </div>
        <div class="content-main">
            <h1 class="title-main">DANH SÁCH CÁC CUỘC HẸN</h1>
            <div class="content-main-search">
                <i class="fa-solid fa-magnifying-glass"></i>
                <input type="text" placeholder="Gõ gì đó để tìm kiếm ...">
            </div>
            <div class="content-main-list">
<%--                <c:forEach items="${appointments}" var="appointment">--%>
                    <div class="content-main-item">
                        <div class="profile">
                            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
                            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
                            <p class="name">Lê Việt Thanh</p>
                        </div>
                        <div class="content">
                            <div class="item">
                                <p class="date">12-03-2023</p>
                                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                                <input type="hidden" value="coffee">
                            </div>
                        </div>
                        <button class="see-more">Xem chi tiết</button>
                    </div>
                    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
    <div class="content-main-item">
        <div class="profile">
            <img src="../../template/image/backgroundDefault.png" class="background" alt="background"/>
            <img src="../../template/image/avatarDefault.png" class="avatar" alt="avatar"/>
            <p class="name">Lê Việt Thanh</p>
        </div>
        <div class="content">
            <div class="item">
                <p class="date">12-03-2023</p>
                <p class="time" startTime="${appointment.starting_time}" endTime = "${appointment.ending_time}">00:00 - 00:00</p>
                <p class="address"><i class="fa-solid fa-location-dot"></i>123 Nguyễn Lương Bằng</p>
                <input type="hidden" value="coffee">
            </div>
        </div>
        <button class="see-more">Xem chi tiết</button>
    </div>
<%--                </c:forEach>--%>
                <form action="<c:url value="/home"/> " id="formPaging" method="get">
                    <ul class="pagination" id="pagination"></ul>
                    <input type="hidden" value="" id="page" name="page"/>
                    <input type="hidden" value="" id="maxPageItem" name="maxPageItem">
                    <input type="hidden" value="${pageable.sorter.sortName}" id="sortName" name="sortName">
                    <input type="hidden" value="${pageable.sorter.sortBy}" id="sortBy" name="sortBy">
                    <c:if test="${pageable.sorter.dateMeeting != null}">
                        <input type="hidden" value="${pageable.sorter.dateMeeting}" id="dateMeeting" name="dateMeeting">
                    </c:if>
                </form>
            </div>
            <div class="content-add"><i class="fa-solid fa-plus"></i></div>
        </div>
    </div>
</div>

<div class="add-new-school-main hide-add-div">

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
