<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	// DB 연결
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	// DB select query
	String query = "select * from `seller`";
	ResultSet result = ms.select(query);
%>
<div class="upload px-5">
	<h1 class="my-5">물건 올리기</h1>
	<form method="post" action="/lesson04/quiz03_insert">
		<div class="d-flex justify-content-around">
			<select class="form-control col-3" name="sellerId">
				<option selected value="null">-아이디 선택-</option>
				<%
					while (result.next()) {
				%>
				<option value="<%=result.getInt("id") %>">
					<%=result.getString("nickname") %>
				</option>
				<%
					}
				%>
			</select>
			
			<input type="text" class="form-control col-5" name="title"
				placeholder="제목">

			<div class="input-group mb-3 col-3">
				<input type="text" class="form-control" placeholder="가격" name="price">
				<div class="input-group-append">
					<span class="input-group-text">원</span>
				</div>
			</div>
		</div>
		
		<p>
			<textarea class="form-control" rows="5" name="description"></textarea>
		</p>
		
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="input-group-text" name="productImgUrl">이미지 url</span>
			</div>
			<input type="text" class="form-control">
		</div>
		
		<button type="submit" class="btn btn-light form-control mb-3">저장</button>
	</form>
</div>
<%
	// DB disconnect
	ms.disconnect();
%>