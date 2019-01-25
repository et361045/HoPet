<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>HoPet留言板</title>
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
								<li><a href="/PetProject/member/member.jsp">會員資料</a></li>

								<li><a id="fosteritem" onclick="fostercheck()">送養資料</a></li>
								<li><a  href="/PetProject/fodd" >寄養委託查詢</a></li>
								<li><a href="/PetProject/member/membermessage"><span class="fa fa-search"></span>動態消息 </a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物生活館 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/PetProject/hospitaltest.jsp">醫院</a></li>
								<li><a href="/PetProject/StoreMap.jsp">商家</a></li>
								
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物百科 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="dog.jsp">Dog</a></li>
								
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寄養&領養<span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="fostercarecommission">寄養</a></li>
								<li><a href="findFosterForm">領養</a></li>
<!-- 								<li><a id ="xxx" href="" onclick='check()' data-toggle="" data-target="">申請送養</a></li> -->
								<li><a id="application_foster" onclick="check()" data-toggle="" data-target="">申請送養</a></li>
							</ul></li>
						
<!-- 						<li><a href="">寵物旅遊</a></li> -->
<!-- 						<li><a href="">寵物商城</a></li> -->
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						    data-toggle="dropdown">寵物活動<span class="fa fa-angle-down"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/PetProject/activityCommission">一起去旅遊</a></li>
					
					</ul>
				</div>
				<!--/.nav-collapse -->
				<a href="#" id="search-icon"> <i class="fa fa-search" style="">
				</i>
				</a>
			</div>
		</nav>
	</section>



	<!-- Start subscribe us -->
	<section id="subscribe">
		<div class="subscribe-overlay"
			style="background-image: url(/PetProject/assets/images/search.jpg); opacity: 0.9 ;height: 300px">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End subscribe us -->
	<!-- Start blog archive -->
	<section id="blog-archive">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="blog-archive-area">
						<div class="row">
						
							<div class="col-md-8">
								<div class="blog-archive-left">
									<!-- Start blog news single -->
									<article class="blog-news-single">
										<c:if test="${!empty  user}">
											<div class="blog-news-img" style="margin-bottom: 55px">

												<form action="<c:url value='messgaeinsert'/>" ;method="post">
													<div
														style="width: 903px; height: 300px; border-radius: 9px">



														<div
															style="border-left: black 2px solid; border-top: black 2px solid; border-right: black 2px solid; background-color: #e0e0e0; width: 905px; height: 30px; border-top-left-radius: 9px; border-top-right-radius: 9px">
															<span class="text" style="margin-left: 10px"><label
																for="title2">標題:</label> <input id="title2" type="text"
																class="text"
																style="background-color: inherit; border-width: 0"
																name="title"></span> <span style="margin-left: 470px">
																<label class="text">權限:</label><select class="text"
																name="permission"
																style="background-color: inherit; border-width: 0"><option
																		value="public">公開</option>
																	<option value="friend">朋友</option></select>
															</span>
														</div>

														<textarea rows="12" cols="110" Wrap="Hard"
															style="border: black 2px solid; resize: none;"
															name="message"></textarea>
														<%-- 													<img id="memberpicture" src="${user.memberPicture}" --%>
														<!-- 														width="150px" -->
														<!-- 														style="border: #8e8e8e solid thin; width: 150px" /> -->
													</div>
													<input type="text" name="time1" style="display: none">
													<div
														style="width: 905px; border: black 2px solid; border-bottom-left-radius: 9px; border-bottom-right-radius: 9px;">
														<span style="margin-left: 780px"><input
															type="reset" value="清空" class="btn-link"><input
															type="submit" value="送出" class="btn-link"> </span>
													</div>
												</form>
											</div>
										</c:if>
										<!-- 										顯示訊息 -->
										<c:if test="${not empty select}">
											<c:forEach var="bean" items="${select}">
												<div class="blog-news-img" style="margin-bottom: 100px ;">
													<div
														style="width: 903px; height: 300px; border-radius: 9px ;">
														<div
															style="border-left: black 2px solid; border-top: black 2px solid; border-right: black 2px solid; background-color: #e0e0e0; width: 905px; height: 30px; border-top-left-radius: 9px; border-top-right-radius: 9px;"
															class="text">${bean.title}</div>
														<table style="border: black 2px solid">
															<tr>
																<td style="border-right: black 2px solid"><img
																	id="memberpicture"
																	src="${bean.memberbean.memberPicture}"
																	style="height: 220px; width: 150px;" /></td>
																<td>
																	<div style="width: 749px" class="text">
																		${bean.message}</div>
																</td>
															</tr>
															<tr>
																<td
																	style="border-top: black 2px solid; border-right: black 2px solid"
																	class="text">${bean.memberbean.memberName}</td>
																<td style="border-top: black 2px solid"><span
																	class="text">時間:${bean.messagetime}</span> <span
																	class="text" style="margin-left: 20px">信箱:${bean.memberbean.email}</span>
																	
																</td>
															</tr>
														</table>
														<c:if test="${bean.memberid ==user.memberId}">
															<div
																style='width: 905px; border: black 2px solid; border-top: 0px;'>
																<form action="<c:url value='membermessagedelete'/>"
																	method="post">
																	<input name="messageboardid" type="text"
																		style="display: none" value="${bean.messageboardid}">
																	<span style='margin-left: 870px'><label
																		class='btn btn-light'><input type='submit'
																			value='刪除' style='display: none'><i
																			class='fas fa-trash-alt'></i></label></span>
																</form>
															</div>
														</c:if>
														<div
															style="width: 905px; border: black 2px solid; border-top: 0px;border-bottom: 0px;">
<%-- 															<form action="<c:url value='insertreturn'/>" method="post"> --%>
<%-- 															<input type="text" style="display: none" name="messageboardid" value="${bean.messageboardid}"> --%>
<!-- 															<input type="text" class="text" name="message" -->
<!-- 																style="width: 800px; height: 32px; border: 0px; outline: none" -->
<!-- 																placeholder="請輸入訊息"> -->
<!-- 																<input class="btn btn-link" type="submit" value="送出" style="width: 90px; font-size: 18px; font-family: 'cwTeXYen';">	 -->
<!-- 														</form> -->
														</div>
<%-- 														<c:if  test='${!empty bean.returnMessageBeans}' > --%>
<!-- 														<div style="width: 905px; border-top: 0px;margin: 0px;margin-bottom: 20px;border-bottom: 0px"> -->
<%-- 														<c:forEach var="bean" items="${bean.returnMessageBeans}"> --%>
<!-- 														<div style="width: 905px; margin: 0px; border: black 2px solid;"> -->
<%-- 															${bean.message} --%>
<!-- 														</div> -->
<%-- 														</c:forEach> --%>
<!-- 														</div> -->
<%-- 														</c:if> --%>
													</div>
												</div>
											</c:forEach>
										</c:if>
									</article>
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

</body>
</html>