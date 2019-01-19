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
<script defer
	src="https://use.fontawesome.com/releases/v5.6.3/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
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
<link href="/PetProject/assets/css/foster/foster.css" rel="stylesheet">

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
									value="  <a class='login modal-form' id='Logout'> Logout</button>"
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
					<img src="assets/images/logo.png" class="logo_img">
					<!-- IMG BASED LOGO  -->
					<!-- <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="logo"></a> -->
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul id="top-menu" class="nav navbar-nav navbar-right main-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">會員中心 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/PetProject/member/member.jsp">會員資料</a></li>
								<li><a href=""><span class="fa fa-search"></span>搜尋好友 </a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物生活館 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">醫院</a></li>
								<li><a href="">商家</a></li>
								<li><a href="">景點</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寵物百科 <span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="">Dog</a></li>
								<li><a href="">Cat</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">寄養&領養<span class="fa fa-angle-down"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="/PetProject/fostercarecommission">寄養</a></li>
								<li><a href="">領養</a></li>
								<li><a href="" data-toggle="modal"
									data-target="#exampleModal">申請送養</a></li>
								<li><a href="" data-toggle="modal"
									data-target="#exampleModal5">申請寄養</a></li>
							</ul></li>
						<li><a href="">寵物旅遊</a></li>
						<li><a href="">寵物商城</a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
						    data-toggle="dropdown">寵物活動<span class="fa fa-angle-down"></span></a>
						<ul class="dropdown-menu" role="menu">
							<li><a href="ActivityHome.jsp">活動首頁</a></li>
							<li><a href="/PetProject/activityCommission"  data-toggle="modal"
									data-target="#exampleModal100">一起去旅遊</a></li>
							<li><a href="">查詢參加活動</a></li>
					</ul>
				</div>
				<!--/.nav-collapse -->
				<a href="#" id="search-icon"> <i class="fa fa-search"> </i>
				</a>
			</div>
		</nav>
	</section>
	
<!-- 	改 -->
	
	<!--送養申請彈出視窗 -->
	<div class="modal fade foster_table" id="exampleModal100" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel5" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="foster_modal_content">
				<div class="modal-header">
					<i class="modal_title" id="exampleModalLabel5">活動申請表</i>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<c:url value="/PetProject/xxxxx" />" method="get" id="foster_form5">
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">會員名字 :</label>
							<span id="hostName5">${user.memberName}</span>
						</div>
<!-- 						<div class=".form_group"> -->
<!-- 							<label for="recipient-name" class="col-form-label">寵物 :</label> <span><select -->
<!-- 								id="petId" name="petId" class="foster_form_variety_select"> -->
<!-- 									<option>請選擇</option> -->
<%-- 									 <c:forEach items="${pet}" var="pet"> --%>
<%-- 									<option value="${pet.petId}">${pet.petName}</option> --%>
<%-- 									</c:forEach> --%>
<!-- 							</select></span> -->
<!-- 						</div> -->
				
						<div id="foster_form_select">
						<label>活動地點 :</label>
						<div  class="foster_form_select" data-role="county"></div>
						<div  class="foster_form_select" data-role="district"></div>
						</div>
						
						<div>			
						<label>活動日期:</label>
        				<input name="starttime" type="date" id="start" value="" name="trip-start" min="2018-01-01" max="2050-12-31">
        				<label>結束日期:</label>
        				<input name="endtime" type="date" id="end" name="trip-end" min="2018-01-01" max="2050-12-31">
        				<label class="st1" id=idp></label>
						</div>
						
						<div>
<!--         				<lable>總報名人數:</lable> -->
<!--         				<input name="sighup" type="date" id="start" value="" name="trip-start" min="1" max="50"> -->
<!-- 						<select name="sighup">  -->
<!-- 							<option value="s1">1</option> -->
<!-- 							<option value="s2">2</option> -->
<!-- 							<option value="s3">3</option> -->
<!-- 							<option value="s4">4</option> -->
<!-- 							<option value="s5">5</option> -->
<!-- 							<option value="s6">6</option> -->
<!-- 							<option value="s7">7</option> -->
<!-- 							<option value="s8">8</option> -->
<!-- 							<option value="s9">9</option> -->
<!-- 							<option value="s10">10</option> -->
<!-- 						</select> -->
        				<lable>限制人數:</lable>
