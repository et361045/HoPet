$(function() {
	selectpet()
})


function selectpet() {
	alert("enter selectpet")
	$.ajax({    method : "POST",
				url : "checkpet",
				cache : false,
				async : false,
				dataType : "json",
				success : function(json) {
					console.log(json)
				}
			})
}