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
<title>HoPet寄養媒合</title>
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
								<li><a href="" data-toggle="modal"
									data-target="#exampleModal">申請送養</a></li>
								<li><a  id="application_fostercare" onclick="check()" data-toggle="" data-target="" 
									>申請寄養</a></li>
							</ul></li>
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
	<!--送養申請彈出視窗 -->
	<div class="modal fade foster_table" id="exampleModal5" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel5" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="foster_modal_content">
				<div class="modal-header">
					<i class="modal_title" id="exampleModalLabel5">寄養申請表</i>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form action="<c:url value="/PetProject/xxxxx" />" method="get" id="foster_form5">
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">主人姓名 :</label>
							<span id="hostName5">${user.memberName}</span>
						</div>
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">寵物 :</label> <span><select
								id="petId" name="petId" class="foster_form_variety_select">
									<option>請選擇</option>
									 <c:forEach items="${pet}" var="pet">
									<option value="${pet.petId}">${pet.petName}</option>
									</c:forEach>
							</select></span>
						</div>
				
						<div id="foster_form_select">
						<label>寵物所在地區 :</label>
						<div  class="foster_form_select" data-role="county"></div>
						<div  class="foster_form_select" data-role="district"></div>
						</div>
						<div>			
						<label>寄養日期:</label>
        				<input name="starttime" type="date" id="start" value="" name="trip-start" min="2018-01-01" max="2050-12-31">
        				<label>結束日期:</label>
        				<input name="endtime" type="date" id="end" name="trip-end" min="2018-01-01" max="2050-12-31">
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
							<label for="message-text" class="col-form-label">寄養原因 :</label>
							<textarea class="form-control" name="reason" id="reason"></textarea>
						</div>
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">備註 ( 如 :寵物個性、飼養習慣．．．) :</label>
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
				<form id="fostercare_search_form">
					<div class="form-group mx-sm-3 mb-3">
						<div class="foster_search_select" id="fostercare_search_select">
							<label>縣市 :</label>
							<div class="foster_search_select" data-role="county"></div>
							<div class="foster_search_select" style="display: none;"
								data-role="district"></div>
							<script>
								//自動產生縣市 
								$("#fostercare_search_select").twzipcode({
									"zipcodeIntoDistrict" : true,
									"countyName" : "city1", // 指定城市 select name
									"districtName" : "town" // 指定地區 select name
								});
							</script>
