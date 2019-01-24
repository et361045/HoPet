<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="UTF-8">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Dog</title>
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
							<a class="login modal-form" data-target="#login-form"
								data-toggle="modal" href="#">Login / Sign Up</a>
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
					<form>
						<div class="form-group">
							<input type="text" placeholder="User name" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password"
								class="form-control">
						</div>
						<div class="loginbox">
							<label><input type="checkbox"><span>Remember
									me</span></label>
							<button class="btn signin-btn" type="button">SIGN IN</button>
						</div>
					</form>
				</div>
				<div class="modal-footer footer-box">
					<a href="#">Forgot password ?</a> <span>No account ? <a
						id="signup-btn" href="#">Sign Up.</a></span>
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
					<form>
						<div class="form-group">
							<input placeholder="Name" class="form-control">
						</div>
						<div class="form-group">
							<input placeholder="Username" class="form-control">
						</div>
						<div class="form-group">
							<input placeholder="Email" class="form-control">
						</div>
						<div class="form-group">
							<input type="password" placeholder="Password"
								class="form-control">
						</div>
						<div class="signupbox">
							<span>Already got account? <a id="login-btn" href="#">Sign
									In.</a></span>
						</div>
						<div class="loginbox">
							<label><input type="checkbox"><span>Remember
									me</span><i class="fa"></i></label>
							<button class="btn signin-btn" type="button">SIGN UP</button>
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
					 <a href="index.jsp"><img src="/PetProject/assets/images/logo.png" class="logo_img"></a>
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
	<table class="dog_table">
		<tbody>
			<tr>
				<td class="dog_table_td">小型犬</td>
			</tr>
			<tr>
				<td class="dog_td">
					<ul>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=1"
							title="柴犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/10.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=1"
							title="柴犬">柴犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=2"
							title="巴哥"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/13.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=2"
							title="巴哥">巴哥</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=3"
							title="貴賓犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/2.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=3"
							title="貴賓犬">貴賓犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=4"
							title="吉娃娃"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/19.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=4"
							title="吉娃娃">吉娃娃</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=5"
							title="紅貴賓"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/3.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=5"
							title="紅貴賓">紅貴賓</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=6"
							title="絲毛梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/4.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=6"
							title="絲毛梗">絲毛梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=7"
							title="北京犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/20.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=7"
							title="北京犬">北京犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=8"
							title="拉薩犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/15.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=8"
							title="拉薩犬">拉薩犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=9"
							title="博美犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/5.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=9"
							title="博美犬">博美犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=10"
							title="比熊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/21.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=10"
							title="比熊犬">比熊犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=11"
							title="約克夏"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/67.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=11"
							title="約克夏">約克夏</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=12"
							title="日本狆"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/22.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=12"
							title="日本狆">日本狆</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=13"
							title="西施犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/17.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=13"
							title="西施犬">西施犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=14"
							title="雪納瑞"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/7.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=14"
							title="雪納瑞">雪納瑞</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=15"
							title="蝴蝶犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/1.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=15"
							title="蝴蝶犬">蝴蝶犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=16"
							title="米格魯"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/18.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=16"
							title="米格魯">米格魯</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=17"
							title="波士頓梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/14.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=17"
							title="波士頓梗">波士頓梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=18"
							title="威爾斯梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/12.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=18"
							title="威爾斯梗">威爾斯梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=19"
							title="瑪爾濟斯"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/8.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=19"
							title="瑪爾濟斯">瑪爾濟斯</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=20"
							title="長毛臘腸犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/66.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=20"
							title="長毛臘腸犬">長毛臘腸犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=21"
							title="傑克羅素梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/6.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=21"
							title="傑克羅素梗">傑克羅素梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=22"
							title="丹第丁蒙梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/23.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=22"
							title="丹第丁蒙梗">丹第丁蒙梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=23"
							title="中國冠毛犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/24.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=23"
							title="中國冠毛犬">中國冠毛犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=24"
							title="西部高地白梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/16.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=24"
							title="西部高地白梗">西部高地白梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=25"
							title="查理王長毛獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/11.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=25"
							title="查理王長毛獵犬">查理王長毛獵犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=26"
							title="迷你品(迷你杜賓)"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/9.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=26"
							title="迷你品(迷你杜賓)">迷你品(迷你杜賓)</a></li>
					</ul>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td class="dog_table_td">中型犬</td>
			</tr>
			<tr>
				<td class="dog_td">
					<ul>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=27"
							title="巴吉度"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/36.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=27"
							title="巴吉度">巴吉度</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=28"
							title="鬆獅犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/27.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=28"
							title="鬆獅犬">鬆獅犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=29"
							title="柯基犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/65.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=29"
							title="柯基犬">柯基犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=30"
							title="牛頭梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/28.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=30"
							title="牛頭梗">牛頭梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=31"
							title="沙皮犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/33.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=31"
							title="沙皮犬">沙皮犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=32"
							title="惠比特犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/64.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=32"
							title="惠比特犬">惠比特犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=33"
							title="貝林登梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/25.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=33"
							title="貝林登梗">貝林登梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=34"
							title="蘇格蘭梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/26.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=34"
							title="蘇格蘭梗">蘇格蘭梗</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=35"
							title="英國鬥牛犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/31.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=35"
							title="英國鬥牛犬">英國鬥牛犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=36"
							title="法國鬥牛犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/32.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=36"
							title="法國鬥牛犬">法國鬥牛犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=37"
							title="英國可卡獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/34.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=37"
							title="英國可卡獵犬">英國可卡獵犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=38"
							title="美國可卡獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/35.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=38"
							title="美國可卡獵犬">美國可卡獵犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=39"
							title="喜樂蒂牧羊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/30.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=39"
							title="喜樂蒂牧羊犬">喜樂蒂牧羊犬</a></li>
					</ul>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td class="dog_table_td">大型犬</td>
			</tr>
			<tr>
				<td class="dog_td">
					<ul>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=40"
							title="杜賓犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/53.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=40"
							title="杜賓犬">杜賓犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=41"
							title="挪威納"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/43.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=41"
							title="挪威納">挪威納</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=42"
							title="拳師犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/44.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=42"
							title="拳師犬">拳師犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=43"
							title="威瑪犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/39.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=43"
							title="威瑪犬">威瑪犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=44"
							title="秋田犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/55.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=44"
							title="秋田犬">秋田犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=45"
							title="拉不拉多"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/52.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=45"
							title="拉不拉多">拉不拉多</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=46"
							title="黃金獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/42.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=46"
							title="黃金獵犬">黃金獵犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=47"
							title="大麥町犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/37.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=47"
							title="大麥町犬">大麥町犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=48"
							title="薩摩耶犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/54.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=48"
							title="薩摩耶犬">薩摩耶犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=49"
							title="尋血獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/49.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=49"
							title="尋血獵犬">尋血獵犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=50"
							title="德國狼犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/40.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=50"
							title="德國狼犬">德國狼犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=51"
							title="馬士提夫"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/51.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=51"
							title="馬士提夫">馬士提夫</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=52"
							title="阿富汗獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/48.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=52"
							title="阿富汗獵犬">阿富汗獵犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=53"
							title="蘇俄牧羊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/38.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=53"
							title="蘇俄牧羊犬">蘇俄牧羊犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=54"
							title="可麗牧羊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/46.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=54"
							title="可麗牧羊犬">可麗牧羊犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=55"
							title="愛爾蘭雪達犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/41.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=55"
							title="愛爾蘭雪達犬">愛爾蘭雪達犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=56"
							title="西伯利亞哈士奇"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/47.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=56"
							title="西伯利亞哈士奇">西伯利亞哈士奇</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=57"
							title="阿拉斯加雪橇犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/50.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=57"
							title="阿拉斯加雪橇犬">阿拉斯加雪橇犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=58"
							title="英國古代牧羊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/45.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=58"
							title="英國古代牧羊犬">英國古代牧羊犬</a></li>
					</ul>
				</td>
			</tr>
		</tbody>
		<tbody>
			<tr>
				<td class="dog_table_td">超大型犬</td>
			</tr>
			<tr>
				<td class="dog_td">
					<ul>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=59"
							title="大丹犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/62.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=59"
							title="大丹犬">大丹犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=60"
							title="土佐犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/63.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=60"
							title="土佐犬">土佐犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=61"
							title="西藏獒犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/60.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=61"
							title="西藏獒犬">西藏獒犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=62"
							title="大白熊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/61.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=62"
							title="大白熊犬">大白熊犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=63"
							title="聖伯納犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/56.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=63"
							title="聖伯納犬">聖伯納犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=64"
							title="紐芬蘭犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/58.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=64"
							title="紐芬蘭犬">紐芬蘭犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=65"
							title="伯恩山犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/59.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=65"
							title="伯恩山犬">伯恩山犬</a></li>
						<li><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=66"
							title="高加索山犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/57.png"></a><a
							href="/PetProject/PetEncyclopedia/findDogData?petEncyclopediaId=66"
							title="高加索山犬">高加索山犬</a></li>
					</ul>
				</td>
			</tr>
		</tbody>
	</table>

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
	<!-- Custom js -->
	<script type="text/javascript" src="assets/js/custom.js"></script>


</body>
</html>