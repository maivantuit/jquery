<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Thao tác với Class -->
<!--
	Các method:
	1. hasClass: Trả về true nếu phần từ có chứa class được chỉ ra, ngược lại là false.
	2. addClass: Thêm mới một hoặc nhiều class vào phần tử. Để add nhiều class sẽ cách nhau dấu cách.
	3. removeClass: Xóa một hay nhiều class trong một selector. Để xóa tất cả class trong phần tử thì không chỉ ra tên.
	4. toogleClass: Nếu phần từ có class chỉ định sẽ remove, ngược lại không có sẽ add.
-->
<style type="text/css">
	.color{
		color:red;
		background: black;
	}
	
	.thisIs{
		color:yellow;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		// Thêm color:
		$('#btnAddClass').click(function(){
			$('h1').addClass('color');
		});
		// Remove color:
		$('#btnRemoveClass').click(function(){
			$('h1').removeClass('color');
		});
		// Thêm/Remove color:
		$('#btnToggleClass').click(function(){
			$('h1').toggleClass('color');
		});
	
		// Thêm color 2:
		$('#btnAddClass2').click(function(){
			$('h1').addClass('thisIs');
		});
		// Remove color 2:
		$('#btnRemoveClass2').click(function(){
			$('h1').removeClass('thisIs');
		});
		// Thêm/Remove color 2:
		$('#btnToggleClass2').click(function(){
			$('h1').toggleClass('thisIs');
		});
	
		// Trả về true: khi đc add color or false:khi k đc add color
		$('#btnHasClass').click(function(){
			alert($('h1').hasClass('color'));
		});
		$('#btnHasClass2').click(function(){
			alert($('h1').hasClass('thisIs'));
		});
	});
</script>
</head>

<body>
	<h2>Lession 17</h2>
	<h1 class="thisIs">This is class manipulate</h1>
	<br>
	<button id="btnAddClass">Add color</button>
	<button id="btnRemoveClass">Remove color</button>
	<button id="btnToggleClass">Toggle color</button>
	
	<br>
	
	<button id="btnAddClass2">Add color</button>
	<button id="btnRemoveClass2">Remove color</button>
	<button id="btnToggleClass2">Toggle color</button>
	
	<br>
	<button id="btnHasClass">Has color</button>
	<button id="btnHasClass2">Has color</button>
			
</body>
</html>