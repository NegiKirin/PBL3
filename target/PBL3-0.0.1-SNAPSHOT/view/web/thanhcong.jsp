<%@page import="com.studywithme.model.User"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.Base64"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
		User user = null;
		if(obj != null){
			user = (User)obj;
		}
		if(user==null){
		%>
		<h1> Khoong co j het</h1>
		<% 
		}else{
			String base64Image = "";
			if(user.getAvatar()!=null){
				base64Image = Base64.getEncoder().encodeToString(user.getAvatar());
			}
			
		%>
			<h1>xin chao <%=user.getEmail() %></h1>
			<img src="data:image/jpeg;base64,<%=base64Image%>" width="240" height="300">
			<h2>
			${base64Image}
			</h2>
			<p>
			${user.lastName}
			</p>
			<br>
			<a href="/PBL3/logout">Đăng xuất</a>
			<a href="/view/web/uploadimg.jsp">edit avatar</a>
		<%} %>

	<h1>Thanh Cong roi đó</h1>
</body>
</html>