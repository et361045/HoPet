<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Dog Encyclopedia</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.carouFredSel-6.1.0-packed.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
	$(window).load(function() {
		$('.slider')._TMS({
			show : 0,
			pauseOnHover : false,
			prevBu : '.prev',
			nextBu : '.next',
			playBu : false,
			duration : 800,
			preset : 'fade',
			pagination : true, //'.pagination',true,'<ul></ul>'
			pagNums : false,
			slideshow : 8000,
			numStatus : false,
			banners : true,
			waitBannerAnimation : false,
			progressBar : false
		})
	});
	$(window).load(function() {
		$('.carousel1').carouFredSel({
			auto : false,
			prev : '.prev',
			next : '.next',
			width : 960,
			items : {
				visible : {
					min : 3,
					max : 3
				},
				height : 'auto',
				width : 300,
			},
			responsive : true,
			scroll : 1,
			mousewheel : false,
			swipe : {
				onMouse : true,
				onTouch : true
			}
		});
	});
	jQuery(document).ready(function() {
		$().UItoTop({
			easingType : 'easeOutQuart'
		});
	});
</script>
</head>
<body class="page1">
<header>
  <div class="container_12">
    <div class="grid_12_1">
      <h1><a href="index.jsp"><img src="images/logo.png"alt=""></a> </h1>
      <div class="menu_block1">
        <nav>
          <ul class="sf-menu">
            <li><a href="">會員</a></li>
            <li><a href="">寵生活</a> </li>
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
            <li><a href="market.jsp">商城</a></li>
            <li><a href="">活動</a></li>
            </ul>

        </nav>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
     <div class="menu_block2">
        <ul class="sf-menu">
           <li><a href="signin.jsp">註冊</a></li>
           <li><a href="signin.jsp">登入</a></li>
        </ul>    
     </div>
  </div>