<!--         				<input name="limit" type="date" id="start" value="" name="trip-start" max="50"> -->
						<select name="limit"> 
							<option value="10">1-10人</option>
							<option value="20">10-20人</option>
							<option value="30">20-30人</option>
							<option value="40">30-40人</option>
							<option value="50">40-50人</option>
						</select>
						<label class="st1" id=idp></label>
						</div>
						
						<script>
						document.addEventListener("DOMContentLoaded", function () {
						    now();
						    document.getElementById("start").addEventListener("change", ans);
						    document.getElementById("end").addEventListener("change", ans);
						})
						function ans() {
						    var start = document.getElementById("start").value;
						    var end = document.getElementById("end").value;
						    var ans = Date.parse(end) - Date.parse(start);
						    ans = ans / (1000 * 60 * 24 * 60) + 1;
						    document.getElementById("idp").innerHTML =
						        "共" + ans + "天"
						}
						function now() {
						    document.getElementById("start").valueAsDate = new Date();
						}
						</script>	
						
						<script>
							//自動產生縣市 
							$("#foster_form_select").twzipcode({
								"zipcodeIntoDistrict" : true,
								"countyName" : "city", // 指定城市 select name
								"districtName" : "town" // 指定地區 select name
							});
						</script>
						<div class=".form_group">
							<label for="message-text" class="col-form-label">活動主題 :</label>
							<textarea class="form-control" name="reason" id="reason"></textarea>
						</div>
						<div class=".form_group">
							<label for="message-text" class="col-form-label">活動內容 :</label>
							<textarea class="form-control" name="reason" id="reason"></textarea>
						</div>
