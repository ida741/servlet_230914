<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
%>
<img src="<%=artistInfo.get("photo")%>" alt="IU" width="150">
<div class="ml-4">
	<div class="font-size-30 font-weight-bold"><%=artistInfo.get("name")%></div>
	<div class="font-size-20"><%=artistInfo.get("agency")%></div>
	<div class="font-size-20"><%=artistInfo.get("debute")%></div>
</div>