<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Insert Element before and after -->
<!--
	1. Là  các method thao tác với DOM cho phép thêm phần từ HTML vào trước hoặc sau một phần tử trong selector.
	2. Các method:
		+ before hoặc insertBefore.
		+ after hoặc insertAfter.
-->
<script type="text/javascript">
	$(document).ready(function(){
		// Thêm trước mỗi div:
		/* $('<b>Tutorial</b>').insertBefore('div'); */
		/* $('<b>Tutorial</b>').before('div'); */
		<%--
		Result:
		Tutorial
		C#
		Tutorial
		Java
		--%>
		// Thêm sau mỗi div:
		/* $('<b>Tutorial</b>').insertAfter('div'); */
		/* $('<b>Tutorial</b>').after('div'); */
		<%--
		Result:
		C#
		Tutorial
		Java
		Tutorial
		--%>
				
	});
</script>
</head>

<body>
	<h2>Lession 16</h2>
	<div>C#</div>
	<div>Java</div>
	
			
</body>
</html>