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
	$('input[name="businessId"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/pages/bussinessInformation.view",
			data: "id="+$('input[name="businessId"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='businessId']").val(json[1].businessId);
					$("input[name='pointnumber']").val(json[1].pointnumber);
					$("input[name='externalname']").val(json[1].externalname);
					$("input[name='companyname']").val(json[1].companyname);
					$("input[name='idname']").val(json[1].idname);
					$("input[name='businessproject']").val(json[1].businessproject);
					$("input[name='businessPhone']").val(json[1].businessPhone);
					$("input[name='region']").val(json[1].region);
					$("input[name='businessAddress']").val(json[1].businessAddress);
					$("input[name='businessScore']").val(json[1].businessScore);
					$("input[name='businessGooglemap']").val(json[1].businessGooglemap);
					$("input[name='latitude']").val(json[1].latitude);
				}
			}
		});
	});
	$("input[name='businessId']").focus(function() {
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

<h3>activity Table</h3>

<form action="<c:url value="/pages/businessInformation.controller" />" method="get">
<table>
	
	<tr>
		<td>公司名稱 : </td>
		<td><input type="text" name="companyname" value="${param.companyname}"></td>
		<td><span class="error">${errors.companyname}</span></td>
	</tr>
	<tr>
		<td>對外名稱 : </td>
		<td><input type="text" name="externalname" value="${param.externalname}"></td>
		<td><span class="error">${errors.externalname}</span></td>
	</tr>
	
	<tr>
		<td>負責人 : </td>
		<td><input type="text" name="idname" value="${param.idname}"></td>
		<td><span class="error">${errors.idname}</span></td>
	</tr>
	<tr>
		<td>營業項目 : </td>
		<td><input type="text" name="businessproject" value="${param.businessproject}"></td>
		<td><span class="error">${errors.businessproject}</span></td>
	</tr>
	<tr>
		<td>電話 : </td>
		<td><input type="text" name="businessPhone" value="${param.businessPhone}"></td>
		<td><span class="error">${errors.businessPhone}</span></td>
	</tr>
	<tr>
		<td>行政區 : </td>
		<td><input type="text" name="region" value="${param.region}"></td>
		<td><span class="error">${errors.region}</span></td>
	</tr>
	<tr>
		<td>地址 : </td>
		<td><input type="text" name="businessAddress" value="${param.businessAddress}"></td>
		<td><span class="error">${errors.businessAddress}</span></td>
	</tr>
	
	<tr>
		<td>
			<input type="submit" name="businessInformation" value="Insert">
		</td>
		<td>
			<input type="submit" name="businessInformation" value="Select">
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
	<h3>Insert businessinformation table success</h3>
	<table border="1">
		<tr><td>externalname</td><td>${insert.externalname}</td></tr>
		<tr><td>companyname</td><td>${insert.companyname}</td></tr>
		<tr><td>idname</td><td>${insert.idname}</td></tr>
		<tr><td>businessproject</td><td>${insert.businessproject}</td></tr>
		<tr><td>businessPhone</td><td>${insert.businessPhone}</td></tr>
		<tr><td>region</td><td>${insert.region}</td></tr>
		<tr><td>businessAddress</td><td>${insert.businessAddress}</td></tr>
		<tr><td>latitude</td><td>${insert.latitude}</td></tr>

	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update businessinformation table success</h3>
	<table border="1">
		<tr><td>externalname</td><td>${update.externalname}</td></tr>
		<tr><td>companyname</td><td>${update.companyname}</td></tr>
		<tr><td>idname</td><td>${update.idname}</td></tr>
		<tr><td>businessproject</td><td>${update.businessproject}</td></tr>
		<tr><td>businessPhone</td><td>${update.businessPhone}</td></tr>
		<tr><td>region</td><td>${update.region}</td></tr>
		<tr><td>businessAddress</td><td>${update.businessAddress}</td></tr>
		<tr><td>latitude</td><td>${update.latitude}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>