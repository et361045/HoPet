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
<link rel="stylesheet" href="css/order.css">
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
	            <li><a href="market.jsp">商城</a>
	            	<ul>
	            		<li><a href="">買東西</a></li>
	            		<li><a href="order.jsp">賣東西</a></li>
	            	</ul></li>
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

	<div class="bd">
			<table class="table">
				<thead>
					<tr>
						<td>
							<div>
								<input type="checkbox" id="check_all_checkbox">
							</div>
						</td>
						<td>訂單編號/買家</td>
						<td>結帳時間</td>
						<td>商品名稱 / 商品編號 </td>
						<td>數量</td>
						<td>結帳總金額</td>
						<td>付款方式</td>
						<td>訂單管理</td>
					</tr>
				</thead>	
			</table>
	
		<div class="bottom-wrapper">
			<div class="function">
				<input type="button" value="金額確認">
				<input type="button" value="取消交易">
			</div>
			<div class="wrapper-content">
				<a href="">TOP</a>
			</div>
		</div>
		
		<div id="" class="mybid-pagination">
			<ul class="page-link-list">
				<li class="prev current">
					<a href="">上一頁</a>
				</li>
				<li class="prev-10 disable">
					<a href="">上10頁</a>
				</li>
				<li class="page-to active">
					<a href="">1</a>
				</li>
				<li class="next-10 disable">
					<a href="">下10頁</a>
				</li>
				<li class="next current">
					<a href="">下一頁</a>
				</li>
			</ul>
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

