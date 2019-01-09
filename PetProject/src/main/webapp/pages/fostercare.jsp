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
	$('input[name="fostercareCommissionid"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/pages/fostercare.view",
			data: "id="+$('input[name="fostercareCommissionid"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='fostercareCommissionid']").val(json[1].fostercareCommissionid);
					$("input[name='fostercareFormid']").val(json[1].fostercareFormid);
					$("input[name='owner']").val(json[1].owner);	
				}
			}
		});
	});
	$("input[name='fostercareCommissionid']").focus(function() {
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

<h3>Welcome </h3>

<h3>fostercare Table</h3>

<form action="<c:url value="/pages/fostercare.controller" />" method="get">
<table>
	<tr>
		<td>fostercareCommissionid : </td>
		<td><input type="text" name="fostercareCommissionid" value="${param.fostercareCommissionid}"></td>
		<td><span class="error">${errors.fostercareCommissionid}</span></td>
	</tr>
	<tr>
		<td>fostercareFormid : </td>
		<td><input type="text" name="fostercareFormid" value="${param.fostercareFormid}"></td>
		<td><span class="error">${errors.fostercareFormid}</span></td>
	</tr>
	<tr>
		<td>owner : </td>
		<td><input type="text" name="owner" value="${param.owner}"></td>
		<td><span class="error">${errors.owner}</span></td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="fostercare" value="Insert">
		</td>
		<td>
			<input type="submit" name="fostercare" value="Delete">
			<input type="button" value="Clear" onclick="clearForm()">
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
	<h3>Insert fostercare table success</h3>
	<table border="1">
		<tr><td>fostercareCommissionid</td><td>${insert.fostercareCommissionid}</td></tr>
		<tr><td>fostercareFormid</td><td>${insert.fostercareFormid}</td></tr>
		<tr><td>owner</td><td>${insert.owner}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>