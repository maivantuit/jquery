<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 4</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Selector -->
<!--
	1. Là khái niêm quan trọng trong JQuery chp phép bạn lấy và thao tác với các phần tử HTML.
	2. Có các loại selector khác nhau:
		+ ID
		+ Tag name
		+ Class name
		+ Attribute
		+ Attribute value					 
-->
<script type="text/javascript">
	//Use JQuery:
	$(document).ready(function() {

		$('#btn1').click(function() {
			// Hiển thị đã click:
			alert('Clicked');
			// Dùng js để làm đổi màu:
			document.getElementById('btn1').style.backgroundColor = 'yellow';
			// Dùng jquery để làm đổi màu:
			$('#btn1').css('background-color', 'yellow');
		});
	});
	// Tạo biến selector để use again.
	$(document).ready(function() {
		// eleBtn: Id selector.
		var eleBtn = $('#btn1');
		eleBtn.click(function() {
			eleBtn.css('background-color', 'yellow');
		});
	});

	// Kiểm tra sự tồn tại của id button:
	$(document).ready(
			function() {
				var eleBtn = $('#btn1');
				(eleBtn.length > 0) ? alert('Tìm thấy phần tử [btn1]')
						: ('Không tìm thấy phần tử [btn1]');
	});
</script>
</head>

<body>
	<h2>Lession 4</h2>
	<button id="btn1">Click here</button>
	<button id="btn1">Click here 2</button>
	<!-- Nếu dùng 2 id thì nó lấy id thứ 1 -->
</body>
</html>