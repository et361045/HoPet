
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

<!-- member css -->

<link href="/PetProject/assets/css/member.css" rel="stylesheet">

<!-- Main Style -->
<link href="/PetProject/assets/css/memberstyle.css" rel="stylesheet">
<!-- login Style -->
<link href="/PetProject/assets/css/login/login.css" rel="stylesheet">
<!-- icon -->
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
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
						<c:if test="${user.checkSuccess == 0}">
							<c:out
								value='	<h2 class="code">請輸入信箱驗證碼</h2>
						<span class="line" style="width: 200px"></span>
						<p class="text">
							驗證碼:<input type="text" class="entercode" id="vcode"><input
								type="submit" id="send" value="發信" class=" btn btn-info"
								style="font-size: 18px;"><input type="submit" value="提交"
								class=" btn btn-success"
								style="font-size: 18px; margin-left: 15px" id="check">
						</p>'
								escapeXml="false" />
						</c:if>
					</div>
				</div>
				<div class="col-md-12">
					<div class="about-content">
						<div class="row">
							<div class="col-md-6">
								<div class="our-skill">
									<h2 class="code">個人資料</h2>




									<div class="our-skill-content">
										<p class="text">
											您的個人資料<br />(按鉛筆修改 打勾確定)
										</p>
										<label class="text">照片:</label> <br /> <br />
										<form method="POST" action="<c:url value='/memberpicture'/>"
											enctype="multipart/form-data" id="picture">
											<img id="memberpicture" src="${user.memberPicture}"
												width="150px" style="border: #8e8e8e solid thin;" /> <br />
											<br /> <label class="btn btn-light"
												style="font-family: 'cwTeXYen'; font-size: 18px"> <input
												id="upload_img" style="display: none;" type="file"
												name="file"
												accept=" image/gif,image/png,image/jpeg,image/jpg,image/bmp">
												<i class="fa fa-photo"></i> 選擇照片
											</label><input type="submit" value="上傳" class="btn btn-link"
												style="font-family: 'cwTeXYen'; font-size: 18px">
										</form>


										<form id="memberupdata" action="">
											<div class="form-group">
												<label class="text">信箱:</label> <input type="email"
													placeholder="${user.email}" class="form-control"
													title="請輸入信箱" name="email" readOnly="readonly">
											</div>

											<div class="form-group">
												<label class="text">密碼:</label> <input type="password"
													id="updatepassword" placeholder="**********"
													class="form-control" title="請輸入密碼" name="psw"
													readonly="readonly" value="${user.psw}"> <span
													id=checkpsw class="glyphicon glyphicon-ok"
													style="float: right;"></span> <span class="glyphicon"
													style="float: right;">&#x270f;</span>
											</div>


											<!-- 											<div class="form-group"> <label class="text">密碼:</label> -->
											<!-- 												<input type="password" id="checkpass" -->
											<!-- 													placeholder="checkpassword" class="form-control" -->
											<!-- 													title="與密碼相附"> -->
											<!-- 											</div> -->

											<div class="form-group">
												<label class="text">暱稱:</label> <input type="text"
													value="${user.memberName}" class="form-control"
													title="請輸入暱稱" name="memberName" readonly="readonly"
													id="memberName"> <span
													class="glyphicon glyphicon-ok" style="float: right;"></span>
												<span class="glyphicon" style="float: right;">&#x270f;</span>
											</div>
											<div class="form-group">
												<label class="text">地址:</label> <input type="text"
													value="${user.address}" class="form-control" title="請輸入地址"
													name="address" readonly="readonly" id="address"> <span
													class="glyphicon glyphicon-ok" style="float: right;"></span>
												<span class="glyphicon" style="float: right;">&#x270f;</span>
											</div>
											<div class="form-group">
												<label class="text">手機:</label> <input type="text"
													value="${user.memberPhone} " class="form-control"
													title="請輸入手機" name="memberPhone" readonly="readonly"
													id="memberPhone"> <span
													class="glyphicon glyphicon-ok" style="float: right;"></span>
												<span class="glyphicon" style="float: right;">&#x270f;</span>
											</div>
										</form>
									</div>
								</div>
							</div>
							<div class="col-md-6">
								<div class="why-choose-us">
									<h2 class="code">您的寵物資料</h2>


									<div class="panel-group why-choose-group" id="accordion">
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne" class="title"> Awesome Design
														Layout <span class="fa fa-minus-square"></span>
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
														of them accusamus labore sustainable VHS.Anim pariatur
														cliche reprehenderit, enim eiusmod high life accusamus
														terry richardson ad squid. 3 wolf moon officia aute, non
														cupidatat skateboard dolor brunch. Food truck quinoa
														nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt
														aliqua put a bird on it squid single-origin coffee nulla
														assumenda shoreditch et. Nihil anim keffiyeh helvetica,
														craft beer labore wes anderson cred nesciunt sapiente ea
														proident. Ad vegan excepteur butcher vice lomo. Leggings
														occaecat craft beer farm-to-table, raw denim aesthetic
														synth nesciunt you probably haven't heard of them
														accusamus labore sustainable VHS.</p>
												</div>
											</div>
										</div>
										<div class="panel panel-default ">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseTwo"> 寵物名子<span
														class="fa fa-plus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
                                                 <p style="display:none">petid</p>
													<img src="/PetProject/assets/images/22573c5d604bad1.jpg"
														width="100px" style="border: #8e8e8e solid thin;" />
													<br/><br/>
													<span class="text" style="margin-right:80px ">寵物大小:</span> <span class="text" style="margin-right:80px ">寵物品種:</span> <span class="text" >寵物年齡:</span>
													<br/><br/>
													<span class="text" style="font-size: 22px ;" > 備註:</span>
													<br/><br/>
													<span class="text"  >疫苗:</span><br/><br/>
													<span style="float: right;"><button class="btn btn-link"><i class="fas fa-trash-alt"></i></button><button class="btn btn-link"><i class="fas fa-pen"></i></button></span>
												</div>
											</div>
										</div>
										<div class="panel panel-default">
											<div class="panel-heading">
												<h4 class="panel-title">
													<a data-toggle="collapse" data-parent="#accordion"
														href="#collapseThree"> 新增寵物 <span
														class="fa fa-plus-square"></span>
													</a>
												</h4>
											</div>
											<div id="collapseThree" class="panel-collapse collapse">
												<div class="panel-body">
													<form method="POST" action="<c:url value='/insertpet'/>"
														enctype="multipart/form-data" id="petpicturefrom">

														<img id="petpicture"
															src="/PetProject/assets/images/22573c5d604bad1.jpg"
															width="100px" style="border: #8e8e8e solid thin;" /> <br />
														<label class="btn btn-light"
															style="font-family: 'cwTeXYen'; font-size: 18px">
															<input id="insertpetpicture" type="file" name="file"
															style="display: none;"
															accept=" image/gif,image/png,image/jpeg,image/jpg,image/bmp">
															<i class="fa fa-photo"></i>選擇照片
														</label><br /> <label class="text">寵物名子:</label><br /> <input
															type="text" name="petName" class="form-control">
														<label class="text">寵物大小:</label><br /> <input
															type="text" name="petSize" class="form-control">
														<label class="text">寵物品種:</label><br />
														<!-- 															<input type="text" name="petVariety" class="form-control">  -->
														<select id="termType" name="petVariety"
															class="form-control">
															<option value="">請選擇</option>
															<option value="柴犬">柴犬</option>
															<option value="巴哥">巴哥</option>
															<option value="貴賓犬">貴賓犬</option>
															<option value="吉娃娃">吉娃娃</option>
															<option value="紅貴賓">紅貴賓</option>
															<option value="絲毛梗">絲毛梗</option>
															<option value="北京犬">北京犬</option>
															<option value="拉薩犬">拉薩犬</option>
															<option value="博美犬">博美犬</option>
															<option value="比熊犬">比熊犬</option>
															<option value="約克夏">約克夏</option>
															<option value="日本狆">日本狆</option>
															<option value="西施犬">西施犬</option>
															<option value="雪納瑞">雪納瑞</option>
															<option value="蝴蝶犬">蝴蝶犬</option>
															<option value="米格魯">米格魯</option>
															<option value="波士頓梗">波士頓梗</option>
															<option value="威爾斯梗">威爾斯梗</option>
															<option value="馬爾濟斯">馬爾濟斯</option>
															<option value="長毛臘腸犬">長毛臘腸犬</option>
															<option value="傑克羅素梗">傑克羅素梗</option>
															<option value="單第丁蒙梗">單第丁蒙梗</option>
															<option value="中國冠毛犬">中國冠毛犬</option>
															<option value="西部高地白梗">西部高地白梗</option>
															<option value="查理王長毛獵犬">查理王長毛獵犬</option>
															<option value="迷你杜賓">迷你杜賓</option>
															<option value="巴吉度">巴吉度</option>
															<option value="鬆獅犬">鬆獅犬</option>
															<option value="柯基犬">柯基犬</option>
															<option value="牛頭梗">牛頭梗</option>
															<option value="沙皮犬">沙皮犬</option>
															<option value="惠比特犬">惠比特犬</option>
															<option value="貝林登梗">貝林登梗</option>
															<option value="蘇格蘭梗">蘇格蘭梗</option>
															<option value="英國鬥牛犬">英國鬥牛犬</option>
															<option value="法國鬥牛犬">法國鬥牛犬</option>
															<option value="英國可卡獵犬">英國可卡獵犬</option>
															<option value="美國可卡獵犬">美國可卡獵犬</option>
															<option value="喜樂蒂牧羊犬">喜樂蒂牧羊犬</option>
															<option value="杜賓犬">杜賓犬</option>
															<option value="挪威納">挪威納</option>
															<option value="拳師犬">拳師犬</option>
															<option value="威瑪犬">威瑪犬</option>
															<option value="秋田犬">秋田犬</option>
															<option value="拉不拉多">拉不拉多</option>
															<option value="黃金獵犬">黃金獵犬</option>
															<option value="大麥町犬">大麥町犬</option>
															<option value="薩摩耶犬">薩摩耶犬</option>
															<option value="尋血獵犬">尋血獵犬</option>
															<option value="德國狼犬">德國狼犬</option>
															<option value="馬士提夫">馬士提夫</option>
															<option value="阿富汗獵犬">阿富汗獵犬</option>
															<option value="蘇俄牧羊犬">蘇俄牧羊犬</option>
															<option value="可麗牧羊犬">可麗牧羊犬</option>
															<option value="愛爾蘭雪達犬">愛爾蘭雪達犬</option>
															<option value="西伯利亞哈士奇">西伯利亞哈士奇</option>
															<option value="阿拉斯加雪橇犬">阿拉斯加雪橇犬</option>
															<option value="英國古代牧羊犬">英國古代牧羊犬</option>
															<option value="大丹犬">大丹犬</option>
															<option value="土佐犬">土佐犬</option>
															<option value="西藏獒犬">西藏獒犬</option>
															<option value="大白熊犬">大白熊犬</option>
															<option value="聖伯納犬">聖伯納犬</option>
															<option value="紐芬蘭犬">紐芬蘭犬</option>
															<option value="伯恩山犬">伯恩山犬</option>
															<option value="高加索山犬">高加索山犬</option>
														</select> <label class="text">寵物年齡:</label><br /> <input
															type="text" name="age" class="form-control"> <label
															class="text">寵物特癥:</label><br /> <input type="text"
															name="Remark" class="form-control"> <label
															class="text">寵物疫苗:</label><br /> <input type="text"
															name="vaccine" class="form-control"><br /><label
															class="text">備註:</label><br /><input type="text"
															name="petRemarks" class="form-control"><br /> <input
															type="submit" value="送出" class="btn btn-primary "
															style="font-family: 'cwTeXYen'; font-size: 18px">
														<input type="reset" value="清除" class="btn btn-default"
															style="font-family: 'cwTeXYen'; font-size: 18px">
													</form>
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

	<!-- updatemember js -->
	<script type="text/javascript" src="/PetProject/assets/js/update.js"></script>

	<!-- alert -->

	<script
		src="//cdnjs.cloudflare.com/ajax/libs/alertify.js/0.3.10/alertify.min.js"></script>

</body>
</html>