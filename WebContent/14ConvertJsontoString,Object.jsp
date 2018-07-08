<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Chuyển đổi qua lại giữa Json, String và Object: Tại client hoặc trên Server -->
<!--
	1. JSON.stringify(): Chuyển đổi từ JSON to String.
	2. JSON.parse(): Chuyển đổi từ String to JSON.
	3. JavaScriptSerializer: Chuyển đổi.(Tại server: dành cho . NET)    	 				
-->
<script type="text/javascript">
	$(document).ready(function(){
		// Tạo 1 Biến JSON có 4 item:
		var employeeJson = {
			"firstName":"Mai Van",
			"lastName":" Tu",
			"email":"tu@gmail.com",
			"age":23
		};	
		$('#divResult').html("firstName: "+employeeJson.firstName+", lastname: "+employeeJson.lastName+ ", email: "+employeeJson.email+", age: "+employeeJson.age);
		// firstName: Mai Van, lastname: Tu, email: tu@gmail.com, age: 23
		
		// Chuyển từ JSON=> String.
		$('#divResultJsonTStrings').html(JSON.stringify(employeeJson));
		// {"firstName":"Mai Van","lastName":" Tu","email":"tu@gmail.com","age":23}
		
		// Chuyển từ String => JSON.
		var objContentString = $('#divResultJsonTStrings').html();
		var objJSON = JSON.parse(objContentString);
		
		// Hiển thị giữa console.log và alert()
		console.log(objJSON);// {firstName: "Mai Van", lastName: " Tu", email: "tu@gmail.com", age: 23}
		alert(objJSON); // object Object
		//=> Khi demo hiển thị giá trị chúng ta nên sử dụng console.log so với alert.
		
	});
</script>
</head>

<body>
	<h2>Lession 13</h2>
	
	<div id="divResult"></div>
	<div id="divResultJsonTStrings"></div>
	
	<!-- Thực hiên convert trên server khi submit form -->
	<form action="ConvertServlet" method="POST">
		
	</form>
			
</body>
</html>