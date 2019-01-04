<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>寄養寵物</title>
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<script src="js/jquery.js"></script>
<script src="js/forms.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
jQuery(document).ready(function () {
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
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
</head>
<body>
<header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="images/logo.png"alt=""></a> </h1>
      <div class="menu_block">
        <nav>
          <ul class="sf-menu">
            <li><a href="">會員</a></li>
            <li><a href="http://www.i-furkid.com/LifeData/Store_Search.aspx?CID=7">寵生活</a> </li>
            <li><a href="">寵百科</a>
              <ul>
                <li><a href="Dog.html">Dog</a></li>
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

<div class="content pt1">
  <div class="container_12" style="text-align:center">
<!--     <div class="grid_6"> -->
<h2></h2>
      <h2>寄養日期 結束日期</h2>
      <br>
      <div class="map">
        <span>
        <input type="date" id="start" value="" name="trip-start" min="2018-01-01" max="2050-12-31">
    </span>
    <span>
        <input type="date" id="end" name="trip-end" min="2018-01-01" max="2050-12-31">
    </span>
    <p class="st1" id="idp"></p>
    事由:
    <input type="text" size="50px" />
    <div style="padding:20px">
        <input type="button" value="確認送出">
    </div>
      </div>
<!--     </div> -->
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





<!-- <p>寄養日期 結束日期</p> -->
<!--     <span> -->
<!--         <input type="date" id="start" value="" name="trip-start" min="2018-01-01" max="2050-12-31"> -->
<!--     </span> -->
<!--     <span> -->
<!--         <input type="date" id="end" name="trip-end" min="2018-01-01" max="2050-12-31"> -->
<!--     </span> -->
<!--     <p class="st1" id="idp"></p> -->
<!--     事由: -->
<!--     <input type="text" size="50px" /> -->
<!--     <div> -->
<!--         <input type="button" value="確認送出"> -->
<!--     </div> -->
</body>
</html>