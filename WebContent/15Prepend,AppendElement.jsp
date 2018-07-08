<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Prepend, Append Element -->
<!--
	1. Prepend Element: Là thêm mới một nội dung nào đó vào phần đầu tiên của nội dung mỗi element thỏa mãn selector.
		+ prepend(): -> $('div').prepend('<b>Tutorial</b>')
		+ prependTo() -> $('<b>Tutorial</b>').prependTo('div');        	 				
	2. Append Element: Là thêm mới một nội dung nào đó vào cuối của nội dung mỗi Element thỏa mãn selector.
		+ append() -> $('div').append('<br>Tutorial</br>')
		+ appentTo() -> $('<b>Tutorial</b>').appendTo('div');
	3. Append hoặc Prepend một Element có sẵn. 
-->
<script type="text/javascript">
	$(document).ready(function(){
		// Thêm đầu mỗi div (Cách 1):
		$('div').prepend('<b>Programing </b>');		
		<%-- 
		Result:
		Programing JQuery
		Programing Java
		Programing C# 
		--%>
		// Thêm đầu mỗi div (Cách 2):
		$('<b>Programing </b>').prependTo('div');
		<%-- 
		Result:
		Programing JQuery
		Programing Java
		Programing C# 
		--%>
		// Thêm vào cuối mỗi div (Cách 1):
		$('div').append('<b> Tutorial.</b>');
		<%-- 
		Result:
		Programing JQuery Tutorial.
		Programing Java Tutorial.
		Programing C# Tutorial.
		--%>
		// Thêm vào cuối div (Cách 2):
		$('<b> Tutorial.</b>').appendTo('div');
		<%-- 
		Result:
		Programing JQuery Tutorial.
		Programing Java Tutorial.
		Programing C# Tutorial.
		--%>
		
		// Thêm selector vào cuối div(id and class).
		$('div').append($('#spanExisted'));
		<%-- 
		Result:
		JQueryCourse 
		JavaCourse 
		C#Course 
		--%>
		$('div').append($('.classSpanExisted'));		
		<%-- 
		Result:
		JQuerySource
		JavaSource
		C#Source
		--%>
		// Thêm selector với nhau.
		$('#spanExisted').append($('.classSpanExisted'));
		//Result: CourseSource
	});
</script>
</head>

<body>
	<h2>Lession 15</h2>
		
	<div>JQuery</div>
	<div>Java</div>
	<div>C#</div>
	
	<span id="spanExisted">Course</span>
	<span class="classSpanExisted">Source</span>
			
</body>
</html>