<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Post Method Form 태그</title>
	</head>
	<body>
		<form method="post" action="/lesson02/ex03_1.jsp">
			1. What is your nickname?
			<input type="text" name="nickname"><br><br>
			
			2. What is your hobby?
			<input type="text" name="hobby"><br><br>

			3. Dog or cat?
			<label>dog <input type="radio" name="animal" value="dog" checked></label>
			<label>cat <input type="radio" name="animal" value="cat"></label>
			<br><br>
			
			4. Choose all food you like. <br>
			<label>Mint-chocolate <input type="checkbox" name="food" value="mintChocolate"></label>
			<label>Pineapple Pizza <input type="checkbox" name="food" value="pineapplePizza"></label>
			<label>Pupa <input type="checkbox" name="food" value="pupa"></label>
			<br><br>
			
			5. Choose your favourite fruit. <br>
			<select name="fruit">
				<option selected>apple</option>
				<option>banana</option>
				<option>peach</option>
				<option>strawberry</option>
				<option>grape</option>
			</select>
			<br><br>
			
			<button type="submit">submit</button>
		</form>
	</body>
</html>