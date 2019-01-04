<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
					<a class="navbar-brand" href="index.html">HoPet</a>
					<!-- IMG BASED LOGO  -->
					<!-- <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">會員中心 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">修改會員資料</a></li>
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
	<!-- END MENU -->
	<table class="dog_table">
		<tbody>
			<tr>
				<td class="dog_table_td">小型犬</td>
			</tr>
			<tr>
				<td class="dog_td">
					<ul>
						<li><a href="W9" title="柴犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/10.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=9" title="柴犬">柴犬</a></li>
						<li><a href="W12" title="巴哥"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/13.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=12" title="巴哥">巴哥</a></li>
						<li><a href="W2" title="貴賓犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/2.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=2" title="貴賓犬">貴賓犬</a></li>
						<li><a href="W18" title="吉娃娃"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/19.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=18" title="吉娃娃">吉娃娃</a></li>
						<li><a href="W63" title="紅貴賓"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/3.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=63" title="紅貴賓">紅貴賓</a></li>
						<li><a href="W3" title="絲毛梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/4.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=3" title="絲毛梗">絲毛梗</a></li>
						<li><a href="W19" title="北京犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/20.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=19" title="北京犬">北京犬</a></li>
						<li><a href="W14" title="拉薩犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/15.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=14" title="拉薩犬">拉薩犬</a></li>
						<li><a href="W4" title="博美犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/5.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=4" title="博美犬">博美犬</a></li>
						<li><a href="W20" title="比熊犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/21.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=20" title="比熊犬">比熊犬</a></li>
						<li><a href="W67" title="約克夏"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/67.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=67" title="約克夏">約克夏</a></li>
						<li><a href="W21" title="日本狆"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/22.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=21" title="日本狆">日本狆</a></li>
						<li><a href="W16" title="西施犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/17.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=16" title="西施犬">西施犬</a></li>
						<li><a href="W6" title="雪納瑞"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/7.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=6" title="雪納瑞">雪納瑞</a></li>
						<li><a href="W1" title="蝴蝶犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/1.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=1" title="蝴蝶犬">蝴蝶犬</a></li>
						<li><a href="W17" title="米格魯"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/18.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=17" title="米格魯">米格魯</a></li>
						<li><a href="W13" title="波士頓梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/14.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=13" title="波士頓梗">波士頓梗</a></li>
						<li><a href="W11" title="威爾斯梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/12.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=11" title="威爾斯梗">威爾斯梗</a></li>
						<li><a href="W7" title="瑪爾濟斯"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/8.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=7" title="瑪爾濟斯">瑪爾濟斯</a></li>
						<li><a href="W66" title="長毛臘腸犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/66.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=66" title="長毛臘腸犬">長毛臘腸犬</a></li>
						<li><a href="W5" title="傑克羅素梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/6.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=5" title="傑克羅素梗">傑克羅素梗</a></li>
						<li><a href="W22" title="丹第丁蒙梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/23.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=22" title="丹第丁蒙梗">丹第丁蒙梗</a></li>
						<li><a href="W23" title="中國冠毛犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/24.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=23" title="中國冠毛犬">中國冠毛犬</a></li>
						<li><a href="W15" title="西部高地白梗"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/16.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=15" title="西部高地白梗">西部高地白梗</a></li>
						<li><a href="W10" title="查理王長毛獵犬"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/11.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=10" title="查理王長毛獵犬">查理王長毛獵犬</a></li>
						<li><a href="W8" title="迷你品(迷你杜賓)"><img
								src="https://a.34cimg.com/pic/wiki/dog-s/9.png"></a><a
							href="yan.php?yan=Wiki_View&amp;id=8" title="迷你品(迷你杜賓)">迷你品(迷你杜賓)</a></li>
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