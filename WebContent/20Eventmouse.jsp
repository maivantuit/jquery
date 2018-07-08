	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Event mouse -->
<!--
	1. 
-->

<script type="text/javascript">
	$(document).ready(function(){
		var hani=$('#imgHani');
		var result=$('#result');		
		// Cách viết 1:
		hani.mouseover(function(){
			result.html('Chạm vào hani');
		});
		
		hani.mouseout(function(){
			result.html('Rời xa hani');
		});
		
		// Cách viết khác.
		hani.mouseover(function(){
			result.html('Chạm vào hani');s
		}).mouseout(function(){
			result.html('Rời xa hani');
		});  
		// Cách viết khác.
		hani.mousemove(function(){
			result.html('Chạm vào hani');
		}).mouseleave(function(){
			result.html('Rời xa hani');
		});
		// Cách viết khác.
		hani.mouseenter(function(){
			result.html('Chạm vào hani');
		}).mouseleave(function(){
			result.html('Rời xa hani');
		});
		
	});
</script>
</head>

<body>
	<h2>Lession 20</h2>	
	<img id="imgHani" style="height:250px; width:180px" src="images/hani.jpg">
	<div id="result"></div>	
</body>
</html>