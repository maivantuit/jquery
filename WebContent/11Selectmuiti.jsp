<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 6</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Làm việc với combobox -->
<!--
	1.	 				
-->
<script type="text/javascript">
	$(document).ready(function() {
		$('#btnSubmit').click(function(){			
			var selected = $('#ddlskills option:selected');			
			var result ='';
			if(selected.length > 0 && ( selected.val() !='' || selected.text()!='Choose languge')){				
				selected.each(function(){
					result +='Value: '+$(this).val() +", text: "+$(this).text();
					$('#divResult').html(result);
				});
			}else{
				$('#divResult').html('No selected');
			}
		});
	});
</script>
</head>

<body>
	<h2>Lession 10</h2>
	<select id="ddlskills" >
		<option value="">Choose languge</option>
		<option value="C#">C#</option>
		<option value="Java">Java</option>
		<option value="C++">C++</option>
		<option value="PHP">PHP</option>
		<option value="C">C</option>
		<option value="Python">Python</option>							
	</select>
	<br>
	<div id="divResult"></div>
	<br/>
	<button id="btnSubmit" >Submit</button>
</body>
</html>