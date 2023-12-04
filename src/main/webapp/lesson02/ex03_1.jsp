<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>result</title>
	</head>
	<body>
		<%
			// input type text
			String nickname = request.getParameter("nickname");
			String hobby = request.getParameter("hobby");
			
			// input type radio
			String animal = request.getParameter("animal");
			
			// select option
			String fruit = request.getParameter("fruit");
			
			// input type checkbox (more than 1)
			String[] foodArr = request.getParameterValues("food");
		%>
		
		<table border="1">
			<tr>
				<th>nickname</th>
				<td><%=nickname %></td>
			</tr>
			<tr>
				<th>hobby</th>
				<td><%=hobby %></td>
			</tr>
			<tr>
				<th>animal</th>
				<td><%=animal %></td>
			</tr>
				<th>fruit</th>
				<td><%=fruit %></td>
			</tr>
			</tr>
				<th>food</th>
				<td>
					<%-- <%=foodArr %> --%>
					<%
						String result = "";
						if (foodArr != null) {
							for (int i = 0; i < foodArr.length; i++) {
								String food = foodArr[i];
								result += food + ",";
							}
							out.print(result.substring(0, result.length() - 1));
						}
					%>
				</td>
			</tr>
		</table>
	</body>
</html>