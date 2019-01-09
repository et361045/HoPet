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
<!--  <script src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.js'></script>    -->
    <script src="https://maps.google.com/maps/api/js?sensor=false"></script>
     <script type="text/javascript"
     src="https://maps.googleapis.com/maps/api/js?key&AIzaSyBpZmGolfotLrG4xt6jVDhY87zi_vWWV1Y">
	</script>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript">
var contextPath = "${pageContext.request.contextPath}";
$(document).ready(function() {

	$.ajax({
			data: "GET",
			url: contextPath+"/query",
			dataType: "json",
			success: function(json) {
				console.log(json)
				$.each(json , function(idx, val){
// 					console.log(idx+": " + val.latitude)
					var latitude = val.latitude;
					var hospitalName = val.hospitalName;
					new google.maps.Marker({
			                position: latitude, //經緯度
			                title: hospitalName, //顯示文字
			                icon: imageUrl,
			                map: map //指定要放置的地圖對象
			            });
				})
			}
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

<h3>hospital Table</h3>

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
		<td>醫院主人 : </td>
		<td><input type="text" name="hospitalowner" value="${param.hospitalowner}"></td>
		<td><span class="error">${errors.hospitalowner}</span></td>
	</tr>
	<tr>
		<td>經度 : </td>
		<td><input type="text" name="longitude" value="${param.longitude}"></td>
		<td><span class="error">${errors.latitude}</span></td>
	</tr>
	<tr>
		<td>緯度 : </td>
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