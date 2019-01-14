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



<!-- Fonts -->

<!-- Open Sans for body font -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- Lato for Title -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    <script>
    
    
		function deleteRow(hospitalid){
			console.log(hospitalid);
			$.get("/PetProject/pages/hospital/delete.controller",{"hospitalId":hospitalid}, function(data){
				if (data == 'true'){
					$("#tr"+hospitalid).html("");
// 					window.location.reload();
					console.log("deleteTrue")
				}
			})
		}

</script>
</head>
<body>

<h3>Select Hospital Table Result : ${fn:length(select)} row(s) selected</h3>

<c:if test="${not empty select}">
<table>
 <thead>
 <tr>
  <th>編號</th>
  <th>醫院名稱</th>
  <th>醫院地址</th>
  <th>醫院電話</th>
  <th>擁有人</th>
  <th>經度</th>
  <th>緯度</th>
  <th>管理</th>
 </tr>
 </thead>
 <tbody>
 <c:forEach var="bean" items="${select}">
  <c:url value="/pages/hospital.jsp" var="path">
   <c:param name="hospitalId" value="${bean.hospitalId}" />
   <c:param name="hospitalName" value="${bean.hospitalName}" />
   <c:param name="hospitalAddress" value="${bean.hospitalAddress}" />
   <c:param name="hospitalphone" value="${bean.hospitalphone}" />
   <c:param name="hospitalowner" value="${bean.hospitalowner}" />
   <c:param name="longitude" value="${bean.longitude}" />
   <c:param name="latitude" value="${bean.latitude}" />
  </c:url>
 <tr id="tr${bean.hospitalId}">
  <td>${bean.hospitalId}</td>
  <td>${bean.hospitalName}</td>
  <td>${bean.hospitalAddress}</td>
  <td>${bean.hospitalphone}</td>
  <td>${bean.hospitalowner}</td>
  <td>${bean.longitude}</td>
  <td>${bean.latitude}</td>
  <td><button  id="buttonAdd" onclick="deleteRow(${bean.hospitalId})" type="button" class="btn btn-danger"><i class="fa fa-trash"></i></button>
      <button  id="buttonUpdate" type="button" class="btn btn-success"><i class="fa fa-wrench"></i></button></td>
 </tr> 
 
 </c:forEach>
 
 </tbody>
</table>
</c:if>



<h3><a href="<c:url value="/pages/hospital.jsp" />">hospital Table</a></h3>
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

</body>
</html>