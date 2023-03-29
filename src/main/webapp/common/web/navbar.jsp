<%@page import="com.studywithme.model.User"%>
<%@page import="java.util.Base64"%>
<jsp:include page="/common/taglib.jsp"></jsp:include>
<c:url value="/template" var="url"></c:url>

<div id="header">
	<div class="header-info-user">
	<img src="data:image/jpeg;base64,${user.avatar }" alt="" id="u_avatar">
	<a href=""><p class="header-info-user-name">${user.firstName}
			${user.lastName}</p></a> <i class="fa-solid fa-user-pen"></i>
	</div>

<div class="header-main">
	<li><a href="">
			<button>
				<i class="fa-solid fa-magnifying-glass"></i>
			</button>
		</a>
	</li>
	<li><a href="">
			<button class="header-main-mainbutton">
				<i class="fa-solid fa-globe"></i>
			</button>
	</a>
	</li>
	<li><a href="">
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
