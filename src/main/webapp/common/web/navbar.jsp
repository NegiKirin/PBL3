<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url value="/template" var="url"></c:url>

<div id="header">
	<div class="header-info-user">
	<c:if test="${user.avatar == null}">
		<img src="./template/image/avatarDefault.jpg">
	</c:if>
	<c:if test="${user.avatar!=null}">
		<img alt="" src="data:image/jpeg;base64,${user.avatar}">
	</c:if>
	<a href="/PBL3/edit-profile"><p class="header-info-user-name">${user.firstName} ${user.lastName}</p></a> <i class="fa-solid fa-user-pen"></i>
	<a href="/PBL3/edit-profile"><p class="header-info-user-name">${user.firstName} ${user.lastName}</p><i class="fa-solid fa-user-pen"></i></a> 
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
