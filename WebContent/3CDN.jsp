<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 3 CDN</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Link CDN -->
<script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-2.2.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
	// Kiểm tra CDN.
	window.jQuery || document.write("<script src='jquery-2.1.1.min.js'><\/script>");
	// \ : Để khỏi bị error.
</script>
<!-- Lợi ích của việc sử dụng CDN -->
<!--
	1. Lợi ích:
		+ Hệ thống máy chủ phân tán.
		+ Hổ trợ caching của trình duyệt.
		+ Tải xuống song song.
		+ Giảm traffic cho server.
	2. Hạn chế:
		+ Firewall ở client có thể block CDN. Bạn có thể phải cài firewall cho CDN vào accept list.
		+ Nếu develop trong quá trình không có mạng thì bạn không chạy được thư viện.		
			 
-->
<script type="text/javascript">	
	$(document).ready(function(){
		$('#btn1').click(function(){
			alert('This is click event!');
		});		
	});
</script>
</head>

<body>
	<h2>Lession 3</h2>
	<button id="btn1">Click here</button>	
</body>
</html>