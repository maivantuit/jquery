$(document).ready(function() {
	$("#btnTaoCauHoi").click(taoCauHoi);

	function taoCauHoi() {
		// Lay so cau hoi nguoi dung nhap vao
		var soCauHoi = $("#txtSoCauHoi").val();
		var divNoiDungCauHoi = "<div class='noiDungCauHoi'>";
		for ( var i = 1; i <= soCauHoi; i++) {
			var tagCauHoi = "<div class='cauHoi' maCauHoi=" + i + ">";
			tagCauHoi += "<h3> Câu hỏi " + i + "</h3>";
			// tao cau tra loi
			var tagCauTraLoi = '<div class="danhSachCauTraLoi">';
			// random từ 1 đến 4.
			var viTriDapAnDung=Math.floor((Math.random() * 4)+1);
			for ( var j = 1; j <= 4; j++) {
				// ngoai ra ta có thể check đáp án đúng từ data json pase sang.
				if(j==viTriDapAnDung){
					tagCauTraLoi += '<input dapAnDung="true" class="cauTraLoi" type="radio" name="' + i
					+ '" value="tl_' + j + '"/> Đáp án ' + j;
				}else{
					tagCauTraLoi += '<input dapAnDung="false" class="cauTraLoi" type="radio" name="' + i
					+ '" value="tl_' + j + '"/> Đáp án ' + j;
				}				
			}
			tagCauTraLoi += '</div>';
			tagCauHoi += tagCauTraLoi;
			tagCauHoi += '</div>';
			divNoiDungCauHoi += tagCauHoi;
		}
		divNoiDungCauHoi += '</div>';
		// Tạo nút chấm điểm
		divNoiDungCauHoi += '<br /><input class="btn btn-success" type="button" id="btnChamDiem" value="Chấm điểm" />';
		// $('#danhSachCauHoi').append(divNoiDungCauHoi);
		$('#danhSachCauHoi').html(divNoiDungCauHoi).fadeIn(300);
	}

	/*Xữ lý cho sự kiện click trên câu trả lời:*/
	
	// xử lý này không được, bởi vì class cauTraLoi chưa được tạo ra.
	/*$('.cauTraLoi').click(function(){
		alert(1);
	});*/
	// bởi vậy ta sử dụng thằng bao quát nó, là danhSachCauHoi và delegate: tiếp nhận. Mà thẻ thường nhất bao quát là thẻ body: $('body')
	$('#danhSachCauHoi').delegate(".cauTraLoi","click",function(){
		// lấy thành phần đang thao tác với sự kiện. chính là input class="cauTraLoi", có value=tl_' + j + '.
		var giaTri = $(this).val();		
		// cách DOM tới thành phần bao phủ bên ngoài với selector chỉ định. 
		var tenCauHoi = $(this).closest(".cauHoi").find("h3").text();// Đang muốn lấy vale của nội dung câu hỏi là h3, this đang là thành phần bên trong, muốn dom ra thì closest tới .cauHoi và find h3. 
		// alert("+Tên câu hỏi: "+tenCauHoi+"+Đáp án: "+giaTri);
	});	
	
	// Xử lý nút chấm điểm:
	
	// với xử lý này thì không nhận.
	/*$('#btnChamDiem').click(function(){
		alert("1");
	});*/
	// thay thế thành.
	$('body').delegate('#btnChamDiem','click',function(){
		// số câu hỏi
		var soCauHoi = $("#txtSoCauHoi").val();
		var soCauTraLoiDung = 0;
		// duyệt các div câu hỏi
		$('.cauHoi').each(function(){
			var listCauTraLoi = $(this).find('.cauTraLoi');
			// kiểm tra người dùng checked vào ddapaandung=true hay không
			for(var i=0; i< listCauTraLoi.length;i++){
				if(listCauTraLoi[i].checked && listCauTraLoi[i].getAttribute('dapAnDung')=="true"){					
						soCauTraLoiDung++;					
				}
			}
		});
		$('#ketQua').html("Số câu trả lời đúng: "+soCauTraLoiDung+"/"+soCauHoi);
	});
	
});