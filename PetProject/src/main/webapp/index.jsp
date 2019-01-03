<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zh-tw">
<head>
<title>HoPet</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css"> 
<link rel="stylesheet" href="css/slider.css"> 
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery.ui.totop.js"></script> 

<script src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.css" rel="stylesheet">
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'fade',
        pagination: true, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    })
});
$(window).load(function () {
    $('.carousel1').carouFredSel({
        auto: false,
        prev: '.prev',
        next: '.next',
        width: 960,
        items: {
            visible: {
                min: 3,
                max: 3
            },
            height: 'auto',
            width: 300,
        },
        responsive: true,
        scroll: 1,
        mousewheel: false,
        swipe: {
            onMouse: true,
            onTouch: true
        }
    });
});
jQuery(document).ready(function () {
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1">
<header>
  <div class="container_12">
    <div class="grid_12_1">
      <h1><a href="index.jsp"><img src="images/logo.png"alt=""></a> </h1>
      <div class="menu_block1">
        <nav>
          <ul class="sf-menu">
            <li><a href="">會員中心</a>
             <ul>
                <li><a href="">修改會員資料</a></li>
                 <li><a href="">搜尋好友</a></li>
              </ul>
              </li>
            <li><a href="hospitalmap.jsp">寵物生活館</a> </li>
            <li><a href="">寵物百科</a>
              <ul>
                <li><a href="dog.jsp">Dog</a></li>
                <li><a href="#">Cat</a></li>
              </ul>
            </li>
            <li><a href="">寄養&送養</a>
               <ul>
                <li><a href="#">寄養</a></li>
                <li><a href="#">送養</a></li>
              </ul>
            </li>
            <li><a href="">寵物旅遊</a></li>
            <li><a href="market.jsp">寵物商城</a>
            	<ul>
            		<li><a href="">買東西</a></li>
            		<li><a href="order.jsp">賣東西</a></li>
            	</ul>
	        </li>
            <li><a href="">寵物活動</a></li>
            </ul>

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
<div class="top_block">
  <div class="slider-relative">
    <div class="slider-block">
      <div class="slider">
        <ul class="items">
          <li><img src="images/slide.jpg" alt="">
            <div class="banner">They Need Your <span>Love</span> and <i>Care</i>
              <p>It is so easy to make them happy</p>
            </div>
          </li>
          <li><img src="images/slide1.jpg" alt="">
            <div class="banner">They Need Your <span>Love</span> and <i>Care</i>
              <p>It is so easy to make them happy</p>
            </div>
          </li>
          <li><img src="images/slide2.jpg" alt="">
            <div class="banner">They Need Your <span>Love</span> and <i>Care</i>
              <p>It is so easy to make them happy</p>
            </div>
          </li>
          <li><img src="images/slide3.jpg" alt="">
            <div class="banner">They Need Your <span>Love</span> and <i>Care</i>
              <p>It is so easy to make them happy</p>
            </div>
          </li>
        </ul>
      </div>
    </div>
  </div>
</div>
<div class="page1_block">
  <div class="container_12">
    <div class="grid_6">
      <h2>劉德安</h2>
      <br>
      <img src="images/page1_img5.jpg" alt="" class="img_inner fleft">
      <div class="extra_wrapper style1">
        <p class="text1"><a href="#">Click here</a> for more info about this free website template created by TemplateMonster.com </p>
        Hibh ullamcorper accumsan sem lectus ut sapien. Donec venenatis . </div>
      <div class="clear"></div>
      Praesent quis orci eget diam viverra consequat. Fusce sagittis quam in pulvinar sollicitudin velit velit cursus nibh ullamcorper accumsan sem lectus ut sapien. Donec venenatis posuere velit aty convallis neque ullamcorper quis. Integer posuere ipsum eu risus sollicitudin nec varius eratylo luctus. Fusce fringilla erat ac urna pe llentesque congue. Nunc fringilla diam sit amet adipi scing bibendum turpis velit feugiat urna et pharetra neque nisi ac nunc. Vivamus est quam dapibuslok. ..ullamco rper imperdiet nec euismod ut arcu. Nulla facilisi. Etiam mauris lorem pulvinar vel con sequat ut pretium ac erat. Morbi facilisis elit eu nisl blandit ac blandit enim faucibu. Praesent quis orci eget diam viverra consequat. Fusce sagittis.<br>
      <a href="#" class="btn">More</a> </div>
    <div class="grid_5 prefix_1">
      <h2 class="ic1">劉偉詩</h2>
      <ul class="list">
        <li> <span>
          <time datetime="2045-01-01">27<span>APR</span></time>
          </span>
          <div class="extra_wrapper">
            <div class="col1"><a href="#">Duis posuere consectetur pellentesqe;</a>
              <time datetime="2045-01-01">April 27.03.45</time>
            </div>
            Sed nisi turpis, pellentesque at ultrices in dapibus in magna. Nunc easi diam risus,placerat ut scelerisque suscipit eu ante. Nullam vitae dolor ullcper felises</div>
        </li>
        <li> <span class="cnt">
          <time datetime="2045-01-01">28<span>APR</span></time>
          </span>
          <div class="extra_wrapper">
            <div class="col1"><a href="#">Kuuis posuere consectetur pellentes;</a>
              <time datetime="2045-01-01">April 28.03.45</time>
            </div>
            Eed nisi turpis, pellentesque at ultrices in dapibus in magna. Nunc easi diam risulacerat ut scelerisque et suscipit eu ante. Nullam vitae dolor ullcper felises. </div>
        </li>
        <li> <span>
          <time datetime="2045-01-01">29<span>APR</span></time>
          </span>
          <div class="extra_wrapper">
            <div class="col1"><a href="#">Opuis posuere honsectetur pellentesyt;</a>
              <time datetime="2045-01-01">April 29.03.45</time>
            </div>
            Koed nisi turpis, pellentesque at ultrices in dapibus in magna. Nunc easi diam risujo placerat ut scelerisque et suscipit eu ante. Ullam vitae dolor ullcper felises. </div>
        </li>
      </ul>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="grid_12">
      <div class="socials"> <a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a> </div>
      <p>Pet Club &copy; 2045 | <a href="#">Privacy Policy</a> | Design by: <a href="http://www.templatemonster.com/">TemplateMonster.com</a></p>
    </div>
    <div class="clear"></div>
  </div>
</footer>


<!-- 	 登入  -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-labelledby="loginLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="loginLabel">請先登入</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<form action="">
				<div class="modal-body" style="margin: 25px">
					
					<p>
						<label for="account"> 帳號:</label> <br> <input type="text"
							id="account" required autocomplete="off" style="width:50%">
					</p>
					<p>
						<label for="pew"> 密碼:</label> <br> <input type="password"
							id="pew" required autocomplete="off" style="width:50%">
					</p>
				</div>
				<div class="modal-footer">
					<input type="reset" value="取消" class="btn btn-secondary"
						data-dismiss="modal"> <input type="submit" value="登入"
						class="btn btn-primary">

				</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>