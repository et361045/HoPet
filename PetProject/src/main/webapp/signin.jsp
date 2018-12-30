<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Pet Club | Contacts</title>

<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<!-- <script src="js/jquery.js"></script> -->
<!-- <script src="js/forms.js"></script> -->
<!-- <script src="js/jquery-migrate-1.1.1.js"></script> -->
<!-- <script src="js/superfish.js"></script> -->
<!-- <script src="js/jquery.equalheights.js"></script> -->
<!-- <script src="js/jquery.easing.1.3.js"></script> -->
<!-- <script src="js/jquery.ui.totop.js"></script> -->

<script>
	jQuery(document).ready(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->

<script src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.js'></script>
<script src="https://maps.google.com/maps/api/js?sensor=false"></script>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<meta charset="utf-8">

<style>
body, input {
	font-size: 9pt;
}

html {
	height: 100%
}

body {
	height: 100%;
}

#map_canvas {
	height: 100%
}
</style>
<link rel="stylesheet" type="text/css" href="css\login\login.css">




</head>
<body>
	<header>
		<div class="container_12">
			<div class="grid_12">
				<h1>
					<a href="index.html"><img src="images/logo.png" alt=""></a>
				</h1>
				<div class="menu_block">
					<nav>
						<ul class="sf-menu">
							<li><a href="">會員</a></li>
							<li><a
								href="http://www.i-furkid.com/LifeData/Store_Search.aspx?CID=7">寵生活</a>
							</li>
							<li><a href="">寵百科</a>
								<ul>
									<li><a href="Dog.html">Dog</a></li>
									<li><a href="#">Cat</a></li>
								</ul></li>
							<li><a href="">寵 寄&送養</a>
								<ul>
									<li><a href="#">寄養</a></li>
									<li><a href="#">送養</a></li>
								</ul></li>
							<li><a href="">寵旅遊</a></li>
							<li><a href="">商城</a></li>
							<li><a href="">活動</a></li>
					</nav>
					<div class="clear"></div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="menu_block1">
				<ul class="sf-menu">
					<li><a href="">登入</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- LOGIN -->
<body>
	<div class="page1_block">
		<div class="container_12">
			<div class="View">
			<div class="cho">
            <legend>第一步</legend>
            <p>註冊會員</p>
           </div>
            <br>
              <legend>第二步</legend>
            <p>進入信箱驗證</p>
            <br>
              <legend>第三步</legend>
            <p>盡情享受HoPet</p>
            <br>
			</div>
			<div class="login">
				<fieldset>
					<legend>加入會員</legend>


					<form action="#" method="post">
						<br>
						<p>
							<label for="name"> 暱稱:</label> <br> <input type="text"
								id="name">
						</p>
						<p>
							<label for="account"> 帳號:</label> <br> <input type="text"
								id="account" required autocomplete="off" autofocus
								placeholder="電子郵件信箱">
						</p>
						<label for="pew"> 密碼:</label> <br> <input type="password"
							id="pew" required autocomplete="off" autofocus
							placeholder="password" class="password"
							style="padding: 5px 15px; border: 2px black solid; cursor: pointer; -webkit-border-radius: 5px; border-radius: 5px; font-size: 16px; font-family: 'cwTeXYen', sans-serif; background: #d1e9e9; border-style: dashed; border-width: 3px; border-color: #b3d9d9; outline: none; width: 8cm; height: 20px">
						<p style="color: #ff9797; font-size: 16px">(至少8字且必須包含英文大小寫、數字)</p>

						<label for="checkpew"> 確認密碼:</label> <br> <input
							type="password" id="checkpew" required autocomplete="off"
							autofocus placeholder="checkpassword"
							style="padding: 5px 15px; border: 2px black solid; cursor: pointer; -webkit-border-radius: 5px; border-radius: 5px; font-size: 16px; font-family: 'cwTeXYen', sans-serif; background: #d1e9e9; border-style: dashed; border-width: 3px; border-color: #b3d9d9; outline: none; width: 8cm; height: 20px">
						
						<p style="color: #ff9797; font-size: 16px">(必須完全與密碼相同)</p>
						<p>
							<label for="phone"> 手機號碼:</label> <br> <input type="text"
								id="phone" autofocus placeholder="09xxxxxxxx">
						</p>

						<p>
							<label for="address"> 地址:</label> <br> <input type="text"
								id="address" autofocus placeholder="XX市XX區XX路XX">
						</p>
						<input type="submit" value="註冊" class="button" > 
						<input type="reset"	value="取消" class="button" style="margin-left :20px" >
							
					</form>
				</fieldset>
			</div>
		</div>
	</div>

</body>




<footer>
	<div class="container_12">
		<div class="grid_12">
			<div class="socials">
				<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a>
			</div>
			<p>
				Pet Club &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a
					href="http://www.templatemonster.com/">TemplateMonster.com</a>
			</p>
		</div>
		<div class="clear"></div>
	</div>
</footer>
</body>
</html>