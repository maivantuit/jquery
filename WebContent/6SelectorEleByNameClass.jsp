<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 6</title>
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
		+ Class name(*): Thao tác với phần tử thông qua class.
			- Lấy ra các phần tử theo class, lồng nhau.
			- Khi nào cần dùng class selector.
			- Kết hợp với i selector, tag name selector.					
		+ Attribute
		+ Attribute value		
		 				
-->
<script type="text/javascript">
	$(document).ready(function() {
		// Lấy ra css dưới cho 4 text selector.
		$('.small').css('border', '1px solid red');
		$('.small:first').css('border', '1px solid red');

		// Lấy ra css dưới cho text selector 1.
		$('div.big').css('border', '1px solid red');
		$('span.small').css('border', '1px solid red');
		$('#first .small').css('border', '1px solid red');

		// Lấy ra css cho text selector 2.
		$('.small.test').css('border', '1px solid red');

		// Lấy ra css cho text selector 2, lấy ra class test, filter theo class='small'.
		$('.small').filter('.test').css('border', '1px solid red');
		$('.test').filter('.small').css('border', '1px solid red');

		// Lấy ra css cho text selector 2.
		$('.small').find('.xsmall').css('border', '1px solid red');
		$('.small .xsmall').css('border', '1px solid red');
		// Lấy ra css cho text selector 4.
		$('.small .test').css('border', '1px solid red');
		$('.small').find('.test').css('border', '1px solid red');
	});
</script>
</head>

<body>
	<h2>Lession 6</h2>
	<div id="first" class="big">
		<span class="small">This is selector 1</span>
	</div>
	<div class="small test">
		<p>This is selector 2</p>
	</div>
	<div class="small">
		<div class="xsmall">This is selector 3</div>
	</div>
	<div class="small">
		<p class="test">This is selector 4</p>
	</div>
</body>
</html>