$('.glyphicon').click(function() {

	$(this).parent('.form-group').find('input').removeAttr("readOnly")

})

$('#updatepassword')
		.change(
				function() {
					$('#checkpsw')
							.click(
									function() {

										if ($('#updatepassword').val() != "") {

											alertify
													.prompt(
															"請確認密碼：",
															function(e, str) {

																if (e) {
																	if (str != $(
																			'#updatepassword')
																			.val()) {
																		alert('確認密碼失敗,請重新執行');
																		window.location
																				.reload();
																	} else {
																		alertify
																				.success('密碼已修改')
																		$
																				.ajax({
																					method : "POST",
																					url : "updatemember",
																					data : {
																						psw : $(
																								'#memberupdata')
																								.find(
																										'#updatepassword')
																								.val(),
																						memberName : $(
																								'#memberupdata')
																								.find(
																										'#memberName')
																								.val(),
																						address : $(
																								'#memberupdata')
																								.find(
																										'#address')
																								.val(),
																						memberPhone : $(
																								'#memberupdata')
																								.find(
																										'#memberPhone')
																								.val(),
																					},
																					dataType : "text",
																					cache : false,
																					async : false,
																					success : function(
																							text) {
																					}
																				});
																	}
																} else {
																	window.location
																			.reload();
																}
															});

											// var tall = prompt("請確認密碼");
											//
											// if (tall !=
											// $('#updatepassword').val()) {
											//				
											// alertify.error("確認密碼失敗,請重新執行");
											// window.location.reload();
											// }
											//
											// if (tall ==
											// $('#updatepassword').val()) {
											//			
											// alertify.success('密碼已修改');
											// }
										}
									})
				})

$('.glyphicon.glyphicon-ok').click(function() {

	$(this).parent('.form-group').find('input').attr("readOnly", "readOnly");

	$.ajax({
		method : "POST",
		url : "updatemember",
		data : {
			// psw : $('#memberupdata').find('#updatepassword').val(),
			memberName : $('#memberupdata').find('#memberName').val(),
			address : $('#memberupdata').find('#address').val(),
			memberPhone : $('#memberupdata').find('#memberPhone').val(),
		},
		dataType : "text",
		cache : false,
		async : false,
		success : function(text) {

		}
	});

})

$("#upload_img").change(function() {
	// 當檔案改變後，做一些事

	readURL(this); // this代表<input id="imgInp">
});

function readURL(input) {
	if (input.files && input.files[0]) {
		var reader = new FileReader();
		reader.onload = function(e) {
			$("#memberpicture").attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}

$("#insertpetpicture").change(function() {
	// 當檔案改變後，做一些事

	readURLpet(this); // this代表<input id="imgInp">

});

function readURLpet(input) {
	if (input.files && input.files[0]) {

		var reader = new FileReader();
		reader.onload = function(e) {

			$("#petpicture").attr('src', e.target.result);
		}
		reader.readAsDataURL(input.files[0]);
	}
}

$('#send').click(function() {

	$.ajax({
		method : "POST",
		url : "send",
		cache : false,
		async : false,
		success : function(text) {

		}
	})
})

$('#check').click(function() {

	$.ajax({
		method : "POST",
		url : "check",
		data : {
			vcode : $('#vcode').val()
		},
		cache : false,
		async : false,
		success : function(text) {
			if (text == "ok") {
				alertify.success('驗證成功');

			}
			if (text == "defeat") {

				alertify.error('驗證失敗,請重新輸入驗證碼或寄出驗證信');

			}
			window.location.reload();
		}
	})
})

$('#petpicturefrom').submit(function() {
	if ($("#insertpetpicture").val() == "") {
		alertify.error('請選擇照片,否則無法新增');
		return false
	}
})

$('#picture').submit(function() {
	if ($("#upload_img").val() == "") {

		alertify.error('請選擇照片,否則無法新增');
		return false
	}
})

function selectpet() {
	
	$.ajax({   method : "POST",
				url : "checkpet",
				cache : false,
				async : false,
				dataType : "json",
				success : function(json) {
					console.log(json)
					for (var i = 0; i < json.length; i++) {
						$("#insetaa")
								.append("<div class='append' style='margin-bottom:10px'>"+
										"<div class='panel panel-default'>"
												+ "<div class='panel-heading'>"
												+ "<h4 class='panel-title'>"
												+ "<a data-toggle='collapse' data-parent='#accordion'href='#collapseTwo"
												+ i
												+ "'"
												+ "> "
												+ json[i].petName
												+ "<span class='fa fa-plus-square'></span></a></h4></div>"
												+ "<div id='collapseTwo"
												+ i
												+ "'"
												+ "class='panel-collapse collapse'>"
												+ "<div class='panel-body'><p style='display: none'>"
												+ json[i].petId
												+ "</p><img src='"
												+ json[i].petPicture
												+ "'width='100px' style='border: #8e8e8e solid thin;' /> <br />"
												+ "<br /> <span class='text' style='margin-right: 20px'>"
												+ "寵物大小:"
												+ json[i].petSize
												+ "</span><span class='text' style='margin-right: 20px'>"
												+ "寵物品種:"
												+ json[i].petVariety
												+ "</span><span class='text'>"
												+ "寵物年齡:"
												+ json[i].age
												+ "</span> <br /><br /> <span class='text' style='font-size: 22px;'>"
												+ "備註:"
												+ json[i].petRemarks
												+ "</span> <br /><br /> <span class='text'>"
												+ "疫苗:"
												+ json[i].vaccine
												+ "</span><br /><br /> <span style='float: right;'><button class='btn btn-link'  name='deletebutton' onclick='deletea("+json[i].petId+")'><i class='fas fa-trash-alt'></i></button>"
												+ "<button class='btn btn-link'  name='updatebutton' value='"+json[i].petId+"'onclick='update("+json[i].petId+")'><i class='fas fa-pen'></i></button></span></div></div></div></div>"

								);
						
					}
				}
			})
}

$(function() {
	selectpet()
})

function deletea(a){

$.ajax({ 
	 method : "POST",
		url : "deletea",
		cache : false,
		async : false,
		data : {
          id: a
		},
		success : function() {
			$(".append").remove();
			selectpet()
		}
	
	
})

}

function update(a){
	$('#collapseTwo1').html()
}




