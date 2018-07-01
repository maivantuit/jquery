<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 1</title>
<script src="jquery-2.1.1.min.js"></script>
<script type="text/javascript">
	// Use Javascript thuần.
	
	/* window.onload = function(){
		var btn = document.getElementById('btn1');		
		btn.addEventListener('click',clickHere);
	}	
	function clickHere(){
		alert('Clicked');
	} */ 
	/* var btn = document.getElementsByName(String name); */
	/* var btn = document.getElementsByTagName(String name); */
	/* var btn = document.getElementsByTagNameNS(String name) */
	
	// Use JQuery thay thế
	
	/* jQuery(document).ready(function(){
		jQuery('#btn1').click(function(){
			alert('Clicked');
		});
	}); */
	
	// Có thể thay JQuery thành $.
	
	$(document).ready(function(){
		$('#btn1').click(function(){
			alert('Clicked');
		});
	});
	
</script>
</head>

<body>
	<h2>Lession 1</h2>
	<button id="btn1">Click here</button>
	
	<!-- Can use in jsp, body -->
	
	<!-- <script type="text/javascript">
	jQuery(document).ready(function(){
		jQuery('#btn1').click(function(){
			alert('Clicked');
		});
	});
		
	</script> -->
</body>
</html>