<%--
  Created by IntelliJ IDEA.
  User: Le Viet Thanh
  Date: 5/20/2023
  Time: 3:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>List Friends</title>
        <script src="https://kit.fontawesome.com/5175756225.js" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="<c:url value="/template/css/list-friends.css"/>">
        <link rel="stylesheet" href="<c:url value="/template/css/navbar.css"/>">
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
                    <p class="content-main-title">Danh sách bạn bè của bạn (64)</p>
                    <div class="list-friends">
                        <a class="item">
                            <img class="avatar" src="../../template/image/avatarDefault.png">
                            <p class="user-name">Le Viet Thanh</p>
                        </a>
                        <a class="item">
                            <img class="avatar" src="../../template/image/avatarDefault.png">
                            <p class="user-name">Le Viet Thanh</p>
                        </a>
                        <a class="item">
                            <img class="avatar" src="../../template/image/avatarDefault.png">
                            <p class="user-name">Le Viet Thanh</p>
                        </a>
                    </div>
                </div>
                <div class="content-right">
                    <jsp:include page="/common/web/ListFriend.jsp"></jsp:include>
                </div>
            </div>
        </div>
        <script src="<c:url value="/template/js/navbar.js"/>"></script>
    </body>
</html>
