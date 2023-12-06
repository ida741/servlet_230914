<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<!-- 위쪽 코드가 이 파일이 jsp임을 알려주므로 냅두지만 나머지는 전체 페이지 html 태그와 겹치므로 치움 -->

<p>
	<!-- 전체 페이지와 객체 이름이 같으면 충돌함 -->
	현재 시간: <%= Calendar.getInstance().getTime() %>
	<!-- Calendar.getInstance().getTime()는 Date 타입을 return -->
	
</p>