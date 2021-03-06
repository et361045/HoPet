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
<title>HoPet醫院地圖</title>
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
<link href="/PetProject/assets/css/memberstyle.css" rel="stylesheet">
<!-- login Style -->
<link href="/PetProject/assets/css/login/login.css" rel="stylesheet">
<script defer
	src="https://use.fontawesome.com/releases/v5.6.3/js/all.js"></script>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.js'></script>
<script src="https://maps.google.com/maps/api/js?sensor=false"></script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery-twzipcode@1.7.14/jquery.twzipcode.min.js"></script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<!-- Fonts -->

<!-- Open Sans for body font -->
<link href='https://fonts.googleapis.com/css?family=Open+Sans'
	rel='stylesheet' type='text/css'>
<!-- Lato for Title -->
<link href='https://fonts.googleapis.com/css?family=Lato'
	rel='stylesheet' type='text/css'>
<link href="/PetProject/assets/css/hospital/hospital.css"
	rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
<style>
body, input {
	font-size: 10px;
}

#map_canvas {
	height: 100%;
	border-radius: 5px;
}
</style>
<!-- <script type="text/javascript" -->
<!-- 	src="https://maps.googleapis.com/maps/api/js?key&AIzaSyD5yTSd7qAEyeoxcOIEK1K4M3X-H6bKiis"> -->
	
<!-- </script> -->
<script type="text/javascript"
     src="https://maps.googleapis.com/maps/api/js?callback=initialize&key=AIzaSyD_dGEr_Cm5zksGOql-xQ3Tie8j7CGZDdw">
</script>
<script type="text/javascript">
	function initialize() {
		geocoder = new google.maps.Geocoder();
	}

	function doClick() {
		var address = document.getElementById("address").value;
		if (geocoder) {
			geocoder
					.geocode(
							{
								"address" : address
							},
							function(results, status) {
								if (status != google.maps.GeocoderStatus.OK) {
									alert("Geocoder Failed: " + status);
								} else {
									console.log("location="
											+ results[0].geometry.location)

									document.getElementById("lat").value = results[0].geometry.location
											.lat();
									document.getElementById("lng").value = results[0].geometry.location
											.lng();
								}
							});
		}
	}

	function clearForm() {
		var inputs = document.getElementsByTagName("input");
		for (var i = 0; i < inputs.length; i++) {
			if (inputs[i].type == "text") {
				inputs[i].value = "";
			}
		}
	}
	initialize()
</script>


<script>
	$(function() {

		var latlng1 = new google.maps.LatLng(25.0293159, 121.5217353);//博愛醫院
		//設定地圖參數
		var mapOptions = {
			zoom : 16, //初始放大倍數
			center : latlng1, //中心點所在位置
			mapTypeId : google.maps.MapTypeId.ROADMAP
		//正常2D道路模式
		};
		var imageUrl = "assets/images/hospital.png"; //空字串就會使用預設圖示
		//在指定DOM元素中嵌入地圖
		geocoder = new google.maps.Geocoder();
		var map = new google.maps.Map(document.getElementById("map_canvas"),
				mapOptions);
		var infowindow = new google.maps.InfoWindow();

		$
				.ajax({
					data : "GET",
					url : "/PetProject/query",
					dataType : "json",
					success : function(json) {
						console.log(json)
						$
								.each(
										json,
										function(idx, val) {
											var latitude = new google.maps.LatLng(
													val.longitude, val.latitude);
											var hospitalName = val.hospitalName;
											var hospitalAddress = val.hospitalAddress;
											var hospitalphone = val.hospitalphone;
											var marker = new google.maps.Marker(
													{
														position : latitude, //經緯度
														title : hospitalName, //顯示文字
														icon : imageUrl,
														map : map,
														html : hospitalAddress,
														html1 : hospitalphone
													//指定要放置的地圖對象
													});
											google.maps.event
													.addListener(
															marker,
															'click',
															function() {

																/*this就是指marker*/
																infowindow
																		.setContent("<H4 style='color: blue'>"
																				+ this.title
																				+ "</H4>"
																				+ "<p style='color:black'>"
																				+ "地址:"
																				+ "<a href='http://www.poaipets.com.tw/front/bin/home.phtml'>"
																				+ this.html
																				+ "</a>"
																				+ "</p>"
																				+ "<p style='color:black'>"
																				+ "電話:"
																				+ this.html1
																				+ "</p>");
																infowindow
																		.open(
																				map,
																				this);

															})
										})
					}
				});

	});
</script>


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
							 <input type="submit" class="btn signin-btn" value="SIGN IN"><span
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
				<a href="#" id="search-icon"> <i class="fa fa-search"> </i>
				</a>
			</div>
		</nav>
	</section>
	<!-- END MENU -->

	<!-- 	<div id="hospital_search"> -->
	<!-- 		<div class="map_search_select" data-role="county"></div> -->
	<!-- 		<div class="map_search_select" data-role="district"></div> -->
	<!-- 	</div> -->
	<!-- 	<input name="Address" type="text" class="f13 address form-control"> -->


	<div class="map_search">
		<div class="">
			<div class="map_search_tital">
				<p>條件查詢</p>
			</div>
			<form method="get" id="select">
				<div class="form-group mx-sm-3 mb-3">
					<div id="hospital_search">
						<div class="map_search_select">
							<label>縣市 :</label>
							<div class="map_search_select" data-role="county"></div>
							<label>區域:</label>
							<div class="map_search_select" data-role="district"></div>


						</div>
						<script>
							//自動產生縣市 
							$("#hospital_search").twzipcode({
								"zipcodeIntoDistrict" : true,
								"countyName" : "city", // 指定城市 select name
								"districtName" : "town" // 指定地區 select name
							});
						</script>
						<input type="hidden" value="" placeholder="missionstatus"
							id="missionstatus" name="missionstatus" /> <input type="button"
							value="搜尋" id="searchButt"
							class="btn btn-primary btn hospital_map_search">
					</div>

				</div>
			</form>
			<div class="map_search_select_behide">
