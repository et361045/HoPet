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
			url: contextPath+"/pages/fostercarecommission.view",
			data: "id="+$('input[name="petid"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='petid']").val(json[1].petid);
					$("input[name='dday']").val(json[1].dday);
					$("input[name='region']").val(json[1].region);
					$("input[name='size']").val(json[1].size);
					$("input[name='variety']").val(json[1].variety);
					$("input[name='txt']").val(json[1].txt);
				}
			}
		});
	});
	$("input[name='petid']").focus(function() {
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

<h3>Welcome </h3>

<h3>fostercarecommmission Table</h3>

<form action="<c:url value="/pages/fostercarecommmission.controller" />" method="get">
<table>
	<tr>
		<td>petid : </td>
		<td><input type="text" name="petid" value="${param.petid}"></td>
		<td><span class="error">${errors.petid}</span></td>
	</tr>
	<tr>
		<td>dday : </td>
		<td><input type="text" name="dday" value="${param.dday}"></td>
		<td><span class="error">${errors.dday}</span></td>
	</tr>
	<tr>
		<td>region : </td>
		<td><input type="text" name="region" value="${param.region}"></td>
		<td><span class="error">${errors.region}</span></td>
	</tr>
	
	<tr>
		<td>size : </td>
		<td><input type="text" name="size" value="${param.size}"></td>
		<td><span class="error">${errors.size}</span></td>
	</tr>
	<tr>
		<td>variety : </td>
		<td><input type="text" name="variety" value="${param.variety}"></td>
		<td><span class="error">${errors.variety}</span></td>
	</tr>
	<tr>
		<td>txt : </td>
		<td><input type="text" name="txt" value="${param.txt}"></td>
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
		<tr><td>petid</td><td>${insert.petid}</td></tr>
		<tr><td>dday</td><td>${insert.dday}</td></tr>
		<tr><td>region</td><td>${insert.region}</td></tr>
		<tr><td>size</td><td>${insert.size}</td></tr>
		<tr><td>variety</td><td>${insert.variety}</td></tr>
		<tr><td>txt</td><td>${insert.txt}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update product table success</h3>
	<table border="1">
		<tr><td>petid</td><td>${update.petid}</td></tr>
		<tr><td>dday</td><td>${update.dday}</td></tr>
		<tr><td>region</td><td>${update.region}</td></tr>
		<tr><td>size</td><td>${update.size}</td></tr>
		<tr><td>variety</td><td>${update.variety}</td></tr>
		<tr><td>txt</td><td>${update.txt}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>