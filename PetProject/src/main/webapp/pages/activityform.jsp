<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>Product</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
var contextPath = "${pageContext.request.contextPath}";
$(document).ready(function() {
	$('input[name="participate"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/pages/activityForm.view",
			data: "id="+$('input[name="participate"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='participate']").val(json[1].participate);
					$("input[name='remarks']").val(json[1].remarks);
					$("input[name='mnumber']").val(json[1].mnumber);
				}
			}
		});
	});
	$("input[name='participate']").focus(function() {
		clearForm();
		$(".error").first().html("");
	});
});
function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}
</script>
</head>
<body>

<h3>活動報名表 </h3>

<h3>activityform Table</h3>

<form action="<c:url value="/pages/ActivityForm.controller" />" method="post">
<table>
		<!-- participate int,--活動報名表填寫人會員id -->
	<tr>
		<td>填寫人會員 : </td>
		<td><input type="text" name="participate" value="${param.participate}"></td>
		<td><span class="error">${errors.participate}</span></td>
	</tr>
	
<!-- 	mnumber參加人數 -->
	<tr>
		<td>參加人數 : </td>
		<td><input type="text" name="mnumber" value="${param.mnumber}"></td>
		<td><span class="error">${errors.mnumber}</span></td>
	</tr>
	
<!-- 	remarks備註 -->
	<tr>
		<td>備註 : </td>
		<td><input type="text" name="remarks" value="${param.remarks}"></td>
		<td><span class="error">${errors.remarks}</span></td>
	</tr>
	
	
	
	<tr>
		<td>
			<input type="submit" name="activityForm" value="Insert">
<!-- 			<input type="submit" name="prodaction" value="Update"> -->
		</td>
		<td>
			<input type="submit" name="activityForm" value="Delete">
			<input type="submit" name="activityForm" value="Select">
<!-- 			<input type="button" value="Clear" onclick="clearForm()"> -->
		</td>
	</tr>
</table>

</form>

<h3><span class="error">${errors.action}</span></h3>

<c:if test="${not empty delete}">
	<c:if test="${delete}">
		<h3>Delete product table success : 1 row deleted</h3>
	</c:if>
	<c:if test="${not delete}">
		<h3>Delete product table success : 0 row deleted</h3>
	</c:if>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty insert}">
	<h3>報名成功</h3>
	<table border="10">
		<tr><td>會員編號</td><td>${insert.participate}</td></tr>
		<tr><td>參加人數</td><td>${insert.remarks}</td></tr>
		<tr><td>備註</td><td>${insert.mnumber}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update product table success</h3>
	<table border="1">
		<tr><td>participate</td><td>${update.participate}</td></tr>
		<tr><td>remarks</td><td>${update.remarks}</td></tr>
		<tr><td>mnumber</td><td>${update.mnumber}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>