<c:if test="${user.memberPermission == 'Manager'}">			
<form action="<c:url value="/hospitaltest.controller" />"method="get">
<table>
 <tr>
  <td style="color:#7E9EC9"><h5>醫院名稱 :</h5> </td>
  <td><input type="text" name="hospitalName" value="${param.hospitalName}"></td>
  <td><span class="error">${errors.hospitalName}</span></td>
 </tr>
 <tr>
  <td style="color:#7E9EC9"><h5>醫院地址 :</h5> </td>
  <td><input type="text" id="address"name="hospitalAddress" value="${param.hospitalAddress}"></td>
  <td><span class="error">${errors.hospitalAddress}</span></td>
 </tr>
 
 <tr>
  <td style="color:#7E9EC9"><h5>醫院電話 :</h5> </td>
  <td><input type="text" name="hospitalphone" value="${param.hospitalphone}"></td>
  <td><span class="error">${errors.hospitalphone}</span></td>
 </tr>
 <tr>
  <td style="color:#7E9EC9"><h5>醫院主人 :</h5> </td>
  <td><input type="text" name="hospitalowner" value="${param.hospitalowner}"></td>
  <td><span class="error">${errors.hospitalowner}</span></td>
 </tr>
 <tr>
  <td style="color:#7E9EC9"><h5>經度 :</h5> </td>
  <td><input type="text" id="lat" name="longitude" value="${param.longitude}"></td>
  <td><span class="error">${errors.longitude}</span></td>
 </tr>
 <tr>
  <td style="color:#7E9EC9"><h5>緯度 :</h5> </td>
  <td><input type="text" id="lng" name="latitude" value="${param.latitude}"></td>
  <td><span class="error">${errors.latitude}</span></td>
 </tr>
 <tr>
  <td>
   <input type="submit" name="hospital" value="Insert">
  </td>
  <td>
   <input type="submit" name="hospital" value="Select">
   <input type="button" value="Clear" onclick="clearForm()">
   <input type="button" value="Go!" onclick="doClick()" />
  </td>
 </tr>
</table>
				</form>
				</c:if>
<c:if test="${not empty insert}">
 <h3>新增成功</h3>
 <script type="text/javascript">clearForm()</script>
</c:if>
				
			</div>
		</div>
	</div>
	<div class="hospital_map">
		<div>
			<p class="hospital_map_p">醫院地圖</p>
			<figure class="img_inner" id="map_canvas" style=" margin-right: 150px ; ">
				<iframe 
					src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
			</figure>
		</div>
	</div>
	<script>
		$('#searchButt')
				.click(
						function() {
							$
									.ajax({
										method : "POST",
										data : {
											town : $('select[name="town"]')
													.val(),
										},
										url : "/PetProject/oooo",
										dataType : "json",
										cache : false,
										async : false,
										success : function(json) {
											console.log(json);
											var latlng1 = new google.maps.LatLng(
													25.0576256, 121.5167654);//博愛醫院
											var mapOptions = {
												zoom : 16, //初始放大倍數
												center : latlng1, //中心點所在位置
												mapTypeId : google.maps.MapTypeId.ROADMAP
											};
											var imageUrl = "assets/images/hospital.png"; //空字串就會使用預設圖示
											//在指定DOM元素中嵌入地圖
											geocoder = new google.maps.Geocoder();
											var map = new google.maps.Map(
													document
															.getElementById("map_canvas"),
													mapOptions);
											var infowindow = new google.maps.InfoWindow();
											$
													.each(
															json,
															function(idx, val) {
																var latitude = new google.maps.LatLng(
																		val.longitude,
																		val.latitude);
																var hospitalName = val.hospitalName;
																var hospitalAddress = val.hospitalAddress;
																var hospitalphone = val.hospitalphone;
																var marker = new google.maps.Marker(
																		{
																			position : latitude, //經緯度
																			title : hospitalName, //顯示文字
																			icon : imageUrl,
																			map : map,
																			html : hospitalAddress,
																			html1 : hospitalphone
																		//指定要放置的地圖對象
																		});
																google.maps.event
																		.addListener(
																				marker,
																				'click',
																				function() {

																					/*this就是指marker*/
																					infowindow
																							.setContent("<H4 style='color: blue'>"
																									+ this.title
																									+ "</H4>"
																									+ "<p style='color:black'>"
																									+ "地址:"
																									+ "<a href='http://www.poaipets.com.tw/front/bin/home.phtml'>"
																									+ this.html
																									+ "</a>"
																									+ "</p>"
																									+ "<p style='color:black'>"
																									+ "電話:"
																									+ this.html1
																									+ "</p>");
																					infowindow
																							.open(
																									map,
																									this);

																				})
															})

										}
									})

						})
	</script>
	<script>
	$('#productTable>tbody').on('click','tr button:nth-child(1)',function(){
		
		 var row=$(this).parents('tr');
		 var hospitalId=row.find('td:nth-child(1)').text();
		 alert(hospitalId)
		 $.get("HospitalController",{'hospitalId':hospitalId},function(data){
			 loadProduct(1);
		 })
	})
	
	
	</script>


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
</body>
</html>