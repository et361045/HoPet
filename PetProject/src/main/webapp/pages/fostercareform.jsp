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

<h3>fostercareform Table</h3>

<form action="<c:url value="/pages/fostercareForm.controller" />" method="get">
<table>
	<tr>
		<td>職業 : </td>
		<td><input type="text" name="job" value="${param.job}"></td>
		<td><span class="error">${errors.job}</span></td>
	</tr>
	<tr>
		<td>養寵經驗 : </td>
		<td><input type="text" name="experience" value="${param.experience}"></td>
		<td><span class="error">${errors.experience}</span></td>
	</tr>
	<tr>
		<td>收養經驗 : </td>
		<td><input type="text" name="pettime" value="${param.pettime}"></td>
		<td><span class="error">${errors.pettime}</span></td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="fostercareform" value="Insert">
		</td>
		<td>
			<input type="submit" name="fostercareform" value="Select">
			<input type="submit" name="fostercareform" value="Delete">
			<input type="button" value="Clear" onclick="clearForm()">
		</td>
	</tr>
</table>
</form>

<h3><span class="error">${errors.action}</span></h3>

<c:if test="${not empty delete}">
	<c:if test="${delete}">
		<h3>成功</h3>
	</c:if>
	<c:if test="${not delete}">
		<h3>失敗</h3>
	</c:if>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty insert}">
	<h3>Insert fostercareform table success</h3>
	<table border="1">
		<tr><td>job</td><td>${insert.job}</td></tr>
		<tr><td>experience</td><td>${insert.experience}</td></tr>
		<tr><td>pettime</td><td>${insert.pettime}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>