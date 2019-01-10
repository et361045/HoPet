<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
 <title>多地標Google地圖</title>
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
<!--       <script type="text/javascript" -->
<!--      src="https://maps.googleapis.com/maps/api/js?key&AIzaSyBpZmGolfotLrG4xt6jVDhY87zi_vWWV1Y"> -->
<!-- 	</script> -->
	
	<script async defer
    src=<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=AIzaSyBLxDAKtcasbeNnSS4RAMAJqubXAxa6LiA"></script>>
    </script>
    <script>   
    

        var a = -1;
        $(function () {
        	
        	var latlng1=new google.maps.LatLng(25.0293159,121.5217353);//博愛醫院
            //設定地圖參數
            var mapOptions = {
                zoom: 16, //初始放大倍數
                center: latlng1, //中心點所在位置
                mapTypeId: google.maps.MapTypeId.ROADMAP //正常2D道路模式
            };
            var imageUrl = "assets/images/icons8-醫院-50.png"; //空字串就會使用預設圖示
            //在指定DOM元素中嵌入地圖
            var geocoder = new google.maps.Geocoder();
            var map = new google.maps.Map(
                document.getElementById("map_canvas"), mapOptions);    
            
            var address ='中正區杭州南路2段92號1樓';
			 geocoder.geocode({'address': address}, function(results, status) {
		          if (status == 'OK') {	 
		        	  map.setCenter(results[0].geometry.location);
		            new google.maps.Marker({
		              map: map,
		              position: results[0].geometry.location,
		              icon:imageUrl
		            });
		          } else {
		            alert('Geocode was not successful for the following reason: ' + status);
		          }
		        });
            $.ajax({
        			data: "GET",
        			url: "/PetProject/query",
        			dataType: "json",
        			success: function(json) {
        				console.log(json)

        			}
        		});

//   var infowindow = new google.maps.InfoWindow({
//     content: '<h1>博愛動物醫院</h1>'
//   });

//            marker.addListener('click',function(){
//         a = a * -1;
//         if(a > 0){
//          infowindow.open(map, marker);
//         }else{
//         infowindow.close();
//         }
//         });

        });
        
 </script>
</head>

<body >

<div class="content pt1">
  <div class="container_12">
     <div class="grid_6">
      <h2>Contact Info</h2>
      <br>
      <div class="map"  style="width: 500px; height: 500px; float: left">
        <figure class="img_inner" id="map_canvas">
          <iframe src="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=Brooklyn,+New+York,+NY,+United+States&amp;aq=0&amp;sll=37.0625,-95.677068&amp;sspn=61.282355,146.513672&amp;ie=UTF8&amp;hq=&amp;hnear=Brooklyn,+Kings,+New+York&amp;ll=40.649974,-73.950005&amp;spn=0.01628,0.025663&amp;z=14&amp;iwloc=A&amp;output=embed&"></iframe>
        </figure>
      </div>
		<div id="lat"></div>
		<div id="lng"></div>
     </div>
    </div>
  </div>

</body>
</html>