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
<title>Intensely : Home</title>
<!-- Favicon -->
<link rel="shortcut icon" type="image/icon"
	href="assets/images/favicon.ico" />
<!-- Font Awesome -->
<link href="assets/css/font-awesome.css" rel="stylesheet">
<!-- Bootstrap -->
<link href="assets/css/bootstrap.css" rel="stylesheet">
<!-- Slick slider -->
<link rel="stylesheet" type="text/css" href="assets/css/slick.css" />
<!-- Fancybox slider -->
<link rel="stylesheet" href="assets/css/jquery.fancybox.css"
	type="text/css" media="screen" />
<!-- Animate css -->
<link rel="stylesheet" type="text/css" href="assets/css/animate.css" />
<!-- Progress bar  -->
<link rel="stylesheet" type="text/css"
	href="assets/css/bootstrap-progressbar-3.3.4.css" />
<!-- Theme color -->
<link id="switcher" href="assets/css/theme-color/default-theme.css"
	rel="stylesheet">

<!-- Main Style -->
<link href="assets/css/style.css" rel="stylesheet">
<!-- login Style -->
<link href="assets/css/login/login.css" rel="stylesheet">



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
								<c:out value="<span class='Username' >HI, ${user.memberName} </span>"
									escapeXml="false" />
					    <c:out  value="  <a class='login modal-form' id='Logout'> Logout</button>" escapeXml="false"/> 
							</c:if>
							
							<c:if test="${empty  user}">
							 <c:out value=" <a class='login modal-form' data-target='#login-form'
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
					<form id="signon" action="<c:url value='/index'/>">
						<div class="form-group">
							<input type="email" placeholder="User email" class="form-control" title="請輸入信箱" name="email">
						</div>
						<div class="form-group">
							<p class="Description" id="checkemail"></p>
						</div>
						<div class="form-group">
							<input type="password" id="password" placeholder="password" class="form-control" title="請輸入密碼" name="psw">
						</div>
						<div class="form-group">
							<input type="password" id="checkpass" placeholder="checkpassword" class="form-control" title="與密碼相附">
						</div>
						<div class="form-group">
							<p class="Description" id="checkpassword"></p>
						</div>
						<div class="form-group">
							<input  type="text" placeholder="name"
								class="form-control"  title="請輸入暱稱" name="memberName" >
						</div>
						<div class="form-group">
							<input  type="text" placeholder="address"
								class="form-control" title="請輸入地址" name="address" >
						</div>
						<div class="form-group">
							<input  type="text" placeholder="cellphone-number "
								class="form-control"  title="請輸入手機" name="memberPhone" >
						</div>
						
						
						<div class="signupbox">
							<span>Already got account? <a id="login-btn" href="#">Sign
									In.</a></span>
						</div>
						<div class="loginbox">
						<input type="submit" class="btn signin-btn" value="SIGN UP" ><span
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
					<a class="navbar-brand" href="index.jsp">HoPet</a>
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
				<a href="#" id="search-icon"> <i class="fa fa-search"> </i>
				</a>
			</div>
		</nav>
	</section>




	<!-- Start about  -->
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area">
						<h2 class="title">About us</h2>
						<span class="line"></span>
						<p>There are many variations of passages of Lorem Ipsum
							available, but the majority have suffered alteration in some
							form, by injected humour</p>
					</div>
				</div>
				<div class="col-md-12">
					<div class="about-content">
						<div class="row">
							<div class="col-md-6">
								<div class="our-skill">
									<h3>Our Skills</h3>
									<div class="our-skill-content">
										<p>There are many variations of passages of Lorem Ipsum
											available, but the majority have suffered alteration in some
											form, by injected humour</p>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="100">
												<span class="progress-title">Html5</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="85">
												<span class="progress-title">Css3</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="70">
												<span class="progress-title">JQuery</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="60">
												<span class="progress-title">wordPress</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="40">
												<span class="progress-title">Php</span>
											</div>
										</div>
										<div class="progress">
											<div class="progress-bar six-sec-ease-in-out"
												role="progressbar" data-transitiongoal="25">
												<span class="progress-title">Java</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="why-choose-us">
									<h3>Why Choose Us?</h3>
									<div class="panel-group why-choose-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne"> Awesome Design Layout <span
														class="fa fa-minus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse in">
												<div class="panel-body">
													<img class="why-choose-img" src="assets/images/testi1.jpg"
														alt="img">
													<p>Anim pariatur cliche reprehenderit, enim eiusmod
														high life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
										<div class="panel panel-default ">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseTwo"> Quality Coding <span
														class="fa fa-plus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
													<p>Anim pariatur cliche reprehenderit, enim eiusmod
														high life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseThree"> Great Support <span
														class="fa fa-plus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
													<p>Anim pariatur cliche reprehenderit, enim eiusmod
														high life accusamus terry richardson ad squid. 3 wolf moon
														officia aute, non cupidatat skateboard dolor brunch. Food
														truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
														tempor, sunt aliqua put a bird on it squid single-origin
														coffee nulla assumenda shoreditch et. Nihil anim keffiyeh
														helvetica, craft beer labore wes anderson cred nesciunt
														sapiente ea proident. Ad vegan excepteur butcher vice
														lomo. Leggings occaecat craft beer farm-to-table, raw
														denim aesthetic synth nesciunt you probably haven't heard
														of them accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end about -->

	



	

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
	<script src="assets/js/bootstrap.js"></script>
	<!-- Slick Slider -->
	<script type="text/javascript" src="assets/js/slick.js"></script>
	<!-- mixit slider -->
	<script type="text/javascript" src="assets/js/jquery.mixitup.js"></script>
	<!-- Add fancyBox -->
	<script type="text/javascript" src="assets/js/jquery.fancybox.pack.js"></script>
	<!-- counter -->
	<script src="assets/js/waypoints.js"></script>
	<script src="assets/js/jquery.counterup.js"></script>
	<!-- Wow animation -->
	<script type="text/javascript" src="assets/js/wow.js"></script>
	<!-- progress bar   -->
	<script type="text/javascript" src="assets/js/bootstrap-progressbar.js"></script>
	<!--login   -->
	<script type="text/javascript" src="assets/css/login/login.js"></script>
	<!--Signon   -->
	<script type="text/javascript" src="assets/css/SignOn/SignOn.js"></script>


	<!-- Custom js -->
	<script type="text/javascript" src="assets/js/custom.js"></script>

</body>
</html>