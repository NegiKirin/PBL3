<%@include file="/common/taglib.jsp" %>

<c:if test="${user==null}">
	<c:redirect url="/login"></c:redirect>
</c:if>
<div id="header">
    <div class="header-info-user">
        <img src="data:image/jpeg;base64,${user.avatar}" alt="avatar"/>
        <a href="<c:url value="/profile?id=${user.id}"/>"><p class="header-info-user-name"> ${user.fullName} </p><i
                class="fa-solid fa-user-pen"></i></a>
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
            <button>
                <i class="fa-solid fa-book"></i>
            </button>
        </a></li>
    </div>
    <div class="header-noti">
        <a href=""> <i class="fa-sharp fa-regular fa-bell"></i>
        </a>
    </div>
</div>
