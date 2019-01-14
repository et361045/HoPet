<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>hospital</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<!--  <script src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.js'></script>    -->
    <script src="https://maps.google.com/maps/api/js?sensor=false"></script>
<!--      <script type="text/javascript" -->
<!--      src="https://maps.googleapis.com/maps/api/js?key&AIzaSyBpZmGolfotLrG4xt6jVDhY87zi_vWWV1Y"> -->
<!--  </script> -->
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
     <script type="text/javascript"
     src="https://maps.googleapis.com/maps/api/js?callback=initialize&key=AIzaSyD_dGEr_Cm5zksGOql-xQ3Tie8j7CGZDdw">
    </script>
<script type="text/javascript">
function initialize() {
 geocoder = new google.maps.Geocoder();
}

function doClick() {
 var address = document.getElementById("address").value;
 if(geocoder) {
  geocoder.geocode({"address": address}, function(results, status) {
   if(status != google.maps.GeocoderStatus.OK)  {
    alert("Geocoder Failed: " + status);
   } else {
    console.log("location="+results[0].geometry.location)
    
    document.getElementById("lat").value=results[0].geometry.location.lat();
    document.getElementById("lng").value=results[0].geometry.location.lng();
   }
  });
 }
}

function clearForm() {
 var inputs = document.getElementsByTagName("input");
 for(var i=0; i<inputs.length; i++) {
  if(inputs[i].type=="text") {
   inputs[i].value="";
  }
 }
}
initialize()
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
  <td><input type="text" id="address"name="hospitalAddress" value="${param.hospitalAddress}"></td>
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
  <td><input type="text" id="lat" name="longitude" value="${param.longitude}"></td>
  <td><span class="error">${errors.longitude}</span></td>
 </tr>
 <tr>
  <td>緯度 : </td>
  <td><input type="text" id="lng" name="latitude" value="${param.latitude}"></td>
  <td><span class="error">${errors.latitude}</span></td>
 </tr>
 <tr>
  <td>
   <input type="submit" name="hospital" value="Insert">
  </td>
  <td>
   <input type="submit" name="hospital" value="Select">
   <input type="button" value="Clear" onclick="clearForm()">
   <input type="button" value="Go!" onclick="doClick()" />
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
  <tr><td>longitude</td><td>${insert.longitude}</td></tr> 
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
  <tr><td>longitude</td><td>${update.longitude}</td></tr> 
  <tr><td>latitude</td><td>${update.latitude}</td></tr>
 </table>
 <script type="text/javascript">clearForm()</script>
</c:if>
</body>
</html>