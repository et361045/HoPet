<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/table.css" />
<link rel="stylesheet" href="/PetProject/assets/css/bootstrap.css">
<title>Display</title>
<link rel="shortcut icon" type="image/icon"
	href="/PetProject/assets/images/favicon.ico" />
<!-- Font Awesome -->
<link href="/PetProject/assets/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="/PetProject/assets/css/bootstrap.css" rel="stylesheet">
<!-- Slick slider -->
<link rel="stylesheet" type="text/css"
	href="/PetProject/assets/css/slick.css" />
<!-- Fancybox slider -->
<link rel="stylesheet" href="/PetProject/assets/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<!-- Animate css -->
<link rel="stylesheet" type="text/css"
	href="/PetProject/assets/css/animate.css" />
<!-- Progress bar  -->
<link rel="stylesheet" type="text/css"
	href="/PetProject/assets/css/bootstrap-progressbar-3.3.4.css" />
<!-- Theme color -->
<link id="switcher"
	href="/PetProject/assets/css/theme-color/default-theme.css"
	rel="stylesheet">

<!-- Main Style -->
<link href="/PetProject/assets/css/style.css" rel="stylesheet">
<!-- login Style -->
<link href="/PetProject/assets/css/login/login.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">





<!-- Fonts -->

<!-- Open Sans for body font -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- Lato for Title -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>


</head>
<body>

<h3>Select businessInformation Table Result : ${fn:length(select)} row(s) selected</h3>

<c:if test="${not empty select}">
<table>
	<thead>
	<tr>
		<th>businessId</th>
		<th>externalname</th>
		<th>companyname</th>
		<th>idname</th>
		<th>businessproject</th>
		<th>businessPhone</th>
		<th>region</th>
		<th>businessAddress</th>
		<th>longitude</th>
		<th>latitude</th>
		
	</tr>
	</thead>
	<tbody>
	<c:forEach var="bean" items="${select}">
		<c:url value="/pages/businessInformation.jsp" var="path">
			<c:param name="businessId" value="${bean.businessId}" />
			<c:param name="externalname" value="${bean.externalname}" />
			<c:param name="companyname" value="${bean.companyname}" />
			<c:param name="idname" value="${bean.idname}" />
			<c:param name="businessproject" value="${bean.businessproject}" />
			<c:param name="businessPhone" value="${bean.businessPhone}" />
			<c:param name="region" value="${bean.region}" />
			<c:param name="businessAddress" value="${bean.businessAddress}" />
			<c:param name="longitude" value="${bean.longitude}" />
			<c:param name="latitude" value="${bean.latitude}" />
		</c:url>
	<tr id="tr${bean.businessId}">
		<td>${bean.businessId}</td>
		<td>${bean.externalname}</td>
		<td>${bean.companyname}</td>
		<td>${bean.idname}</td>
		<td>${bean.businessproject}</td>
		<td>${bean.businessPhone}</td>
		<td>${bean.region}</td>
		<td>${bean.businessAddress}</td>
		<td>${bean.longitude}</td>
		<td>${bean.latitude}</td>
		<td><button  id="buttonAdd" onclick="deleteRow(${bean.businessId})" type="button" class="btn btn-link"><i class="fa fa-trash"></i></button>
      		<button  id="buttonUpdate" onclick="updateTest(${bean.businessId})" type="button" class="btn  btn-link"><i class="fas fa-pencil-alt"></i></button>
      		<button  id="buttonUpdatecheck" onclick="updateTest2(${bean.businessId})" type="button" class="btn btn-link"><i class="fas fa-check"></i></button>
  		</td>
	</tr>	
	</c:forEach>
	</tbody>
</table>
</c:if>