</header>
	<div class="content_dog">
		<div class="container_12">
			<table>
				<tbody>
					<tr>
						<h2 class="dog_h2">小型犬</h2>
						<img src="images/footprint.png" width="52" height="52" border="0">
					</tr>
					<tr>
						<td bgcolor="#FFFFFF" class="wiki_title_memo  t3"><ul>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W9"
									title="柴犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/10.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=9" title="柴犬">柴犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W12" title="巴哥"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/13.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=12" title="巴哥">巴哥</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W2"
									title="貴賓犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/2.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=2" title="貴賓犬">貴賓犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W18" title="吉娃娃"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/19.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=18" title="吉娃娃">吉娃娃</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W63" title="紅貴賓"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/3.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=63" title="紅貴賓">紅貴賓</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W3"
									title="絲毛梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/4.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=3" title="絲毛梗">絲毛梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W19" title="北京犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/20.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=19" title="北京犬">北京犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W14" title="拉薩犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/15.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=14" title="拉薩犬">拉薩犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W4"
									title="博美犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/5.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=4" title="博美犬">博美犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W20" title="比熊犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/21.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=20" title="比熊犬">比熊犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W67" title="約克夏"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/67.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=67" title="約克夏">約克夏</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W21" title="日本狆"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/22.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=21" title="日本狆">日本狆</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W16" title="西施犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/17.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=16" title="西施犬">西施犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W6"
									title="雪納瑞"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/7.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=6" title="雪納瑞">雪納瑞</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W1"
									title="蝴蝶犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/1.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=1" title="蝴蝶犬">蝴蝶犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W17" title="米格魯"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/18.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=17" title="米格魯">米格魯</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W13" title="波士頓梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/14.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=13" title="波士頓梗">波士頓梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W11" title="威爾斯梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/12.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=11" title="威爾斯梗">威爾斯梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W7"
									title="瑪爾濟斯"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/8.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=7" title="瑪爾濟斯">瑪爾濟斯</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W66" title="長毛臘腸犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/66.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=66" title="長毛臘腸犬">長毛臘腸犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W5"
									title="傑克羅素梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/6.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=5" title="傑克羅素梗">傑克羅素梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W22" title="丹第丁蒙梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/23.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=22" title="丹第丁蒙梗">丹第丁蒙梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W23" title="中國冠毛犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/24.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=23" title="中國冠毛犬">中國冠毛犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W15" title="西部高地白梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/16.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=15" title="西部高地白梗">西部高地白梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W10" title="查理王長毛獵犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/11.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=10" title="查理王長毛獵犬">查理王長毛獵犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a href="W8"
									title="迷你品(迷你杜賓)"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/9.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=8" title="迷你品(迷你杜賓)">迷你品(迷你杜賓)</a></li>
							</ul></td>
					</tr>
				</tbody>
			</table>
			<table>
				<tbody>
					<tr>
						<h2 class="dog_h2">中型犬</h2>
						<img src="images/footprint.png" width="52" height="52" border="0">
					</tr>
					<tr>
						<td bgcolor="#FFFFFF" class="wiki_title_memo  t3"><ul>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W35" title="巴吉度"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/36.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=35" title="巴吉度">巴吉度</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W26" title="鬆獅犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/27.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=26" title="鬆獅犬">鬆獅犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W64" title="柯基犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/65.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=64" title="柯基犬">柯基犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W27" title="牛頭梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/28.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=27" title="牛頭梗">牛頭梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W32" title="沙皮犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/33.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=32" title="沙皮犬">沙皮犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W28" title="惠比特犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/64.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=28" title="惠比特犬">惠比特犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W24" title="貝林登梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/25.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=24" title="貝林登梗">貝林登梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W25" title="蘇格蘭梗"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/26.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=25" title="蘇格蘭梗">蘇格蘭梗</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W28" title="惠比特犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/29.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=28" title="惠比特犬">惠比特犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W30" title="英國鬥牛犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/31.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=30" title="英國鬥牛犬">英國鬥牛犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W31" title="法國鬥牛犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/32.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=31" title="法國鬥牛犬">法國鬥牛犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W33" title="英國可卡獵犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/34.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=33" title="英國可卡獵犬">英國可卡獵犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W34" title="美國可卡獵犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/35.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=34" title="美國可卡獵犬">美國可卡獵犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W29" title="喜樂蒂牧羊犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/30.png"
										"="" width="112" height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=29" title="喜樂蒂牧羊犬">喜樂蒂牧羊犬</a></li>
							</ul></td>
					</tr>
				</tbody>
			</table>
			<table>
				<tbody>
					<tr>
						<h2 class="dog_h2">大型犬</h2>
						<img src="images/footprint.png" width="52" height="52" border="0">
					</tr>
					<tr>
						<td bgcolor="#FFFFFF" class="wiki_title_memo  t3"><ul>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W52" title="杜賓犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/53.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=52" title="杜賓犬">杜賓犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W42" title="挪威納"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/43.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=42" title="挪威納">挪威納</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W43" title="拳師犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/44.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=43" title="拳師犬">拳師犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W38" title="威瑪犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/39.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=38" title="威瑪犬">威瑪犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W54" title="秋田犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/55.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=54" title="秋田犬">秋田犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W41" title="黃金獵犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/42.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=41" title="黃金獵犬">黃金獵犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W36" title="大麥町犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/37.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=36" title="大麥町犬">大麥町犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W53" title="薩摩耶犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/54.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=53" title="薩摩耶犬">薩摩耶犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W48" title="尋血獵犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/49.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=48" title="尋血獵犬">尋血獵犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W39" title="德國狼犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/40.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=39" title="德國狼犬">德國狼犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W50" title="馬士提夫"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/51.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=50" title="馬士提夫">馬士提夫</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W51" title="拉不拉多"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/52.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=51" title="拉不拉多">拉不拉多</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W47" title="阿富汗獵犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/48.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=47" title="阿富汗獵犬">阿富汗獵犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W37" title="蘇俄牧羊犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/38.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=37" title="蘇俄牧羊犬">蘇俄牧羊犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W45" title="可麗牧羊犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/46.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=45" title="可麗牧羊犬">可麗牧羊犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W40" title="愛爾蘭雪達犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/41.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=40" title="愛爾蘭雪達犬">愛爾蘭雪達犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W46" title="西伯利亞哈士奇"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/47.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=46" title="西伯利亞哈士奇">西伯利亞哈士奇</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W49" title="阿拉斯加雪橇犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/50.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=49" title="阿拉斯加雪橇犬">阿拉斯加雪橇犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W44" title="英國古代牧羊犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/45.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=44" title="英國古代牧羊犬">英國古代牧羊犬</a></li>
							</ul></td>
					</tr>
				</tbody>
			</table>
			<table>
				<tbody>
					<tr>
						<h2 class="dog_h2">超大型犬</h2>
						<img src="images/footprint.png" width="52" height="52" border="0">
					</tr>
					<tr>
						<td bgcolor="#FFFFFF" class="wiki_title_memo  t3"><ul>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W61" title="大丹犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/62.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=61" title="大丹犬">大丹犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W62" title="土佐犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/63.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=62" title="土佐犬">土佐犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W60" title="大白熊犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/61.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=60" title="大白熊犬">大白熊犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W55" title="聖伯納犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/56.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=55" title="聖伯納犬">聖伯納犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W57" title="紐芬蘭犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/58.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=57" title="紐芬蘭犬">紐芬蘭犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W58" title="伯恩山犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/59.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=58" title="伯恩山犬">伯恩山犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W59" title="西藏獒犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/60.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=59" title="西藏獒犬">西藏獒犬</a></li>
								<li class="dog_li" onmouseout="this.style.background='#ffffff'"
									onmousemove="this.style.background='#EEF7FF'"><a
									href="W56" title="高加索山犬"><img
										src="https://a.34cimg.com/pic/wiki/dog-s/57.png" width="112"
										height="112" border="0"></a><a
									href="yan.php?yan=Wiki_View&amp;id=56" title="高加索山犬">高加索山犬</a></li>
							</ul></td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<footer>
		<div class="container_12">
			<div class="grid_12">
				<div class="socials">
					<a href="#"></a> <a href="#"></a> <a href="#"></a> <a href="#"></a>
				</div>
				<p>
					Pet Club &copy; 2045 | <a href="#">Privacy Policy</a> | Design by:
					<a href="http://www.templatemonster.com/">TemplateMonster.com</a>
				</p>
			</div>
			<div class="clear"></div>
		</div>
	</footer>
</body>
</html>