	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.2/css/bootstrap.min.css" integrity="sha384-Smlep5jCw/wG7hdkwQ/Z5nLIefveQRIY9nfy6xoR1uRYBtpZgI6339F5dgvm/e9B" crossorigin="anonymous"> 
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Event mouse -->
<!--
	1. 
-->
<script src="main.js" type="text/javascript"></script>
</head>

<body>
	<div>
		<table>
			<tr>
				<td>Nhập vào số câu hỏi</td>
				<td><input id="txtSoCauHoi" type="text"/></td>
			</tr>
			<tr>
				<td><button class="btn btn-success" id="btnTaoCauHoi">Tạo câu hỏi</button></td>
			</tr>
		</table>
		<br/>
		<div id="danhSachCauHoi">
			
		</div>	
		<div id="ketQua">
			
		</div>	
	</div>	
</body>
</html>