<%@page import="com.studywithme.dao.UserDAO"%>
<%@page import="com.studywithme.model.User"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	Object obj = session.getAttribute("user");
	User user = (User)obj;
	String url = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
	UserDAO.maxAllowedPacket();
	if(user!=null){
		url += "/view/web/home.jsp";
	}else{
		url+= "/view/web/login.jsp";
	}
	response.sendRedirect(url);
	%>
</body>
</html>