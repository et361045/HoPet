<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Intensely : Home</title>
<!-- Favicon -->
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

<!-- member css -->

<link href="/PetProject/assets/css/member.css" rel="stylesheet">

<!-- Main Style -->
<link href="/PetProject/assets/css/memberstyle.css" rel="stylesheet">
<!-- login Style -->
<link href="/PetProject/assets/css/login/login.css" rel="stylesheet">
<!-- icon -->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css"
	integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/"
	crossorigin="anonymous">
<!-- alert -->
<link
	href="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.core.css"
	rel="stylesheet">
<link
	href="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.default.css"
	rel="stylesheet">



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

	<!-- BEGAIN PRELOADER -->
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!-- END PRELOADER -->

	<!-- SCROLL TOP BUTTON -->
	<a class="scrollToTop" href="#"><i
		class="glyphicon glyphicon-chevron-up"></i></a>
	<!-- END SCROLL TOP BUTTON -->

	<!-- Start header -->
	<header id="header">
		<!-- header top search -->
		<div class="header-top">
			<div class="container">
				<form action="">
					<div id="search">
						<input type="text"
							placeholder="Type your search keyword here and hit Enter..."
							name="s" id="m_search" style="display: inline-block;">
						<button type="submit">
							<i class="fa fa-search"></i>
						</button>
					</div>
				</form>
			</div>
		</div>
		<!-- header bottom -->
		<div class="header-bottom">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-6"></div>
					<div class="col-md-6 col-sm-6 col-xs-6">
						<div class="header-login">

							<c:if test="${!empty  user}">
								<c:out
									value="<span class='Username' >HI, ${user.memberName} </span>"
									escapeXml="false" />
								<c:out
									value="  <a class='login modal-form' id='Logout'> Logout</a>"
									escapeXml="false" />
							</c:if>

							<c:if test="${empty  user}">
								<c:out
									value=" <a class='login modal-form' data-target='#login-form'
								data-toggle='modal' href='#'>Login / Sign Up</a>"
									escapeXml="false" />
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>
	<!-- End header -->

	<!-- Start login modal window -->
	<div aria-hidden="false" role="dialog" tabindex="-1" id="login-form"
		class="modal leread-modal fade in">
		<div class="modal-dialog">
			<!-- Start login section -->
			<div id="login-content" class="modal-content">
				<div class="modal-header">
					<button aria-label="Close" data-dismiss="modal" class="close"
						type="button">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">
						<i class="fa fa-unlock-alt"></i>Login
					</h4>
				</div>
				<div class="modal-body">
					<form id="login">
						<div class="form-group">
							<input type="email" placeholder="User email" name="email"
								class="form-control" title="請輸入信箱">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password" name="password"
								class="form-control" title="請輸入密碼">
						</div>

						<div class="loginbox">
							<label><input type="checkbox"><span>Remember
									me</span></label> <input type="submit" class="btn signin-btn" value="SIGN IN"><span
								class="errorspan" id="errorspan"></span>
						</div>
					</form>
				</div>
				<div class="modal-footer footer-box">
					<a href="#">Forgot password ?</a>
					<p>
					<div>
						No account ? <a id="signup-btn" href="#">Sign Up.</a>
					</div>
				</div>
			</div>
			<!-- Start signup section -->
			<div id="signup-content" class="modal-content">
				<div class="modal-header">
					<button aria-label="Close" data-dismiss="modal" class="close"
						type="button">
						<span aria-hidden="true">×</span>
					</button>
					<h4 class="modal-title">
						<i class="fa fa-lock"></i>Sign Up
					</h4>
				</div>
				<div class="modal-body">
					<form id="signon" action="<c:url value='signon'/>">
						<div class="form-group">
							<input type="email" placeholder="User email" class="form-control"
								title="請輸入信箱" name="email">
						</div>
						<div class="form-group">
							<p class="Description" id="checkemail"></p>
						</div>
						<div class="form-group">
							<input type="password" id="password" placeholder="password"
								class="form-control" title="請輸入密碼" name="psw">
						</div>
						<div class="form-group">
							<input type="password" id="checkpass" placeholder="checkpassword"
								class="form-control" title="與密碼相附">
						</div>
						<div class="form-group">
							<p class="Description" id="checkpassword"></p>
						</div>
						<div class="form-group">
							<input type="text" placeholder="name" class="form-control"
								title="請輸入暱稱" name="memberName">
						</div>
						<div class="form-group">
							<input type="text" placeholder="address" class="form-control"
								title="請輸入地址" name="address">
						</div>
						<div class="form-group">
							<input type="text" placeholder="cellphone-number "
								class="form-control" title="請輸入手機" name="memberPhone">
						</div>


						<div class="signupbox">
							<span>Already got account? <a id="login-btn" href="#">Sign
									In.</a></span>
						</div>
						<div class="loginbox">
							<input type="submit" class="btn signin-btn" value="SIGN UP"><span
								class="errorspan" id="errorspan"></span>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- End login modal window -->

	<!-- BEGIN MENU -->
	<section id="menu-area">
		<nav class="navbar navbar-default" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<!-- FOR MOBILE VIEW COLLAPSED BUTTON -->
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<!-- LOGO -->
					<!-- TEXT BASED LOGO -->
					<a href="/PetProject/index.jsp"> <img
						src="/PetProject/assets/images/logo.png" class="logo_img">
					</a>
					<!-- IMG BASED LOGO  -->
					<!-- <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">會員中心 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="member.jsp">會員資料</a></li>
								<li><a href=""><span class="fa fa-search"></span>搜尋好友 </a></li>
							</ul></li>
						<li><a href="">寵物生活館</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物百科 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">Dog</a></li>
								<li><a href="">Cat</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寄養&送養<span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">寄養</a></li>
								<li><a href="">送養</a></li>
							</ul></li>
						<li><a href="">寵物旅遊</a></li>
						<li><a href="">寵物商城</a></li>
						<li><a href="">寵物活動</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
				<a href="#" id="search-icon"> <i class="fa fa-search" style="">
				</i>
				</a>
			</div>
		</nav>
	</section>

	<section id="blog-archive">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="blog-archive-area">
						<div class="row">
						
							<div class="col-md-8">
								<div class="blog-archive-left">
									<!-- Start blog news single -->

<%-- <h3>Select Hospital Table Result : ${fn:length(select)} row(s) selected</h3> --%>

<c:if test="${not empty select}">
<table style="width: 1500px">
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

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Start footer -->
	<footer id="footer">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6">
					<div class="footer-left">
						<p>
							Designed by <a href="http://www.markups.io/">MarkUps.io</a>
						</p>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="footer-right">
						<a href="index.html"><i class="fa fa-facebook"></i></a> <a
							href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-google-plus"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-pinterest"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer -->

<%-- <h3><a href="<c:url value="/hospitaltest.jsp" />">hospital Table</a></h3> --%>
<!-- jQuery library -->

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->

	<!-- 	<!-- updatemember js -->
	<!-- 	<script type="text/javascript" src="/PetProject/assets/js/update.js"></script> -->


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
	<script src="/PetProject/assets/js/waypoints.js"></script>
	<script src="/PetProject/assets/js/jquery.counterup.js"></script>
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
	<!-- alert -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.min.js"></script>
	<!-- message -->
	<script src="/PetProject/assets/js/message.js"></script>

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