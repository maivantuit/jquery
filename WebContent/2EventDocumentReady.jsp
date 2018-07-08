<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 1</title>
<script src="jquery-2.1.1.min.js"></script>
<!-- So sánh giữa ~.js và ~min.js -->
<!--1. ~.js: Là file đầy đủ, có thể chỉnh sửa
	2. ~min.js: Là file được nén lại. -->
<script type="text/javascript">
	// document.ready run before than windowload.
	$(document).ready(function() {
		alert('Document Object Model Loaded');
	});
	$(window).load(function() {
		alert('Window loaded ');
	});
	$(document).ready(function() {
		alert('Run first when init (When F5)');
	});
</script>
</head>

<body>
	<h2>Lession 2</h2>
	<button id="btn1">Click here</button>

	<!-- Bỏ sau tag button  -->
	<!-- <script type="text/javascript">
		$('#btn1').click(function(){
			alert('Clicked');
		});
	</script> -->
	<!-- Tạo 1 file common.js bên ngoài, để gọi lại functions của file js đó và bỏ dưới này mới chạy -->
	<script src="js/common.js"></script>
</body>
</html>