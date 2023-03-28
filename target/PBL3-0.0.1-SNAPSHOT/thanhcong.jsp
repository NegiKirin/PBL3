<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.Base64"%>
<%@page import="model.User"%>
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
			String base64Image = Base64.getEncoder().encodeToString(user.getAvatar());
		%>
			<h1>xin chao <%=user.getEmail() %></h1>
			<img src="data:image/jpeg;base64,${base64Image}" width="240" height="300">
			<br>
			<a href="logout">Đăng xuất</a>
			<a href="uploadimg.jsp">edit avatar</a>
		<%} %>

	<h1>Thanh Cong roi đó</h1>
</body>
</html>