<!-- 						<div class=".form_group"> -->
<!-- 							<label for="recipient-name" class="col-form-label">天數 ( 如 :一天；二天一夜；三天兩夜) :</label> -->
<!-- 							<textarea class="form-control" name="remark" id="remark"></textarea> -->
<!-- 						</div> -->
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">備註 ( 如 :) :</label>
							<textarea class="form-control" name="remark" id="remark"></textarea>
						</div>
						
						
						
						<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="foster_send5">送出</button>
				</div>
					</form>
				</div>
				
			</div>
		</div>
	</div>
	<!-- END MENU -->
	<!-- Start Pricing table -->
	<section id="our-team">
		<div class="foster_search">
			<div class="">
				<div class="foster_search_tital">
					<p>條件查詢</p>
				</div>
				<form>
					<div class="form-group mx-sm-3 mb-3">
						<div class="foster_search_select" id="foster_search_select">
							<label>縣市 :</label>
							<div class="foster_search_select" data-role="county"></div>
							<div class="foster_search_select" style="display: none;"
								data-role="district"></div>
							<script>
								//自動產生縣市 
								$("#foster_search_select").twzipcode({
									"zipcodeIntoDistrict" : true,
									"countyName" : "city", // 指定城市 select name
									"districtName" : "town" // 指定地區 select name
								});
							</script>
							<label>品種 :</label> <select id="termType" name="termType"
								class="form-control">
								<option value="">請選擇</option>
								<option value="24">一天</option>
								<option value="25">兩天一夜</option>
								<option value="26">三天兩夜</option>
							
							</select> <input type="hidden" value="" placeholder="missionstatus"
								id="missionstatus" name="missionstatus" /> <input type="button"
								value="搜尋" id="searchButt" class="btn btn-primary btn">


						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="container_foster">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area_foster">
						<h2 class="title_foster">活動內容</h2>
					</div>
				</div>
				<div class="col-md-12">
					<div class="our-team-content">
						<div class="row">
							
							<c:forEach var="care" items="${select1}">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-team-member">
									<div class="team-member-img">
										<img src="${care.picture} ">
									</div>
									<div class="team-member-name">
										<p>${care.variety}</p>
									</div>
									<p>${care.remark}</p>
									<div class="team-member-link">
										<a href="#"><i class="fa fa-heart fa-2x foster_heart"
											title="我想要領養"></i></a> <a href="#" id="dog${care.petid}" onclick="finddogdetail(${care.petid})" data-toggle="modal"
											data-target="#fostercareDogDetails"><i
											id="fostercareDogDetails" class="fa fa-dog fa-2x foster_dog" title="詳細資料"></i></a>
									</div>
								</div>
							</div>
							</c:forEach>
							<!-- Start single team member -->
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<!-- 	詳細視窗 -->
	<div class="modal fade foster_table" id="fostercareDogDetails" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel6" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="foster_modal_content">
				<div class="modal-header">
					<i class="modal_title" id="exampleModalLabel6">狗狗資料</i>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="fosterDogDetails">
				<div class="fosterDogDetails_img">
					<img id=dogdetailpicture src="">
				</div>				
				<div class="fosterDogDetails_ul">				
					<ul>
						<li>主人名字：<div id=dogdetailname></div></li>
						<li>狗狗名字：<div id=dogdetaildogname></div></li>
						<li>地區：<div id=dogdetailarea></div></li>
						<li>品種：<div id=dogdetailvariety></div></li>
						<li>年紀：<div id=dogdetailage></div></li>
					</ul>
				</div>
				</div>
				<div style="padding-top:10px;">
					<div style="display: inline-block;">				
						<ul class="fosterDogDetails_ul2">
							<li>寄養原因：<span id=dogdetailreason></span></li>
						</ul>
					</div>
					<div style="display: inline-block;">				
						<ul class="fosterDogDetails_ul3">
							<li>備註：<span id=dogdetailremark>$</span></li>
						</ul>
					</div>
				</div>
				<div class="fosterDogDetails_footer">
					<button type="button" class="btn btn-primary" id="adoption_send1"  data-toggle="modal"
									data-target="#adoptionModal">我要領養</button>
				</div>
			</div>
		</div>
	</div>
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
	<script>
		$(document)
				.ready(
						function() {
							$(".team-member-link a:first-child")
									.mouseenter(
											function() {
												$(this)
														.empty()
														.append(
																"<i class='fa fa-heart fa-2x fa-spin foster_heart'title='我想要領養'></i>")
											});
							$(".team-member-link a:first-child")
									.mouseleave(
											function() {
												$(this)
														.empty()
														.append(
																"<i class='fa fa-heart fa-2x foster_heart'title='我想要領養'></i>")
											});
							$(".team-member-link a:nth-child(2)")
									.mouseenter(
											function() {
												$(this)
														.empty()
														.append(
																"<i class='fa fa-dog fa-2x fa-spin foster_dog' title='詳細資料'></i>")
											});
							$(".team-member-link a:nth-child(2)")
									.mouseleave(
											function() {
												$(this)
														.empty()
														.append(
																"<i class='fa fa-dog fa-2x foster_dog' title='詳細資料'></i>")
											});

						});
// 		改
		$("#foster_send5").click(function() {
			var form5 = $("#foster_form5").serialize();
			console.log(form5);
			$.ajax({
				url : "xxxxx?" + form5,
				type : "GET",
			}).done(function(response) {
				alert("寄養成功")
				$("#fosterModal").modal('hide');
				window.location.href= '/PetProject/fostercarecommission';
			})
		})
		
		
		function finddogdetail(id){
			console.log(id);
			$.ajax({
			url:"findcarePetId?id="+id,
			type : "GET",
			data:"JSON"
			}).done(function(responsedogdetail){
				$("#dogdetailname").text(responsedogdetail.memberName);
				$("#dogdetaildogname").text(responsedogdetail.petName);
				$("#dogdetailarea").text(responsedogdetail.area);
				$("#dogdetailvariety").text(responsedogdetail.variety);
				$("#dogdetailage").text(responsedogdetail.age);
				$("#dogdetailreason").text(responsedogdetail.reason);
				$("#dogdetailremark").text(responsedogdetail.remark);
				$("#dogdetailpicture").attr("src",responsedogdetail.picture);			
			})
			

		}
		
	</script>
</body>
</html>