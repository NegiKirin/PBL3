<%@page import="model.User"%>
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
		%>
			<h1>xin chao <%=user.getEmail() %></h1>
			<br>
			<a href="logout">Đăng xuất</a>
		<%} %>

	<h1>Thanh Cong roi đó</h1>
</body>
</html>