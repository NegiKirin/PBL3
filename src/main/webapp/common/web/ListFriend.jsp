<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 17/04/2023
  Time: 14:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>

<div class="list-friends">
    <p class="list-friends-title">Danh sách bạn bè</p>
    <c:forEach items="${listFriend}" var="friend">
        <div class="list-friends-item">
            <c:if test="${friend.avatar==null}">
                <img src="/PBL3/template/image/avatarDefault.jpg" alt="avatar">
            </c:if>
            <c:if test="${friend.avatar!=null}">
                <img src="data:image/jpeg;base64,${friend.avatar}" alt="avatar">
            </c:if>
            <p class="name"><a href=""> ${friend.fullName} </a></p>
            <i class="fa-solid fa-mug-saucer"></i>
        </div>
    </c:forEach>
    <%--<div class="list-friends-item">
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
    </div>--%>
</div>