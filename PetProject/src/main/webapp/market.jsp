<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-TW">
<head>
<title>Pet Club | Contacts</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<link rel="stylesheet" href="css/market.css">
<script src="js/jquery.js"></script>
<script src="js/forms.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>

</head>
<body>
	<header>
	  <div class="container_12">
	    <div class="grid_12">
	      <h1><a href="index.jsp"><img src="images/logo.png"alt=""></a> </h1>
	      <div class="menu_block">
	        <nav>
	          <ul class="sf-menu">
	            <li><a href="">會員</a></li>
	            <li><a href="http://www.i-furkid.com/LifeData/Store_Search.aspx?CID=7">寵生活</a> </li>
	            <li><a href="">寵百科</a>
	              <ul>
	                <li><a href="dog.jsp">Dog</a></li>
	                <li><a href="#">Cat</a></li>
	              </ul>
	            </li>
	            <li><a href="">寵 寄&送養</a>
	               <ul>
	                <li><a href="#">寄養</a></li>
	                <li><a href="#">送養</a></li>
	              </ul>
	            </li>
	            <li><a href="">寵旅遊</a></li>
	            <li><a href="market.jsp">商城</a>
	            	<ul>
	            		<li><a href="">買東西</a></li>
	            		<li><a href="order.jsp">賣東西</a></li>
	            	</ul>
	            </li>
	            <li><a href="">活動</a></li>
	        </nav>
	        <div class="clear"></div>
	      </div>
	      <div class="clear"></div>
	    </div>
	     <div class="menu_block2">
	        <ul class="sf-menu" style="margin-bottom: auto">
	           <li><a href="signin.jsp">註冊</a></li>
	           <li><a href="" data-toggle="modal"
			data-target="#login">登入</a></li>
	        </ul>    
     	</div>
	  </div>
	</header>
	
	<nav class="navbar navbar-default mar0pad0" style="border-radius:0;">
		<div class="container-fluid bw_wmid2" style="height:50px">
			<div class="collapse navbar-collapse text-left" id="" style="padding: 0; margin: 0; height:50px;">
				<div class="row mar0pad0" style="font-size: 14px; line-height: 1.42857143; height:50px;">
					<div class="col-xs-7 col-md-7 col-lg-7 mar0pad0">
						<div class="input-group search_padtop" style="height:40px;">
							<div class="search_bor mar0pad0">
<!-- 								<span class="input-group-addon mar0pad0"> -->
									<input type="text" class="inputkeyword input_border0" id="" name="search" value 
									style="border:1px solid #eee;" maxlength="50" placeholder="搜尋">
<!-- 								</span> -->
							</div>
							<span class="input-group-addon mar0pad0 form_dropdowns_btn">
									<button type="submit" class="btn colorwhitebg searchicon" onclick>
										<i>	
											
										</i>
									</button>
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</nav>
	

	<footer>
	  <div class="container_12">
	    <div class="grid_12">
	      <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
	      <p>Pet Club &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a></p>
	    </div>
	    <div class="clear"></div>
	  </div>
	</footer>
</body>
</html>