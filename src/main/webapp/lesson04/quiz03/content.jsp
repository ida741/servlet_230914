<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select query
	String query = "select A.*, B.*"
			+ "from `seller` as A"
			+ "join `used_goods` as B"
			+ "on A.id = B.sellerid"
			+ "order by B.id DESC ";
	ResultSet result = ms.select(query);
%>
<div class="goods-box d-flex flex-wrap justify-content-between">
	<%
		while (result.next()) {
	%>
	<article class="goods">
		<% 
			if (result.getString("productImgUrl") == null) {
		%>
		<div class="null-image">이미지 없음</div>
		<%
			}
			else {
		%>
		<img src="<%=result.getString("productImgUrl") %>" alt="">
		<%
			}
		%>
		<div class="font-weight-bold"></div>
		<div class="text-secondary"></div>
		<div class="seller"></div>
	</article>
	<%
		}
	%>
</div>

<%
	// DB 연결 해제
	ms.disconnect();
%>