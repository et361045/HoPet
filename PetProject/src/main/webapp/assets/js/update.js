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

 $("#upload_img").change(function(){
      //當檔案改變後，做一些事 
     readURL(this);   // this代表<input id="imgInp">
   });
 

function readURL(input){
  if(input.files && input.files[0]){
    var reader = new FileReader();
    reader.onload = function (e) {
       $("#memberpicture").attr('src', e.target.result);
    }
    reader.readAsDataURL(input.files[0]);
  }
}
