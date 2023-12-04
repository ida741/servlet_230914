<%@page import="java.util.List"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.lang.reflect.Array"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>길이 변환</title>
	</head>
	<body>
		<%
			int cm = Integer.valueOf(request.getParameter("cm"));
			String[] unitsArr = request.getParameterValues("units");
		%>
		
		<h1>길이 변환 결과</h1>
		<h3><%=cm %>cm</h3>
		<hr>
		<h2>
			<%
				String result = "";
				List<String> unitsList = Arrays.asList(unitsArr);
				
				if (unitsList.contains("inch")) {
					result += (cm / 2.54) + "in<br>";
				}
				
				if (unitsList.contains("yard")) {
					result += (cm / 91.44) + "yd<br>";
				}
				
				if (unitsList.contains("feet")) {
					result += (cm / 30.48) + "ft<br>";
				}
				
				if (unitsList.contains("meter")) {
					result += (cm / 100.0) + "m<br>";
				}
				
				out.print(result);
			%>
		</h2>
	</body>
</html>