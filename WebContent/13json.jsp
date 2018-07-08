<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Json. -->
<!--
	1. JSON là từ viết tắt của Javascript Object Notation.
	2. Là một định dạng nhỏ gọn dùng để truyền dữ liệu.
	3. Rất dễ sử dụng và có thể thay thế XML.
	4. Lưu dữ liệu dưới dạng key/value. 	 				
-->
<script type="text/javascript">
	$(document).ready(function(){
		/* var employeeJson = {
			"firstName":"Mai Van",
			"lastName":" Tu",
			"email":"tu@gmail.com",
			"age":23
		};	
		$('#divResult').html("firstName: "+employeeJson.firstName+", lastname: "+employeeJson.lastName+ ", email: "+employeeJson.email+", age: "+employeeJson.age); */
		
		var employeeJsonList = [
		{
				"firstName":"Mai Van",
				"lastName":" Tu",
				"email":"tu@gmail.com",
				"age":23
		},
		{
			"firstName":"Cop",
			"lastName":" Huynh",
			"email":"cophuynh@gmail.com",
			"age":23
		}
		];
		/* $('#divResult').html("firstName: "+employeeJsonList[0].firstName+", lastname: "+employeeJsonList[0].lastName+ ", email: "+employeeJsonList[0].email+", age: "+employeeJsonList[0].age);
		$('#divResult2').html("firstName: "+employeeJsonList[1].firstName+", lastname: "+employeeJsonList[1].lastName+ ", email: "+employeeJsonList[0].email+", age: "+employeeJsonList[1].age); */
		
		var result='';
		$.each($(employeeJsonList),function(index,element){
			result+="firstName: "+element.firstName+", lastname: "+element.lastName+ ", email: "+element.email+", age: "+element.age +"<br>";			
		});
		$('#divResult').html(result);
	});
</script>
</head>

<body>
	<h2>Lession 13</h2>
	
	<div id="divResult"></div>
	<div id="divResult2"></div>
</body>
</html>