<!-- 							<label>品種 :</label> <select id="termType" name="termType" -->
<!-- 								class="form-control"> -->
<!-- 								<option value="">請選擇</option> -->
<!-- 								<option value="柴犬">柴犬</option> -->
<!-- 								<option value="巴哥">巴哥</option> -->
<!-- 								<option value="貴賓犬">貴賓犬</option> -->
<!-- 								<option value="吉娃娃">吉娃娃</option> -->
<!-- 								<option value="紅貴賓">紅貴賓</option> -->
<!-- 								<option value="絲毛梗">絲毛梗</option> -->
<!-- 								<option value="北京犬">北京犬</option> -->
<!-- 								<option value="拉薩犬">拉薩犬</option> -->
<!-- 								<option value="博美犬">博美犬</option> -->
<!-- 								<option value="比熊犬">比熊犬</option> -->
<!-- 								<option value="約克夏">約克夏</option> -->
<!-- 								<option value="日本狆">日本狆</option> -->
<!-- 								<option value="西施犬">西施犬</option> -->
<!-- 								<option value="雪納瑞">雪納瑞</option> -->
<!-- 								<option value="蝴蝶犬">蝴蝶犬</option> -->
<!-- 								<option value="米格魯">米格魯</option> -->
<!-- 								<option value="波士頓梗">波士頓梗</option> -->
<!-- 								<option value="威爾斯梗">威爾斯梗</option> -->
<!-- 								<option value="馬爾濟斯">馬爾濟斯</option> -->
<!-- 								<option value="長毛臘腸犬">長毛臘腸犬</option> -->
<!-- 								<option value="傑克羅素梗">傑克羅素梗</option> -->
<!-- 								<option value="單第丁蒙梗">單第丁蒙梗</option> -->
<!-- 								<option value="中國冠毛犬">中國冠毛犬</option> -->
<!-- 								<option value="西部高地白梗">西部高地白梗</option> -->
<!-- 								<option value="查理王長毛獵犬">查理王長毛獵犬</option> -->
<!-- 								<option value="迷你杜賓">迷你杜賓</option> -->
<!-- 								<option value="巴吉度">巴吉度</option> -->
<!-- 								<option value="鬆獅犬">鬆獅犬</option> -->
<!-- 								<option value="柯基犬">柯基犬</option> -->
<!-- 								<option value="牛頭梗">牛頭梗</option> -->
<!-- 								<option value="沙皮犬">沙皮犬</option> -->
<!-- 								<option value="惠比特犬">惠比特犬</option> -->
<!-- 								<option value="貝林登梗">貝林登梗</option> -->
<!-- 								<option value="蘇格蘭梗">蘇格蘭梗</option> -->
<!-- 								<option value="英國鬥牛犬">英國鬥牛犬</option> -->
<!-- 								<option value="法國鬥牛犬">法國鬥牛犬</option> -->
<!-- 								<option value="英國可卡獵犬">英國可卡獵犬</option> -->
<!-- 								<option value="美國可卡獵犬">美國可卡獵犬</option> -->
<!-- 								<option value="喜樂蒂牧羊犬">喜樂蒂牧羊犬</option> -->
<%-- 								<option value="杜賓犬</">杜賓犬</option> --%>
<!-- 								<option value="挪威納">挪威納</option> -->
<!-- 								<option value="拳師犬">拳師犬</option> -->
<!-- 								<option value="威瑪犬">威瑪犬</option> -->
<!-- 								<option value="秋田犬">秋田犬</option> -->
<!-- 								<option value="拉不拉多">拉不拉多</option> -->
<!-- 								<option value="黃金獵犬">黃金獵犬</option> -->
<!-- 								<option value="大麥町犬">大麥町犬</option> -->
<!-- 								<option value="薩摩耶犬">薩摩耶犬</option> -->
<!-- 								<option value="尋血獵犬">尋血獵犬</option> -->
<!-- 								<option value="德國狼犬">德國狼犬</option> -->
<!-- 								<option value="馬士提夫">馬士提夫</option> -->
<!-- 								<option value="阿富汗獵犬">阿富汗獵犬</option> -->
<!-- 								<option value="蘇俄牧羊犬">蘇俄牧羊犬</option> -->
<!-- 								<option value="可麗牧羊犬">可麗牧羊犬</option> -->
<!-- 								<option value="愛爾蘭雪達犬">愛爾蘭雪達犬</option> -->
<!-- 								<option value="西伯利亞哈士奇">西伯利亞哈士奇</option> -->
<!-- 								<option value="阿拉斯加雪橇犬">阿拉斯加雪橇犬</option> -->
<!-- 								<option value="英國古代牧羊犬">英國古代牧羊犬</option> -->
<!-- 								<option value="大丹犬">大丹犬</option> -->
<!-- 								<option value="土佐犬">土佐犬</option> -->
<!-- 								<option value="西藏獒犬">西藏獒犬</option> -->
<!-- 								<option value="大白熊犬">大白熊犬</option> -->
<!-- 								<option value="聖伯納犬">聖伯納犬</option> -->
<!-- 								<option value="紐芬蘭犬">紐芬蘭犬</option> -->
<!-- 								<option value="伯恩山犬">伯恩山犬</option> -->
<!-- 								<option value="高加索山犬">高加索山犬</option> -->
<!-- 							</select>  -->
							<input type="hidden" value="" placeholder="missionstatus"
								name="missionstatus" /> 
							<input type="button"
								value="搜尋" id="fostercare_search"  class="btn btn-primary btn">

						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="container_foster">
			<div class="row">
				<div class="col-md-12">
					<div class="title-area_foster">
						<h2 class="title_foster">寄養</h2>
					</div>
				</div>
				<div class="col-md-12">
					<div class="our-team-content">
						<div class="row" id="test">
							<!-- Start single team member -->
