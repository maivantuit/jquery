<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 5</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Selector -->
<!--
	1. Là khái niêm quan trọng trong JQuery chp phép bạn lấy và thao tác với các phần tử HTML.
	2. Có các loại selector khác nhau:
		+ ID
		+ Tag name (*):Thao tác với các phần tử thông qua tag name.
			- Lấy ra các phần từ theo tên thẻ, lồng nhau.
			- Thao tác get -set thuộc tính css cho phần tử.
			- Lấy nội dung html.
			- Lặp qua các phần tử sử dụng this.
			- Thao tác với dòng chẳn lẻ trong bảng.
			- Kết hợp với id selector.
		+ Class name
		+ Attribute
		+ Attribute value		
		 				
-->
<script type="text/javascript">
	$(document).ready(function() {
		// Lấy ta số thẻ a trong div: 1.
		var eleDiv = $('div a');
		alert('Số thẻ a trong div: ' + eleDiv.length);
		// Lấy ra html của table.
		var eleTable = $('table').html();
		alert(eleTable);
		// Lấy ra text của table.
		var eleTableText = $('table').text();
		alert(eleTableText);
		// Đổi backgroud table
		$('table').css('background-color', 'yellow');
		// Đổi backgroud table tr chẳn thành gray
		$('table tr:even').css('background-color', 'gray');
		// Đổi backgroud table tr lẻ thành yellow
		$('table tr:odd').css('background-color', 'yellow');
		// Đổi backgroud table1.
		$('#table1 tr:even').css('background-color', 'gray');
		$('#table1 tr:odd').css('background-color', 'yellow');
		// Đổi backgroud table2.
		$('#table2 tr:even').css('background-color', 'gray');
		$('#table2 tr:odd').css('background-color', 'blue');
		// Lấy ra trong tr có td nào có text = C#
		$('#table1 tr').each(function() {
			if ($(this).find('td').text() == 'C#') {
				alert($(this).html());
			} else {
				alert('Not found');
				/* break;  */
			}
		});
		// Lấy ra trong tr:even có td nào có text = C#
		$('table tr:even').each(function() {
			if ($(this).find('td').text() == 'C#') {
				alert($(this).html());
			}
		});
		// Lấy ra các tr đầu tiên
		$('table tr:first').each(function() {
			alert($(this).html());
		});
		// Lấy ra các tr cuối cùng
		$('table tr:last').each(function() {
			alert($(this).html());
		});
		// Lấy ra tag li đầu và cuối:
		alert($('ul li:first').html());
		alert($('ul li:last').html());
	});
</script>
</head>

<body>
	<h2>Lession 5</h2>

	<table id="table1" border="1">
		<tr>
			<td>C#</td>
			<td>ASP.NET</td>
			<td>SQL Server</td>
		</tr>
		<tr>
			<td>C#1</td>
			<td>ASP.NET1</td>
			<td>SQL Server1</td>
		</tr>
		<tr>
			<td>C#2</td>
			<td>ASP.NET2</td>
			<td>SQL Server2</td>
		</tr>
		<tr>
			<td>C#3</td>
			<td>ASP.NET3</td>
			<td>SQL Server3</td>
		</tr>
	</table>
	<br>
	<table id="table2" border="1">
		<tr>
			<td>C#</td>
			<td>ASP.NET</td>
			<td>SQL Server</td>
		</tr>
		<tr>
			<td>C#1</td>
			<td>ASP.NET1</td>
			<td>SQL Server1</td>
		</tr>
		<tr>
			<td>C#2</td>
			<td>ASP.NET2</td>
			<td>SQL Server2</td>
		</tr>
		<tr>
			<td>C#3</td>
			<td>ASP.NET3</td>
			<td>SQL Server3</td>
		</tr>
	</table>
	<div>
		<a href="http://google.com">Google</a>
	</div>
	<br>
	<a href="http://microsoft.com">Microsoft</a>
	<br>
	<ul>
		<li>Selector tag name 1</li>
		<li>Selector tag name 2</li>
		<li>Selector tag name 3</li>
		<li>Selector tag name 4</li>
		<li>Selector tag name 5</li>
		<li>Selector tag name 6</li>
	</ul>
</body>
</html>