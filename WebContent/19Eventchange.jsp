	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Link Path Javascript -->
<script src="jquery-2.1.1.min.js"></script>
<!-- Event change -->
<!--
	1. Sự kiện change xảy ra khi một giá trị của element bị thay đổi.
	2. Các element sau đây thường sử dụng event này:
		- Input
		- Textarea
		- Select
	3. Radio và checkbox phát sinh sự kiện sớm nhất khi người dùng click chọn trong khi các phẩn tử khác thì phải đợi khi lost focus.
-->

<script type="text/javascript">
	$(document).ready(function(){
		// Dùng cho các DOM có cùng 1 class.
		var resultHistory='';
		$('.inputRequired').change(function(){
			resultHistory+=$(this).val();
			$('#divResult').html(resultHistory);//Mai VanTuNew YorkJavaBlue123456Cọp Huynh
		}); 
				
		// Chúng ta có thể sử dụng từng DOM riêng biệt.				
		var selected=$('select');
		selected.change(function(){			
			if(selected.val().trim()=='Select City' || selected.val().trim()==''){
				alert('Please, select city!');
			}else{
				$('#divResult').html($(this).val());
			}
		});
		// Chúng ta có thể sử dụng từng Id riêng biệt.
	});
</script>
</head>

<body>
	<h2>Lession 19</h2>
	
	<table>
		<tr>
			<td>First Name: </td>
			<td>
				 <input id="txtFirstName" class="inputRequired" type="text" />
			</td>
		</tr>
		<tr>
			<td>Last Name:</td>
			<td>
				<input id="txtLastName" class="inputRequired" type="text" />
			</td>
		</tr>
		<tr>
			<td>Tài khoản:</td>
			<td>
				<input id="txtTaiKhoan" class="inputRequired" type="text" />
			</td>
		</tr>
		<tr>
			<td>City</td>
			<td>
				<select id="ddlCity" class="inputRequired">
					<option>Select City</option>
					<option>New York</option>
					<option>London</option>
					<option>Bangkok</option>
					<option>Sydney</option>					
				</select>
			</td>
		</tr>
		<tr>
			<td>Favourite</td>
			<td>
				<input id="rdoBongDa" value="Nữ" name="sex" type="radio" class="inputRequired"/>Nữ
				<input id="rdoJava" value="Nam" name="sex" type="radio" class="inputRequired" />Nam							
			</td>
		</tr>
		<tr>
			<td>Color</td>
			<td>
				<input id="chbRed" value="Red" type="checkbox" class="inputRequired"/>Red
				<input id="chbBlue" value="Blue" type="checkbox" class="inputRequired"/>Blue
				<br>
				<input id="chbGreen" value="Green" type="checkbox" class="inputRequired"/>Green				
				<input id="chbYellow" value="Yellow" type="checkbox" class="inputRequired"/>Yellow				
			</td>			
		</tr>
		<tr>
			<td>Password</td>
			<td>
				<input id="passWord" type="password" class="inputRequired"/>
			</td>
		</tr>
		<tr>
			<td>Status</td>
			<td>
				<textarea id="txtStatus" class="inputRequired"></textarea>
			</td>
		</tr>
		<tr>
			<td>
				<input id="btnSubmit" type="button" value="Submit" />
			</td>
			<td>
				<div id="divResult"></div>
			</td>
		</tr>
	</table>
	
	
	
			
</body>
</html>