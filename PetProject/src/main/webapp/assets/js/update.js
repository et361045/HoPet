$('.glyphicon').click(function() {

	$(this).parent('.form-group').find('input').removeAttr("readOnly")

})

$('#checkpsw').click(function() {
	if ($('#updatepassword').val() != "") {
		var tall = prompt("請確認密碼");

		if (tall != $('#updatepassword').val()) {
			alert("確認密碼失敗,請重新執行")
				window.location.reload();
		}

		if (tall == $('#updatepassword').val()) {
			alert("密碼已修改")
		}
	}
})

$('.glyphicon.glyphicon-ok').click(function() {

	$(this).parent('.form-group').find('input').attr("readOnly", "readOnly");
	
	$.ajax({
		method : "POST",
		url : "updatemember",
		data : {
			psw : $('#memberupdata').find('#updatepassword').val(),
			memberName : $('#memberupdata').find('#memberName').val(),
			address : $('#memberupdata').find('#address').val(),
			memberPhone:$('#memberupdata').find('#memberPhone').val(),
		},
		dataType : "text",
		cache : false,
		async : false,
		success : function(text) {
			
		
		}
	});
	
	
})
