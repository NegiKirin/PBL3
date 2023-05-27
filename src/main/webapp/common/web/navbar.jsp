<%@include file="/common/taglib.jsp" %>


<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:if test="${user==null}">
	<c:redirect url="/login"></c:redirect>
</c:if>
<div id="header">
    <div class="header-info-user">
        <img src="data:image/jpeg;base64,${user.avatar}" alt="avatar"/>
        <a href="<c:url value="/profile?id=${user.id}"/>"><p class="header-info-user-name"> ${user.fullName} </p></a>
    </div>

    <div class="header-main">
        <li><a href="">
            <button>
                <i class="fa-solid fa-magnifying-glass"></i>
            </button>
        </a>
        </li>
        <li><a href="<c:url value="/home?page=1&maxPageItem=6&sortName=createdDate&sortBy=desc"/>">
            <button class="header-main-mainbutton">
                <i class="fa-solid fa-globe"></i>
            </button>
        </a>
        </li>
        <li><a href="<c:url value="/Q&A?listFriend=1"/>">
            <button class = "header-main-rightbutton">
                <i class="fa-solid fa-book"></i>
            </button>
        </a></li>
    </div>
    <div class="header-noti">
        <button class="noti-btn">
            <i class="fa-sharp fa-regular fa-bell"></i>
        </button>
        <button class="menu-btn">
            <i class="fa-solid fa-bars"></i>
        </button>
        <div class="header-menu hide" id="header-menu">
            <a class="item" href="<c:url value="/logout"/>">
                Đăng xuất
            </a>
            <a class="item" href="<c:url value="/profile?id=${user.id}"/>">
                Thay đổi thông tin tài khoản
            </a>
            <a class="item">
                Đánh giá các cuộc hẹn
            </a>
            <a class="item" href="<c:url value="/list-friends?page=1&maxPageItem=8&sortName=createdDate&sortBy=desc"/> ">
                Xem danh sách bạn bè
            </a>
        </div>
    </div>
</div>
