<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select query
	String query = "select A.*, B.* "
			+ "from `seller` as A "
			+ "join `used_goods` as B "
			+ "on A.id = B.sellerid "
			+ "order by B.id DESC ";
	ResultSet result = ms.select(query);
%>
<div class="goods-box d-flex flex-wrap justify-content-between">
	<%
		while (result.next()) {
	%>
	<article class="goods mb-3 p-2">
		<% 
			if (result.getString("productImgUrl") == null) {
		%>
		<div class="null-image w-100 d-flex justify-content-center align-items-center">
			<h4 class="text-secondary font-weight-bold">
				이미지 없음			
			</h4>
		</div>
		<%
			}
			else {
		%>
		<img src="<%=result.getString("productImgUrl") %>" alt="" class="w-100" height="200px">
		<%
			}
		%>
		<div class="font-weight-bold mt-2">
			<%=result.getString("title") %>
		</div>
		<div class="text-secondary">
			<%=result.getInt("price") %>원
		</div>
		<div class="seller mb-3">
			<%=result.getString("nickname") %>
		</div>
	</article>
	<%
		}
	%>
</div>

<%
	// DB 연결 해제
	ms.disconnect();
%>