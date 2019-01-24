
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>fosterDetial</title>
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

<!-- Main Style -->
<link href="/PetProject/assets/css/style.css" rel="stylesheet">
<!-- login Style -->
<link href="/PetProject/assets/css/login/login.css" rel="stylesheet">
<!-- fosterDetial Style -->
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

<link href="/PetProject/assets/css/fosterdetial/fosterDetial.css"
	rel="stylesheet">
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
								data-toggle='modal' href='#' id='Login'>Login / Sign Up</a>"
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
					<a href="#" id="forgotpsw">Forgot password ?</a>
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
					<form id="signon" action="<c:url value='/signon'/>">
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
					<a href="index.jsp"><img src="assets/images/logo.png"
						class="logo_img"></a>
					<!-- IMG BASED LOGO  -->
					<!-- <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">會員中心 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/PetProject/member/member.jsp">會員資料</a></li>

								<li><a id="fosteritem" onclick="fostercheck()">送養資料</a></li>
								<li><a href="/PetProject/member/membermessage"><span class="fa fa-search"></span>動態消息 </a></li>
							</ul></li>
						<li><a href="">寵物生活館</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物百科 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="dog.jsp">Dog</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寄養&領養<span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">寄養</a></li>
								<li><a href="findFosterForm">領養</a></li>
<!-- 								<li><a id ="xxx" href="" onclick='check()' data-toggle="" data-target="">申請送養</a></li> -->
								<li><a id="application_foster" onclick="check()" data-toggle="" data-target="">申請送養</a></li>
							</ul></li>
						
<!-- 						<li><a href="">寵物旅遊</a></li> -->
<!-- 						<li><a href="">寵物商城</a></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						    data-toggle="dropdown">寵物活動<span class="fa fa-angle-down"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="ActivityHome.jsp">活動首頁</a></li>
							<li><a href="/PetProject/activityCommission">一起去旅遊</a></li>
							<li><a href="">查詢參加活動</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
				<a href="#" id="search-icon"> <i class="fa fa-search"> </i>
				</a>
			</div>
		</nav>
	</section>
	<!-- END MENU -->

	<!-- Start Pricing table -->
	<section id="pricing-table">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area" style="padding: 0px;">
						<h3 class="foster_title" style="display: inline-block;float: left;">送養領養詳細資料</h3>
						<h2 class="foster_title"style="display: inline-block;">領養人申請單</h2>
					</div>
				</div>
				<div class="col-md-12">
					<div class="pricing-table-content">
						<div class="row">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="foster_detial_price" data-wow-duration="0.5s"
									data-wow-delay="0.5s">
									<div class="foster_detial_header" style="height: 40px;">
										<div>
											<span class="foster_detial_down">送養中的寵物</span>
										</div>
									</div>
									<div class="foster_detial_article" style="margin-bottom: 10px;">
										<ul>
											<c:forEach var="petnames" items="${petNames}">
												<li>${petnames.petName}<a
													onclick="deletefoster(${petnames.petId})"
													class="fa fa-trash" style="margin-top: 4px; float: right;"
													title="刪除送養"></a></li>
											</c:forEach>
										</ul>
									</div>
								</div>
								<div class="foster_detial_price" data-wow-duration="0.5s"
									data-wow-delay="0.5s">
									<div class="foster_detial_header" style="height: 40px;">
										<div>
											<span class="foster_detial_down">送養成功</span>
										</div>
									</div>
									<div class="foster_detial_article" style="margin-bottom: 10px;">
										<ul>
											<c:forEach var="fostersuccess" items="${fostersuccess}">
												<li>${fostersuccess.petname}　送養給　${fostersuccess.carername}</li>
											</c:forEach>
										</ul>
									</div>
								</div>
								<div class="foster_detial_price" data-wow-duration="0.5s"
									data-wow-delay="0.5s">
									<div class="foster_detial_header" style="height: 40px;">
										<div>
											<span class="foster_detial_down">收養成功</span>
										</div>
									</div>
									<div class="foster_detial_article" style="margin-bottom: 10px;">
										<ul>
											<c:forEach var="adoptionsuccess" items="${adoptionsuccess}">
												<li>您從　${adoptionsuccess.ownername}　收養　${adoptionsuccess.petname}</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
							<c:forEach var="foster_form" items="${fosterform}">
								<div class="col-md-3 col-sm-6 col-xs-12">
									<div class="foster_detial_price" data-wow-duration="0.5s"
										data-wow-delay="0.5s">
										<div class="foster_detial_header">
											<span class="foster_detial_title">${foster_form.carerName}</span>
											<div>
												<span class="foster_detial_down">${foster_form.petName}</span>
											</div>
										</div>
										<div class="foster_detial_article">
											<ul>
												<li>是否成年 : ${foster_form.age}</li>
												<li>工作 : ${foster_form.job}</li>
												<li>薪水 : ${foster_form.salary}</li>
												<li>養寵物經驗 : ${foster_form.experience}</li>
												<li>收養經驗 : ${foster_form.pettime}</li>
											</ul>
										</div>
										<div class="foster_detial_footer">
											<a id="${foster_form.carer}"class="foster_detial_btn" onclick="fostersuccess(${foster_form.carer},${foster_form.petId})">就是他了!!</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Pricing table -->


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

	<!-- jQuery library -->
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
	<!-- alert -->
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.min.js"></script>

	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>


	<script>
		function deletefoster(petId) {
			swal({
				  title: "確定要刪除嗎？",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				}).then((willcancel) => {
					if (willcancel) {
						$.ajax({
							url : 'deleteFosterForm?petId='+petId,
			 				type : 'GET',
						}).done(function(){								
							swal({
								title: "刪除成功",
								  icon: "success",
								  button: "確認",
								}).then(() => {								  
									  window.location.reload();							
								});												
							})
						}						
					 else {}
					});		
				}
		
		
		function fostersuccess(carerId,petId){		
			swal({
				  title: "確認送養？",
				  icon: "warning",
				  buttons: true,
				  dangerMode: true,
				}).then((willcancel) => {
					if (willcancel) {
						$.ajax({
							url : 'fostersuccess?carerId='+carerId+'&petId='+petId,
			 				type : 'GET',
						}).done(function(){								
							swal({
								title: "送養成功",
								  icon: "success",
								  button: "確認",
								}).then(() => {								  
									  window.location.reload();							
								});												
							})
						}						
					 else {}
					});		
				}		
		
	</script>
</body>

</html>