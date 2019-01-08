$('[data-toggle="tooltip"]').tooltip();

// 表單驗證
var contextPath = "${pageContext.request.contextPath}";
$('#login').submit(function() {

	var isNotFormValid = false;
	var isNotFormValid1 = false;
	var isNotFormValid2 = false;
	$(this).find("input[name='password']").each(function() {
		var $this = $(this);
		// 使用 trim 把空白去除
		if ($.trim($this.val()).length === 0) {
			$this.tooltip('show').closest('div').addClass('error');
			isNotFormValid1 = false;
		} else {
			$this.tooltip('destroy').closest('div').removeClass('error');
			isNotFormValid1 = true;

		}

	});
	$(this).find("input[name='email']").each(function() {
		var $this = $(this);
		// 使用 trim 把空白去除
		if ($.trim($this.val()).length === 0) {
			$this.tooltip('show').closest('div').addClass('error');
			isNotFormValid2 = false;
		} else {
			$this.tooltip('destroy').closest('div').removeClass('error');
			isNotFormValid2 = true;

		}

	});
	if (isNotFormValid2 == true && isNotFormValid1 == true) {
		isNotFormValid = true
	}

	if (isNotFormValid == true) {
	
		$.ajax({
			method : "POST",
			url : "login",
			data : {
				email : $("input[name='email']").val(),
				password : $("input[name='password']").val(),
			},
			dataType : "json",
			cache : false,
			async : false,
			success : function(json) {

				if (json[0].password === 'noexist') {

					$('#errorspan').html("帳密不正確");
				}

				if (json[0].password === 'exist') {

					window.location.reload()

				}

			}
		});

	}
	return false;
});

$('#Logout').click(function() {

	$.post("logout", function() {
		window.location.reload()
	});

})

$().ready(function(){
	

});



