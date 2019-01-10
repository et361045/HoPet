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
	$('input[name="activitymemberid"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/pages/activityCommission.view",
			data: "id="+$('input[name="activitymemberid"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='activitymemberid']").val(json[1].activitymemberid);
					$("input[name='activityname']").val(json[1].activityname);
					$("input[name='activities']").val(json[1].activities);
					$("input[name='limit']").val(json[1].limit);
					$("input[name='signup']").val(json[1].signup);
					$("input[name='status']").val(json[1].status);
				}
			}
		});
	});
	$("input[name='activitymemberid']").focus(function() {
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

<h3>活動報名表 </h3>

<h3>activityCommmission Table</h3>

<form action="<c:url value="/pages/activityCommission.controller" />" method="get">
<table>
	<tr>
		<td>會員帳號 : </td>
		<td><input type="text" name="activitymemberid" value="${param.activitymemberid}"></td>
		<td><span class="error">${errors.activitymemberid}</span></td>
	</tr>
	<tr>
		<td>活動名稱 : </td>
		<td><input type="text" name="activityname" value="${param.activityname}"></td>
		<td><span class="error">${errors.activityname}</span></td>
	</tr>
	<tr>
		<td>活動內容 : </td>
		<td><input type="text" name="activities" value="${param.activities}"></td>
		<td><span class="error">${errors.activities}</span></td>
	</tr>
	
	<tr>
		<td>限制人數 : </td>
		<td><input type="text" name="limit" value="${param.limit}"></td>
		<td><span class="error">${errors.limit}</span></td>
	</tr>
	<tr>
		<td>報名人數 : </td>
		<td><input type="text" name="signup" value="${param.signup}"></td>
		<td><span class="error">${errors.signup}</span></td>
	</tr>
<!-- 	<tr> -->
<!-- 		<td>狀態 : </td> -->
<%-- 		<td><input type="text" name="status" value="${param.status}"></td> --%>
<%-- 		<td><span class="error">${errors.status}</span></td> --%>
<!-- 	</tr> -->
	<tr>
		<td>
			<input type="submit" name="activityCommission" value="Insert">
			<input type="submit" name="activityCommission" value="Update">
		</td>
		<td>
			<input type="submit" name="activityCommission" value="Delete">
<!-- 			<input type="submit" name="activityCommission" value="Select"> -->
			<input type="button" value="Clear" onclick="clearForm()">
		</td>
	</tr>
</table>
<h2></h2>
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
<%-- 		<tr><td>activitymemberid</td><td>${insert.activitymemberid}</td></tr> --%>
		<tr><td>activityname</td><td>${insert.activityname}</td></tr>
		<tr><td>activities</td><td>${insert.activities}</td></tr>
		<tr><td>limit</td><td>${insert.limit}</td></tr>
		<tr><td>signup</td><td>${insert.signup}</td></tr>
		<tr><td>status</td><td>${insert.status}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update product table success</h3>
	<table border="1">
<%-- 		<tr><td>activitymemberid</td><td>${update.activitymemberid}</td></tr> --%>
		<tr><td>activityname</td><td>${update.activityname}</td></tr>
		<tr><td>activities</td><td>${update.activities}</td></tr>
		<tr><td>limit</td><td>${update.limit}</td></tr>
		<tr><td>signup</td><td>${update.signup}</td></tr>
		<tr><td>status</td><td>${update.status}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>