<h3><a href="<c:url value="/StoreMap.jsp" />">businessInformation Table</a></h3>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<!-- Bootstrap -->
	<script src="/PetProject/assets/js/bootstrap.js"></script>
	<!-- Slick Slider -->
	<script type="text/javascript" src="/PetProject/assets/js/slick.js"></script>
	<!-- mixit slider -->
	<script type="text/javascript"
		src="/PetProject/assets/js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript"
		src="/PetProject/assets/js/jquery.fancybox.pack.js"></script>
	<!-- counter -->
	<script src="assets/js/waypoints.js"></script>
	<script src="assets/js/jquery.counterup.js"></script>
	<!-- Wow animation -->
	<script type="text/javascript" src="/PetProject/assets/js/wow.js"></script>
	<!-- progress bar   -->
	<script type="text/javascript"
		src="/PetProject/assets/js/bootstrap-progressbar.js"></script>
	<!--login   -->
	<script type="text/javascript"
		src="/PetProject/assets/css/login/login.js"></script>
	<!--Signon   -->
	<script type="text/javascript"
		src="/PetProject/assets/css/SignOn/SignOn.js"></script>


	<!-- Custom js -->
	<script type="text/javascript" src="/PetProject/assets/js/custom.js"></script>
 <script>
 
 function deleteRow(businessId){
		console.log(businessId);
		$.get("/PetProject/pages/businessInformation/delete.controller",{"businessId":businessId}, function(data){
			if (data == 'true'){
				$("#tr"+businessId).html("");
				window.location.reload();
				console.log("deleteTrue")
			}
		})
	}
	
	
	function updateTest(businessId){

		var externalname=$("#tr"+businessId+">td:nth-child(2)").text()
		var businessAddress=$("#tr"+businessId+">td:nth-child(3)").text()
		var businessPhone=$("#tr"+businessId+">td:nth-child(4)").text()
		var idname=$("#tr"+businessId+">td:nth-child(5)").text()
		var longitude=$("#tr"+businessId+">td:nth-child(6)").text()
		var latitude=$("#tr"+businessId+">td:nth-child(7)").text()
		
		$("#tr"+businessId+">td:nth-child(2)").prop("outerHTML","<td>"+"<input type='text' id='externalname' value='"+externalname+"' />"+"</td>");
		$("#tr"+businessId+">td:nth-child(3)").prop("outerHTML","<td>"+"<input type='text' id='businessAddress' value='"+businessAddress+"' />"+"</td>");
		$("#tr"+businessId+">td:nth-child(4)").prop("outerHTML","<td>"+"<input type='text' id='businessPhone' value='"+businessPhone+"' />"+"</td>");
		$("#tr"+businessId+">td:nth-child(5)").prop("outerHTML","<td>"+"<input type='text' id='idname' value='"+idname+"' />"+"</td>");
		$("#tr"+businessId+">td:nth-child(6)").prop("outerHTML","<td>"+"<input type='text' id='longitude' value='"+longitude+"' />"+"</td>");
		$("#tr"+businessId+">td:nth-child(7)").prop("outerHTML","<td>"+"<input type='text' id='latitude' value='"+latitude+"' />"+"</td>");	
	}
	function updateTest2(businessId){
		var externalname=$("#externalname").val()
		var businessAddress=$("#businessAddress").val()
		var businessPhone=$("#businessPhone").val()
		var idname=$("#idname").val()
		var longitude=$("#longitude").val()
		var latitude=$("#latitude").val()
		console.log('externalname'+externalname)
		$.ajax({
         type: "GET", //傳送方式
         url: "/PetProject/pages/businessInformation/update.controller", 
         dataType: "json", 
         data: {'businessId':businessId,'externalname':externalname,'businessAddress':businessAddress,'businessPhone':businessPhone,'idname':idname,'longitude':longitude,'latitude':latitude
         },
         done: function(data) {
				console.log(data);
         }
		 });
		$("#tr"+businessId+">td:nth-child(2)").prop("outerHTML","<td>"+externalname+"</td>");
		$("#tr"+businessId+">td:nth-child(3)").prop("outerHTML","<td>"+businessAddress+"</td>");
		$("#tr"+businessId+">td:nth-child(4)").prop("outerHTML","<td>"+businessPhone+"</td>");
		$("#tr"+businessId+">td:nth-child(5)").prop("outerHTML","<td>"+idname+"</td>");
		$("#tr"+businessId+">td:nth-child(6)").prop("outerHTML","<td>"+longitude+"</td>");
		$("#tr"+businessId+">td:nth-child(7)").prop("outerHTML","<td>"+latitude+"</td>");	
	
	}
	</script>
</body>
</html>