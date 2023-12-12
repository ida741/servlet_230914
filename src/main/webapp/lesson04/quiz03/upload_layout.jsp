<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>홍당무 마켓</title>
		
		<!-- bootstrap CDN address -->
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
		
		<style>
			header {height: 100px;}
			nav {height: 80px;}
			footer {height: 80px;}
			
			a, a:hover {text-decoration:none;}
			
			.nav-link {font-size:20px;}
			
			.goods {border: solid orange; width: 360px; height:300px;}
			.goods:hover {background-color:#F2F2F2;}
			.seller {color: orange;}
			.null-image {height: 200px;}
		</style>
		
		<script>
			$(document).ready(function() {
								
				$("#submitBtn").on("click", function() {
					let id = $("#sellerId > option:selected").val();
					let title = $("#title").val();
					let price = $("#price").val();
					let description = $("#description").val();
					
					if (id == "null") {
						alert("아이디를 선택해주세요");
						return false;
					}
					else if (title == "") {
						alert("제목을 입력해주세요");
						return false;
					}
					else if (price == "") {
						alert("가격을 입력해주세요");
						return false;
					}
					else if (description == "") {
						alert("설명을 입력해주세요");
						return false;
					}
				})
				
			})
		</script>
	</head>
	<body>
		<div id="wrap" class="container bg-dark">
			<header class="bg-primary d-flex justify-content-center align-items-center">
				<jsp:include page="header.jsp" />
			</header>
			
			<nav class="bg-success d-flex align-items-center">
				<jsp:include page="nav.jsp" />
			</nav>
			
			<section class="content bg-danger pt-3">
				<jsp:include page="upload.jsp" />
			</section>
			
			<footer class="bg-warning d-flex justify-content-center align-items-center">
				<jsp:include page="footer.jsp" />
			</footer>
		</div>
	</body>
</html>