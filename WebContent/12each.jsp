<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 6</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Loop each. -->
<!--
	1. Cách sử dụng vòng lặp each().
	2. Cách ngắt vòng lặp each.
	3. Vòng lặp each ngầm định
	4. Tối ưu performance khi sử dụng vòng lặp each.
	5. Gọi method liên tiếp (method chaining)	 				
-->
<script type="text/javascript">
	$(document).ready(function(){
		// Display all text li in ul.
		/* alert($('li').text()); */
		
		// Duyệt mảng li.
		$('li').each(function(index, element){
			/* alert($(element).text()); */
			
			/* alert(index+ " - "+$(element).text()); */
			
			/* if($(this).text()=='SPAIN'){
				// Ngắt vòng lặp, break.s
				return false;
			}else{
				$(this).css('color','red');
			} */			
		});
		
		// Performance(Thao tác với dom 1 lần).
		var result ='';
		$('li').each(function(index, element){
			result+=$(this).text() + "<br>";			
		});
		$('#divResult').html(result);
		// Vòng lặp ngầm định
		$('li').css('color','red');
		
		// Method chaining: 		
		$('li').css('color','red');
		$('li').slideUp(1000);
		$('li').slideDown(1000);
		$('li').attr('title','Ok');
		
		// Change=>
		$('li').css('color','red')
			.slideUp(1000)
			.slideDown(1000)
			.attr('title','Ok');
		
	});
</script>
</head>

<body>
	<h2>Lession 12</h2>
	<ul>
		<li>USA</li>
		<li>JAPAN</li>
		<li>RUSSIA</li>
		<li>FRANCE</li>
		<li>SPAIN</li>
		<li>ITALIA</li>
		<li>INDONESIA</li>
	</ul>
	<br>
	<div id="divResult"></div>
</body>
</html>