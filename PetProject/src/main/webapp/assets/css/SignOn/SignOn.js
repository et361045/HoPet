$('[data-toggle="tooltip"]').tooltip();
// 表單驗證
emailRule = /^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z]+$/;

var  checkemail = false
var  checkpassword = false

$('#signon').submit(function() {

	$(this).find(".form-control").each(function() {
		
		var $this = $(this);
		// 使用 trim 把空白去除
		if ($.trim($this.val()).length === 0) {
			$this.tooltip('show').closest('div').addClass('error');
			isNotFormValid = false;
		} else {
			$this.tooltip('destroy').closest('div').removeClass('error');
			isNotFormValid = true;
		}

	});
	 return (isNotFormValid&&checkemail&&checkpassword)
		 
	 

})

$('#signon').find('input[type = email]').blur(function() {

     if ( $(this).val().search(emailRule)!= -1){
    	
     $.ajax({
			method : "POST",
			url : "checkemail",
			data : {
				email : $('#signon').find('input[type = email]').val()

			},
			dataType : "text",
			cache : false,
			async : false,
			success : function(text) {
				
				$('#checkemail').html(text);
				if(text==='帳號可以使用'){
					checkemail=true;
				}else{
					checkemail=false;
				}
			}
		});
     }
})


$('#checkpass').blur(function() {

    
    if($(this).val()!="" && $('#password').val()!=""){
    if($(this).val()===$('#password').val()){
    	$('#checkpassword').html("密碼與確認密碼相附");
    	checkpassword = true
    }else{
    	$('#checkpassword').html("密碼與確認密碼不相附");
    	checkpassword = false
    }
    
    }
	
})
$('#password').blur(function() {

    
    if($(this).val()!="" && $('#checkpass').val()!=""){
    if($(this).val()===$('#checkpass').val()){
    	$('#checkpassword').html("密碼與確認密碼相附");
    	checkpassword = true
    }else{
    	$('#checkpassword').html("密碼與確認密碼不相附");
    	checkpassword = false
    }
    
    }
	
})







