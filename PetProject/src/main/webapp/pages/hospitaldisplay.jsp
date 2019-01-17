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

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
   
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
  <c:url value="/hospitaltest.jsp" var="path">
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
  <td><button  id="buttonAdd" onclick="deleteRow(${bean.hospitalId})" type="button" class="btn btn-link"><i class="fa fa-trash"></i></button>
      <button  id="buttonUpdate" onclick="updateTest(${bean.hospitalId})" type="button" class="btn  btn-link"><i class="fas fa-pencil-alt"></i></button>
      <button  id="buttonUpdatecheck" onclick="updateTest2(${bean.hospitalId})" type="button" class="btn btn-link"><i class="fas fa-check"></i></button>
  </td>
 </tr> 
 
 </c:forEach>
 
 </tbody>
</table>
</c:if>



<h3><a href="<c:url value="/hospitaltest.jsp" />">hospital Table</a></h3>
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
    
    
		function deleteRow(hospitalid){
			console.log(hospitalid);
			$.get("/PetProject/pages/hospital/delete.controller",{"hospitalId":hospitalid}, function(data){
				if (data == 'true'){
					$("#tr"+hospitalid).html("");
					window.location.reload();
					console.log("deleteTrue")
				}
			})
		}
		
		
		function updateTest(hospitalId){
			var hospitalName=$("#tr"+hospitalId+">td:nth-child(2)").text()
			var hospitalAddress=$("#tr"+hospitalId+">td:nth-child(3)").text()
			var hospitalphone=$("#tr"+hospitalId+">td:nth-child(4)").text()
			var hospitalowner=$("#tr"+hospitalId+">td:nth-child(5)").text()
			var longitude=$("#tr"+hospitalId+">td:nth-child(6)").text()
			var latitude=$("#tr"+hospitalId+">td:nth-child(7)").text()
			$("#tr"+hospitalId+">td:nth-child(2)").prop("outerHTML","<td>"+"<input type='text' id='hospitalName' value='"+hospitalName+"' />"+"</td>");
			$("#tr"+hospitalId+">td:nth-child(3)").prop("outerHTML","<td>"+"<input type='text' id='hospitalAddress' value='"+hospitalAddress+"' />"+"</td>");
			$("#tr"+hospitalId+">td:nth-child(4)").prop("outerHTML","<td>"+"<input type='text' id='hospitalphone' value='"+hospitalphone+"' />"+"</td>");
			$("#tr"+hospitalId+">td:nth-child(5)").prop("outerHTML","<td>"+"<input type='text' id='hospitalowner' value='"+hospitalowner+"' />"+"</td>");
			$("#tr"+hospitalId+">td:nth-child(6)").prop("outerHTML","<td>"+"<input type='text' id='longitude' value='"+longitude+"' />"+"</td>");
			$("#tr"+hospitalId+">td:nth-child(7)").prop("outerHTML","<td>"+"<input type='text' id='latitude' value='"+latitude+"' />"+"</td>");	
		}
		function updateTest2(hospitalId){
			var hospitalName=$("#hospitalName").val()
			var hospitalAddress=$("#hospitalAddress").val()
			var hospitalphone=$("#hospitalphone").val()
			var hospitalowner=$("#hospitalowner").val()
			var longitude=$("#longitude").val()
			var latitude=$("#latitude").val()
			console.log('hospitalName'+hospitalName)
			$.ajax({
	            type: "GET", //傳送方式
	            url: "/PetProject/pages/hospital/update.controller", 
	            dataType: "json", 
	            data: {'hospitalId':hospitalId,'hospitalName':hospitalName,'hospitalAddress':hospitalAddress,'hospitalphone':hospitalphone,'hospitalowner':hospitalowner,'longitude':longitude,'latitude':latitude
	            },
	            done: function(data) {
	 				console.log(data);
	            }
       		 });
			$("#tr"+hospitalId+">td:nth-child(2)").prop("outerHTML","<td>"+hospitalName+"</td>");
			$("#tr"+hospitalId+">td:nth-child(3)").prop("outerHTML","<td>"+hospitalAddress+"</td>");
			$("#tr"+hospitalId+">td:nth-child(4)").prop("outerHTML","<td>"+hospitalphone+"</td>");
			$("#tr"+hospitalId+">td:nth-child(5)").prop("outerHTML","<td>"+hospitalowner+"</td>");
			$("#tr"+hospitalId+">td:nth-child(6)").prop("outerHTML","<td>"+longitude+"</td>");
			$("#tr"+hospitalId+">td:nth-child(7)").prop("outerHTML","<td>"+latitude+"</td>");	
		
		}
		
// 		function updateRow(hospitalid){
// 			console.log(hospitalid);

// 			var hospitalName = $("#tr"+hospitalid+">td:nth-child(2)");
			
		
			
// 			$.get("/PetProject/pages/hospital/update.controller",{"hospitalId":hospitalid
// 			,"hospitalName":hospitalName.text(),"hospitalAddress":hospitalAddress.text(),
// 			"hospitalphone":hospitalphone.text(),"hospitalowner":hospitalowner.text(),
// 			"longitude":longitude.text(),"latitude":latitude.text()}
// 			, function(data){
// 				if (data == 'true'){
// // 					$('#hospitalId').val(hospitalId).next('span').text(hospitalId);
// 				   	hospitalName.val(hospitalName.text())
// 				    $('#hospitalAddress').val(hospitalAddress)
// 				    $('#hospitalphone').val(hospitalphone)
// 				    $('#hospitalowner').val(hospitalowner)
// 				    $('#longitude').val(longitude)
// 				    $('#latitude').val(latitude)
// 					console.log("updateTrue")
// 				}
// 			})
// 		}
		

</script>
</body>
</html>