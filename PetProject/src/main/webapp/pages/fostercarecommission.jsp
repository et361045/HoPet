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
// var contextPath = "${pageContext.request.contextPath}";
// $(document).ready(function() {
// 	$('input[name="petid"]').blur(function() {
// 		$.ajax({
// 			method: "GET",
// 			url: contextPath+"/pages/fostercarecommission.view",
// 			data: "id="+$('input[name="petid"]').val(),
// 			dataType: "json",
// 			cache: false,
// 			async: true,
// 			success: function(json) {
// 				$(".error").first().append(json[0].text);
// 				if(json[0].hasMoreData) {
// 					$("input[name='petid']").val(json[1].petid);
// 					$("input[name='dday']").val(json[1].dday);
// 					$("input[name='region']").val(json[1].region);
// 					$("input[name='size']").val(json[1].size);
// 					$("input[name='variety']").val(json[1].variety);
// 					$("input[name='txt']").val(json[1].txt);
// 				}
// 			}
// 		});
// 	});
// 	$("input[name='petid']").focus(function() {
// 		clearForm();
// 		$(".error").first().html("");
// 	});
// });
function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
} 
document.addEventListener("DOMContentLoaded", function () {
    now();
    document.getElementById("start").addEventListener("change", ans);
    document.getElementById("end").addEventListener("change", ans);
})
function ans() {
    var start = document.getElementById("start").value;
    var end = document.getElementById("end").value;
    var ans = Date.parse(end) - Date.parse(start);
    ans = ans / (1000 * 60 * 24 * 60) + 1;
    document.getElementById("idp").innerHTML =
        "共" + ans + "天"
}
function now() {
    document.getElementById("start").valueAsDate = new Date();
}
</script>
</head>
<body>

<h3>Welcome </h3>

<h3>fostercarecommmission Table</h3>

<form action="<c:url value="/pages/fostercarecommmission.controller" />" method="get">
<table>
	<tr>
		<td>姓名 : </td>
		<td><input type="text" name="name" value="${param.name}"></td>
		<td><span class="error">${errors.name}</span></td>
	</tr>
	<tr>
		<td>種類 : </td>
		<td><input type="text" name="variety" value="${param.variety}"></td>
		<td><span class="error">${errors.variety}</span></td>
	</tr>
	<tr>
		<td>地區 : </td>
		<td><input type="text" name="area" value="${param.area}"></td>
		<td><span class="error">${errors.area}</span></td>
	</tr>
	<tr>
		<td>原因 : </td>
		<td><input type="text" name="reason" value="${param.reason}"></td>
		<td><span class="error">${errors.reason}</span></td>
	</tr>
	<tr>
		<td>照片 : </td>
		<td><input type="text" name="picture" value="${param.picture}"></td>
		<td><span class="error">${errors.picture}</span></td>
	</tr>
	<tr>
		<td>備註 : </td>
		<td><input type="text" name="remark" value="${param.remark}"></td>
		<td><span class="error">${errors.txt}</span></td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="fostercare" value="Insert">
			<input type="submit" name="fostercare" value="Update">
		</td>
		<td>
			<input type="submit" name="fostercare" value="Delete">
			<input type="submit" name="fostercare" value="Select">
			<input type="button" value="Clear" onclick="clearForm()">
		</td>
	</tr>
</table>
<h2>寄養日期 結束日期</h2>
      <br>
        <span>
        <input type="date" id="start" value="" name="trip-start" min="2018-01-01" max="2050-12-31">
    </span>
    <span>
        <input type="date" id="end" name="trip-end" min="2018-01-01" max="2050-12-31">
    </span>
    <p class="st1" id="idp"></p>
	<input type="button" value="確認送出">
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
	<h3>Insert product table success</h3>
	<table border="1">
		<tr><td>name</td><td>${insert.name}</td></tr>
		<tr><td>variety</td><td>${insert.variety}</td></tr>
		<tr><td>area</td><td>${insert.area}</td></tr>
		<tr><td>reason</td><td>${insert.reason}</td></tr>
		<tr><td>picture</td><td>${insert.picture}</td></tr>
		<tr><td>remark</td><td>${insert.remark}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update product table success</h3>
	<table border="1">
		<tr><td>name</td><td>${update.name}</td></tr>
		<tr><td>variety</td><td>${update.variety}</td></tr>
		<tr><td>area</td><td>${update.area}</td></tr>
		<tr><td>reason</td><td>${update.reason}</td></tr>
		<tr><td>picture</td><td>${update.picture}</td></tr>
		<tr><td>remark</td><td>${update.remark}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>