<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>결과</title>
	</head>
	<body>
		<h1>결과</h1>
		<b>id: </b>
		<%= request.getParameter("id") %>
		<br>
		<b>name: </b>
		<%= request.getParameter("name") %>
		<br>
		<b>age: </b>
		<%= request.getParameter("age") %>
		<br>
		
	</body>
</html>