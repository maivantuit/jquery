<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 6</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Set get attribute. -->
<!--
	1. Cách set-get thuộc tính trong JQuery
	2. Sự khác nhau giữa att() và prop():
		+ prop: tu vesion 1.6.
	3. Các phương thức:
		+ text() - Gán hoặc lấy nội dung thuần văn bản từ phần tử.
		+ html() - Gán hoặc lấy về nội dung HTML từ phần tử.
		+ val() - Gán hoặc lấy về giá trị của trường.	 				
-->
<script type="text/javascript">
	$(document).ready(function(){
		var valLbl1 = $('#lbl1');
		var count=0;
		$('#btn1').click(function(){
			// Gán label 1 = 'Clicked here'.			
			valLbl1.text('Clicked here');
			count++;
		});
		
		$('#btn2').click(function(){
			// Display label 1 = 'Clicked here'.
			if(count>0){
				alert(valLbl1.text());
			}else{
				alert("Chưa click vào button 1");
			}			
		});
		
		$('#btn3').click(function(){
			if(count>0){
				// Thay đổi color:
				/* $('#lbl1').css('color','red'); */
				$('#lbl1').attr('style','color:red');
				// Set value 'Data123'.
				var txt1 =$('#txt1');
				txt1.val($('#lbl1').text());//val(String name)
				txt1.attr('style','color:blue');
			}else{
				alert("Chưa click vào button 1");
			}			
		});
				
		$('#btn4').click(function(){
			// Đổi attribute href="#" to href="http://google.com". To Click.
			$('#link1').attr('href','http://google.com');//attr(attribute, String data)
			alert($('#link1').attr('href'));// http://google.com
			// Đổi attribute class from "style" to "style1"
			$('#link1').attr('class','style1');
		});
		
		$('#btn5').click(function(){
			// Hiển thị dữ liệu tại 2 span:
			$('#spanProp').text($('#ck1').prop('checked'));// true or false.
			$('#spanAttr').text($('#ck1').attr('checked'));// 'checked'
			
			/* alert($('#ck1').val());// on
			alert($('#div1').text()); */
						
			$('#ck1').prop('checked',false);// or true
			/* $('#ck1').removeAttr('checked'); */ 
		});
	});
</script>
</head>

<body>
	<h2>Lession 9</h2>
	<label id="lbl1"></label> 	
	<input type="text" id="txt1"/>
	<br>
	<button id="btn1">Click Display text</button>
	<button id="btn2">Click Display alert</button>
	<button id="btn3">Change Color</button>
	<br>
	<br>
	<a href="#" id="link1" class="style">Link1</a>
	<button id="btn4">Click</button>
	<br>
	<br>
	<input type="checkbox" id="ck1" checked="checked" />
	<br>
	<div id="div1">
		<span id="spanProp"></span>
		<br>
		<span id="spanAttr"></span>
	</div>
	<br>
	<button id="btn5">Click here</button>
</body>
</html>