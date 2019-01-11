<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Contacts</title>
<meta charset="utf-8">
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
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->

  <script src='http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.7.2.js'></script>   
    <script src="https://maps.google.com/maps/api/js?sensor=false"></script>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <meta charset="utf-8">
    
    <style>
        body,input { font-size: 9pt; }
        html { height: 100% }  
        body { height: 100%; margin: 0px; padding: 0px }  
        #map_canvas { height: 100% }        
    </style>
     <!-- <script type="text/javascript"
     src="https://maps.googleapis.com/maps/api/js?key&AIzaSyBpZmGolfotLrG4xt6jVDhY87zi_vWWV1Y">
   </script> -->
    
    <script>
        $(function () {
            
            var latlng = new google.maps.LatLng(25.0256226,121.5340202,17);
        	var latlng2 = new google.maps.LatLng(25.0483758,121.5444377,17);
        	var latlng3 = new google.maps.LatLng(25.0705581,121.5901597,17);
        	var latlng4 = new google.maps.LatLng(25.079591,121.5427499,17);
        	var latlng5 = new google.maps.LatLng(25.045943,121.5017833,17);
        	var latlng6 = new google.maps.LatLng(25.0674022,121.523676,17);
        	var latlng7 = new google.maps.LatLng(25.030877,121.5549353,17);
        	var latlng8 = new google.maps.LatLng(25.0576276,121.5217003,17);
        	var latlng9 = new google.maps.LatLng(25.0834684,121.5816151,16);
        	var latlng10 = new google.maps.LatLng(25.118797,121.5270423,17);
        	var latlng11 = new google.maps.LatLng(23.4857501,120.0843006,7);
        	var latlng12 = new google.maps.LatLng(24.9881626,121.5665122,17);
        	var latlng13 = new google.maps.LatLng(25.1340726,121.49858,17);
        	var latlng14 = new google.maps.LatLng(25.028117,121.5541138,17);
        	var latlng15 = new google.maps.LatLng(25.022751,121.5240013,17);
            //設定地圖參數
            var mapOptions = {
                zoom: 16, //初始放大倍數
                center: latlng, //中心點所在位置
                mapTypeId: google.maps.MapTypeId.ROADMAP //正常2D道路模式
            };
            
            //變更圖示
            var imageUrl1 = "images/Storemap01.png";  //旅館
           
            var imageUrl2 = "images/Storemap02.png";  //精品店
            
            var imageUrl3 = "images/Storemap03.png";  //美容店
            
            var imageUrl4 = "images/Storemap04.png";  //生活館

            //在指定DOM元素中嵌入地圖
            var map = new google.maps.Map(
                document.getElementById("map_canvas"), mapOptions);
            //加入標示點(Marker)
            var marker = new google.maps.Marker({
                position: latlng, //經緯度
                title: "北歐寵物旅館", //顯示文字
                icon: imageUrl1, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker2 = new google.maps.Marker({
                position: latlng2, //經緯度
                title: "very旺寵物精品旅館", //顯示文字
                icon: imageUrl1, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker3 = new google.maps.Marker({
                position: latlng3, //經緯度
                title: "米雅寵物美容精品店", //顯示文字
                icon: imageUrl2, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker4 = new google.maps.Marker({
                position: latlng4, //經緯度
                title: "啵好寵物生活館", //顯示文字
                icon: imageUrl4, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker5 = new google.maps.Marker({
                position: latlng5, //經緯度
                title: "順生寵物店", //顯示文字
                icon: imageUrl1, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker6 = new google.maps.Marker({
                position: latlng6, //經緯度
                title: "哈利寵物精緻美容", //顯示文字
                icon: imageUrl3, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker7 = new google.maps.Marker({
                position: latlng7, //經緯度
                title: "維樂寵物美容店", //顯示文字
                icon: imageUrl3, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker8 = new google.maps.Marker({
                position: latlng8, //經緯度
                title: "Wang's Beauty旺城寵物精品美容林森店", //顯示文字
                icon: imageUrl2, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker9 = new google.maps.Marker({
                position: latlng9, //經緯度
                title: "黑鼻子寵物旅館", //顯示文字
                icon: imageUrl1, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker10 = new google.maps.Marker({
                position: latlng10, //經緯度
                title: "岱哥寵物精品", //顯示文字
                icon: imageUrl2, //圖片
                map: map //指定要放置的地圖對象
            });
 			var marker11 = new google.maps.Marker({
                position: latlng11, //經緯度
                title: "好時光寵物旅館", //顯示文字
                icon: imageUrl1, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker12 = new google.maps.Marker({
                position: latlng12, //經緯度
                title: "Lovely Dog 樂福犬寵物生活館", //顯示文字
                icon: imageUrl4, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker13 = new google.maps.Marker({
                position: latlng13, //經緯度
                title: "狗崽子寵物沙龍", //顯示文字
                icon: imageUrl3, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker14 = new google.maps.Marker({
                position: latlng14, //經緯度
                title: "禮來寵物生活館", //顯示文字
                icon: imageUrl4, //圖片
                map: map //指定要放置的地圖對象
            });
       		var marker15 = new google.maps.Marker({
                position: latlng15, //經緯度
                title: "多俐寵物用品坊", //顯示文字
                icon: imageUrl2, //圖片
                map: map //指定要放置的地圖對象
            });
        });
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
  <div class="container_12">
<!--     <div class="grid_6"> -->
      <h2>Contact Info</h2>
      <br>
      <div class="map">
        <figure class="img_inner" id="map_canvas">
          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>
        </figure>
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
</body>
</html>