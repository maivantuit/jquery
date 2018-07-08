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
		+ Attribute(*): Thao tác theo attrubute.
			- Lấy ra các phần tử theo tên attribute.
			- Khi nào cần dùng attribute selector.
			- Kết hợp với id selector, tag name selector.
		+ Attribute value(*).		 				
-->
<style type="text/css">
	.my-border{
		border:1px solid red;
	}
	#my-borderID{
		border:1px solid blue;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		// Lấy ra css cho 4 text selector. 
		$('[title]').addClass('my-border');
		
		// Lấy ra css cho selector 1.
		$('.demo1[title="div1"]').addClass('my-border'); 
		$('[title="div2"]').addClass('my-border'); 
		$('[title][style="background-color:yellow"]').addClass('my-border');
		$('[title="div1"][style="background-color:yellow"]').addClass('my-border'); 
		// Không lấy ra đc css cho selector 3 khi dùng id.
		$('[title="div3"]').addClass('my-borderID');
		
		// Lấy ra css cho selector 1 và 3.
		$('[title="div1"][style="background-color:yellow"],[title="div3"]').addClass('my-border');
		$('[title="div1"],[title="div3"]').addClass('my-border'); 
				
		// Lấy ra css cho selector khác div1. 
		$('[title!="div1"]').addClass('my-border');
		
		// Tìm những css cho các selector có div, title tận cùng = 2.(Selector 2)
		$('div[title$="2"]').addClass('my-border');
		
		// Tìm những css cho các selector có div, title chứa 2 ký tự: "iv" (All selector, like)
		$('div[title*="iv"]').addClass('my-border');
		
		// Tìm những css cho các selector có div, title tận cùng = div1.(Selector 1, =)
		$('div[title^="div1"]').addClass('my-border');
	});
</script>
</head>

<body>
	<h2>Lession 7</h2>
	<div class="demo1" title="div1" style="background-color:yellow">
		<span>This is selector 1</span>
	</div>
	<div class="demo" title="div2" >
		<span>This is selector 2</span>
	</div>
	<div class="demo" title="div3">
		<span>This is selector 3</span>
	</div>
	<div class="demo" title="div4">
		<span>This is selector 4</span>
	</div>
</body>
</html>