<!-- 							<div class="col-md-3 col-sm-6 col-xs-12"> -->
<!-- 								<div class="single-team-member"> -->
<!-- 									<div class="team-member-img"> -->
<!-- 										<img src=" "> -->
<!-- 									</div> -->
<!-- 									<div class="team-member-name"> -->
<!-- 										<p></p> -->
<!-- 										<span>阿吉</span> -->
<!-- 									</div> -->
<!-- 									<p>可愛 親人</p> -->
<!-- 									<div class="team-member-link"> -->
<!-- 										<a href="#"><i class="fa fa-heart fa-2x foster_heart" -->
<!-- 											title="我想要領養"></i></a> <a href="#"><i -->
<!-- 											class="fa fa-dog fa-2x foster_dog" title="詳細資料"></i></a> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<c:forEach var="care" items="${allbean1}">
							<div class="col-md-3 col-sm-6 col-xs-12">
								<div class="single-team-member">
									<div class="team-member-img">
										<p style="display:none">${ care.fostercareCommissionid}</p>
										<img src="${care.picture} ">
									</div>
									<div class="team-member-name">
										<p >${care.variety}</p>
									</div>
									<p>${care.remark}</p>
									<div class="team-member-link">
										<a href="#" id="heart${care.petid}" data-toggle="hide" onclick="adoption(${care.petid})"
									data-target="#adoptionModal5"  ><i class="fa fa-heart fa-2x foster_heart"
											title="我想要領養"></i></a> <a href="#" id="dog${care.petid}" onclick="finddogdetail(${care.petid})" data-toggle="modal"
											data-target="#fostercareDogDetails"><i
											 class="fa fa-dog fa-2x foster_dog" title="詳細資料"></i></a>
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
	<div class="modal fade foster_table" id="adoptionModal5" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel10" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="foster_modal_content">
				<div class="modal-header">
					<i class="modal_title" id="exampleModalLabel10">領養申請表 ( 僅供領養者參考 )</i>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="adoption_form10">
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">收養者姓名 :</label>
							<span>${user.memberName}</span>
							<input class="adoption_name"id="hostName" value="${user.memberName}" type="hidden">
						</div>
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">您的職業 :</label>
							<select id="job" name="job" class="adoption_form_variety_select">
									<option>請選擇</option>
									<option value="軍公教人員 (公立學校教師)">軍公教人員 (公立學校教師)</option>
									<option value="民意代表、企業主管及經理人員">民意代表、企業主管及經理人員</option>
									<option value="專業人員(醫師、律師、建築師、會計師、私立學校教師…)">專業人員(醫師、律師、建築師、會計師、私立學校教師…)</option>
									<option value="技術員及助理專業人員">技術員及助理專業人員</option>
									<option value="事務工作人員">事務工作人員</option>
									<option value="服務工作人員及售貨員">服務工作人員及售貨員</option>
									<option value="農、林、漁、牧工作人員">農、林、漁、牧工作人員</option>
									<option value="生產有關工人、機械設備操作工及體力工">生產有關工人、機械設備操作工及體力工</option>
									<option value="家庭管理 (料理家務)">家庭管理 (料理家務)</option>
									<option value="未就業、待業中">未就業、待業中</option>
									<option value="退休人員">退休人員</option>
									<option value="學生">學生</option>								
							</select>
						</div>
						<div class=".form_group">
							<label for="message-text" class="col-form-label">有無飼養寵物經驗 :</label>
								<select id="experience" name="experience" class="adoption_form_variety_select">
									<option>請選擇</option>
									<option>無</option>
									<option>1年以下</option>
									<option>1年～3年</option>
									<option>3年～5年</option>
									<option>5年以上</option>								
								</select>
						</div>
						<div class=".form_group">
							<label for="recipient-name" class="col-form-label">有無收養寵物經驗 :</label>
							<span><input type="checkbox" name="pettime" value="yes">有</span>
							<span><input type="checkbox" name="pettime" value="no">無</span>
						</div>
						<input type="text" id="fuck"  name="petid" style=" display: none">
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">取消</button>
					<button type="button" class="btn btn-primary" id="adoption_send10">送出</button>
				</div>
			</div>
		</div>
	</div>
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
						<li>寄養日期：<div id=dogdetailstarttime></div></li>
						<li>結束日期：<div id=dogdetailendtime></div></li>
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
<!-- 					<button type="button" class="btn btn-primary" id="adoption_send11"  data-toggle="modal" -->
<!-- 									data-target="#adoptionModal5">我要領養</button> -->
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
		
		function adoption(petId){
			if('${user}'){
				$("#adoptionModal5").modal("show");
				$("#fuck").attr("value",petId);
			}else{
			
				Swal({
					  type: 'warning',
					  title: '請先登入會員',
					  text: 'Something went wrong!',
					  confirmButtonColor:"#FFA600",
					  showConfirmButton:false,
					})	
			}		
		}
		
		
		
		
		
		
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
		
		$("#adoption_send10").click(function(){
			var form = $("#adoption_form10").serialize();
			console.log(petId);
			$.ajax({
				url : "insertFostercareForm?" + form,
				type : "GET",
			}).done(function(response) {
				alert("成功")
				$("#adoptionModal").modal('hide');
				window.location.href= '/PetProject/fostercarecommission';
			})
		})

			$("#adoption_send11").click(function() {
				$("#fosterDogDetails").modal('hide');
			})
			
		function finddogdetail(id){
			console.log(id);
			$.ajax({
			url:"findcarePetId?id="+id,
			type : "GET",
			data:"JSON"
			}).done(function(responsedogdetail){
				var starttime=new Date(responsedogdetail.starttime).toLocaleDateString();
				var endtime=new Date(responsedogdetail.endtime).toLocaleDateString();
				$("#dogdetailname").text(responsedogdetail.memberName);
				$("#dogdetaildogname").text(responsedogdetail.petName);
				$("#dogdetailarea").text(responsedogdetail.area);
				$("#dogdetailvariety").text(responsedogdetail.variety);
				$("#dogdetailage").text(responsedogdetail.age);
				$("#dogdetailreason").text(responsedogdetail.reason);
				$("#dogdetailremark").text(responsedogdetail.remark);
				$("#dogdetailpicture").attr("src",responsedogdetail.picture);
				$("#dogdetailstarttime").text(starttime);
				$("#dogdetailendtime").text(endtime);
			})
			

		}
		
		
		
		function  findfuck(a) {
			
			$('#fuck').val(a)
		}
		
		
		function check(){
			if('${user}'){
				$("#application_fostercare").attr("data-toggle","modal");
				$("#application_fostercare").attr("data-target","#exampleModal5");
			}else{
				Swal({
					  type: 'warning',
					  title: '請先登入會員',
					  text: 'Something went wrong!',
					  confirmButtonColor:"#FFA600",
					  showConfirmButton:false,
					})	
			}
		}
		
		$('#fostercare_search').click(function() {
				$.ajax({
						data :{city : $('select[name=city1]').val()},
						url : "/PetProject/findarea",
						cache : false,
						async : false,
							}).done(function(Data){	
								console.log(Data)
								$('#test').html("")
								$.each( Data, function( index , value ) {
									$('#test').append(
											'<div class="col-md-3 col-sm-6 col-xs-12">'
											+'<div class="single-team-member">'
												+'<div class="team-member-img">'
													+'<p style="display:none">'+value.fostercareCommissionid+'</p>'
													+'<img src='+value.picture+'>'
												+'</div>'
												+'<div class="team-member-name">'
													+'<p >'+value.variety+'</p>'
												+'</div>'
												+'<p>'+value.remark+'</p>'
												+'<div class="team-member-link">'
													+'<a href="#" id="heart${care.petid}" data-toggle="hide" onclick="adoption('+value.petid+')"'
												+'data-target="#adoptionModal5"><i class="fa fa-heart fa-2x foster_heart"title="我想要領養"></i></a>'
												+'<a href="#" id="dog${care.petid}" onclick="finddogdetail('+value.petid+')" data-toggle="modal"'
														+'data-target="#fostercareDogDetails"><i class="fa fa-dog fa-2x foster_dog" title="詳細資料"></i></a>'
												+'</div>'
											+'</div>'
										+'</div>'
									)

								});
							})

		})
// 		$("#fostercare_search").click(function() {
// 			var form = $("#fostercare_search_form").serialize();
// 			console.log(form)
// 			$.ajax({
// 				url:"fostercare_search?"+form,
// 				type:"GET",		
//          }).done(function(response){
        	 
//          })
// 			window.location.href="fostercare_search?" + form;
// 		})
		
		
	</script>
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
	
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/7.33.1/sweetalert2.all.min.js"></script>

</body>
</html>