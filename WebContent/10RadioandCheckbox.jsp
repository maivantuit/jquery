<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lession 6</title>
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Làm việc với radio và checkbox -->
<!--
	1. Cách truy cập giá trị của Radio button.
	2. Cách truy cập giá trị của Checkbox.	 				
-->
<script type="text/javascript">
	$(document).ready(function() {
		// Cách viết 1:
		$('#btnSubmit').click(function() {

		});
		// Cách viết 2:
		$('#btnSubmit').on('click', function() {

		});

		$('#btnSubmit').on('click', function() {
			var rdoChecked = $('input[type="radio"]:checked');
			if (rdoChecked.lenght > 0) {
				$('#divResult').text(rdoChecked.val() + " Radio selected");
			} else {
				$('#divResult').text("No radio selected");
			}
		});

		$('#btnSubmit').click(function() {
			var cbChecked = $('input[type="checkbox"][name="skills"]:checked');
			if (cbChecked.lenght > 0) {
				$('#divResult').html(cbChecked.length + " checkbox selected");
				cbChecked.each(function() {
					$('#divResult').append($(this).val() + "<br>");
				});
			} else {
				$('#divResult').text("No checkbox selected");
			}
		});
	});
</script>
</head>

<body>
	<h2>Lession 10</h2>
	<label> <input type="radio" name="gender" value="1">
		Male
	</label>
	<label> <input type="radio" name="gender" value="0">
		Female
	</label>
	<br />
	<br />
	<input type="button" id="btnSubmit" value="Submit" />
	<br />
	<br />
	<div id="divResult"></div>
	<br />
	<br />
	<label> <input type="checkbox" name="skills" value="C#">C#
	</label>
	<label> <input type="checkbox" name="skills" value="Java">Java
	</label>
	<label> <input type="checkbox" name="skills" value="C++">C++
	</label>
	<label> <input type="checkbox" name="notskills" value="PHP">PHP
	</label>
	<label> <input type="checkbox" name="skills" value="Ruby">Ruby
	</label>
	<br />
	<br />
</body>
</html>