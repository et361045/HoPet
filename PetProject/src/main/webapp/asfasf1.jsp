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
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD_dGEr_Cm5zksGOql-xQ3Tie8j7CGZDdw">
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
    console.log("hjaahah")
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

<form
					action="<c:url value="/pages/businessInformation.controller" />"
					method="get">
					<table>
						<tr>
							<td style="color: #7E9EC9"><h5>商家名稱 :</h5></td>
							<td><input type="text" name="externalname"
								value="${param.externalname}"></td>
							<td><span class="error">${errors.externalname}</span></td>
						</tr>
						<tr>
							<td style="color: #7E9EC9"><h5>商家地址 :</h5></td>
							<td><input type="text" id="address" name="businessAddress"
								value="${param.businessAddress}"></td>
							<td><span class="error">${errors.businessAddress}</span></td>
						</tr>

						<tr>
							<td style="color: #7E9EC9"><h5>商家電話 :</h5></td>
							<td><input type="text" name="businessPhone"
								value="${param.businessPhone}"></td>
							<td><span class="error">${errors.businessPhone}</span></td>
						</tr>
						<!-- 						<tr> -->
						<!-- 							<td style="color: #7E9EC9"><h5>商家負責人 :</h5></td> -->
						<!-- 							<td><input type="text" name="idname" -->
						<%-- 								value="${param.idname}"></td> --%>
						<%-- 							<td><span class="error">${errors.idname}</span></td> --%>
						<!-- 						</tr> -->
						<tr>
							<td style="color: #7E9EC9"><h5>經度 :</h5></td>
							<td><input type="text" id="lat" name="longitude"
								value="${param.longitude}"></td>
							<td><span class="error">${errors.longitude}</span></td>
						</tr>
						<tr>
							<td style="color: #7E9EC9"><h5>緯度 :</h5></td>
							<td><input type="text" id="lng" name="latitude"
								value="${param.latitude}"></td>
							<td><span class="error">${errors.latitude}</span></td>
						</tr>
						<tr>
							<td><input type="submit" name="businessInformation"
								value="Insert"></td>
							<td><input type="submit" name="businessInformation"
								value="Select"> 
								<input type="button" value="Clear"
								onclick="clearForm()">
								 <input type="button" value="Go!"
								onclick="doClick()" /></td>
						</tr>
					</table>
				</form>
</body>
</html>