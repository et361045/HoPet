$('.glyphicon').click(function() {	
	
	$(this).parent('.form-group').find('input').removeAttr("readOnly")
	
})

$('.glyphicon.glyphicon-ok').click(function() {		
	$(this).parent('.form-group').find('input').attr("readOnly","readOnly")	

})