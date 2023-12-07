<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<!-- bootstrap CDN address -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
		
		<style>
			header {height:100px;}
			nav {height:80px;}
			footer {height:80px;}
			
			.font-size-40 {font-size:40px;}
			.font-size-30 {font-size:30px;}
			.font-size-20 {font-size:20px;}
			
			a, a:hover {text-decoration:none;}
			.nav-link {color:black; font-size:19px;}
		</style>
	</head>
	<body>
		<div id="wrap" class="container">
			<header class="d-flex align-items-center">
				<jsp:include page="./header.jsp" />
			</header>
			
			<nav class="d-flex align-items-center">
				<jsp:include page="./nav.jsp" />
			</nav>
			
			<section class="content">
				<div class="border border-success p-4 d-flex mb-3">
					<jsp:include page="./artistInfo.jsp" />
				</div>
				
				<div class="song-list pt-2">
					<jsp:include page="songList.jsp" />
				</div>
			</section>
			
			<footer>
				<jsp:include page="./footer.jsp" />
			</footer>
		</div>
	</body>
</html>