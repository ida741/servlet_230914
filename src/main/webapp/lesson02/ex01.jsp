<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>JSP</title>
	</head>
	<body>
		<!-- html 주석, html 주석은 페이지 소스 보기를 했을 때 보임 -->
		<%-- jsp 주석, jsp 주석은 보이지 않음 --%>
		<%-- jsp(java) -> 컴파일(.class 등이 잠깐 생성됨) -> 빌드 -> 최종결과물 html만 남음 --%>
		
		<%
			// java 문법 시작
			// scriptlet = Spring 할 때 쓰면 안 됨!!!
			int sum = 0;
			for (int i = 1; i <= 10; i++) {
				sum += i;
			}
			
		%>
		<b>합계: </b>
		<input type="text" value="<%= sum %>"><br> <!-- expression -->
		
		
		<%!
			// 선언문 - class 같은 느낌
			// field
			private int num = 100;
			
			// method
			public String getHelloWorld() {
				return "Hello World!";
			}
		%>
		<%= getHelloWorld() %><br>
		<%= num + 20 %>
		
		<%
			// List 뒤쪽에 커서 클릭하고 ctrl + space
			List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
		%>
		
		
	</body>
</html>