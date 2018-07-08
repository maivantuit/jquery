	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Method map -->
<!--
	1. Là method về cơ bản giống với each() cũng dùng để lặp qua các phần tử trong DOM.
	2. Khi bạn muốn tạo một Array hay 1 chuỗi string dựa trên các phần tử DOM thì dùng map() tốt hơn là dùng each().
	3. Tốt hơn về hiệu suất và code ngắn gọn hơn.
-->

<script type="text/javascript">
	$(document).ready(function(){
		
		// Use each method 1:
		var langugeProgramList= [];
		$('li').each(function(index,element){
			langugeProgramList.push($(element).text());
		});
		console.log(langugeProgramList);//(5) ["C#", "Java", "PHP", "NoteJS", "AngularJS"]
		
		// Use each method 2:
		var resultEle='';
		$('li').each(function(index, element){
			resultEle=resultEle+$(element).text();
		});
		console.log(resultEle);//C#JavaPHPNoteJSAngularJS
		// Use each method, check return:
		var resultEle='';
		$('li').each(function(index, element){
			resultEle=resultEle+$(element).text();
			if(resultEle='PHP'){
				return resultEle;
			}
		});
		console.log(resultEle);//PHP
		
		// Use map method:
		console.log(
			$('li').map(function(index, element){
				return $(element).text();
			}).get()
		);//(5) ["C#", "Java", "PHP", "NoteJS", "AngularJS"]
		
		// Use map method 2:
		console.log($('li').map(function(index, element){
			return $(element).text();
		}).get());//(5) ["C#", "Java", "PHP", "NoteJS", "AngularJS"]
		
		
	});
</script>
</head>

<body>
	<h2>Lession 18</h2>
	
	<ul>
		<li>C#</li>
		<li>Java</li>
		<li>PHP</li>
		<li>NoteJS</li>
		<li>AngularJS</li>		
	</ul>
			
</body>
</html>