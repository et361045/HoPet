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
	$('input[name="petid"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/pages/hospital.view",
			data: "id="+$('input[name="hospitalId"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='hospitalId']").val(json[1].hospitalId);
					$("input[name='hospitalName']").val(json[1].hospitalName);
					$("input[name='hospitalAddress']").val(json[1].hospitalAddress);
					$("input[name='hospitalphone']").val(json[1].hospitalphone);
					$("input[name='hospitalowner']").val(json[1].hospitalowner);
					$("input[name='hospitalgooglemap']").val(json[1].hospitalgooglemap);
					$("input[name='latitude']").val(json[1].latitude);
				}
			}
		});
	});
	$("input[name='hospitalId']").focus(function() {
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

<h3>fostercarecommmission Table</h3>

<form action="<c:url value="/pages/hospital.controller" />" method="get">
<table>
	<tr>
		<td>醫院名稱 : </td>
		<td><input type="text" name="hospitalName" value="${param.hospitalName}"></td>
		<td><span class="error">${errors.hospitalName}</span></td>
	</tr>
	<tr>
		<td>醫院地址 : </td>
		<td><input type="text" name="hospitalAddress" value="${param.hospitalAddress}"></td>
		<td><span class="error">${errors.hospitalAddress}</span></td>
	</tr>
	
	<tr>
		<td>醫院電話 : </td>
		<td><input type="text" name="hospitalphone" value="${param.hospitalphone}"></td>
		<td><span class="error">${errors.hospitalphone}</span></td>
	</tr>
	<tr>
		<td>醫院 : </td>
		<td><input type="text" name="hospitalowner" value="${param.hospitalowner}"></td>
		<td><span class="error">${errors.hospitalowner}</span></td>
	</tr>
	<tr>
		<td>latitude : </td>
		<td><input type="text" name="latitude" value="${param.latitude}"></td>
		<td><span class="error">${errors.latitude}</span></td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="hospital" value="Insert">
		</td>
		<td>
			<input type="submit" name="hospital" value="Select">
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
	<h3>Insert hospital table success</h3>
	<table border="1">
		<tr><td>hospitalName</td><td>${insert.hospitalName}</td></tr>
		<tr><td>hospitalAddress</td><td>${insert.hospitalAddress}</td></tr>
		<tr><td>hospitalphone</td><td>${insert.hospitalphone}</td></tr>
		<tr><td>hospitalowner</td><td>${insert.hospitalowner}</td></tr>
		<tr><td>latitude</td><td>${insert.latitude}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update hospital table success</h3>
	<table border="1">
		<tr><td>hospitalName</td><td>${update.hospitalName}</td></tr>
		<tr><td>hospitalAddress</td><td>${update.hospitalAddress}</td></tr>
		<tr><td>hospitalphone</td><td>${update.hospitalphone}</td></tr>
		<tr><td>hospitalowner</td><td>${update.hospitalowner}</td></tr>
		<tr><td>latitude</td><td>${update.latitude}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>