<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel=stylesheet type="text/css" href="css\fostercare.css">
<link rel=stylesheet type="text/css" href="css\fostercare2.css">
<link rel=stylesheet type="text/css" href="css\fostercare3.css">
<link rel=stylesheet type="text/css" href="css\fostercare4.css">

<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/form.css">
<link rel=stylesheet type="text/css" href="css\fostercare5.css">
<style>
.btn_More {
	font-size: 122.8%;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	padding: 0 3em;
	height: 2.5em;
	margin-left: 20px;
	cursor: pointer;
	background-color: #dcdcdc;
	color: #009e96;
}

.btn_More:hover, .btn_More:active {
	background-color: #009e96;
	color: #fff;
}

@media only screen and (max-width: 767px) {
	.btn_More {
		width: 100%;
		margin-left: 0;
	}
}

@media all and (max-width: 500px) {
	#QueryData {
		display: none;
	}
}
</style>

<style>
.MenuUnit {
	color: #FFFFFF;
	margin: 10px 0px -40px 30px;
}

.MenuUnit div {
	padding-top: 5px;
	padding-bottom: 5px;
	font-size: 1.2em;
}

#gotop {
	position: fixed;
	border-radius: 100px;
	right: 20px;
	bottom: 30px;
	padding: 10px 15px;
	font-size: 25px;
	background: #13b5b1;
	color: #FAFCFD;
	cursor: pointer;
	z-index: 1000;
	display: none;
}
</style>


<script>
	var PageType = GetUrlVars()["PageType"];
	var Unit = GetUrlVars()["Unit"]; //取得收容所代碼
	var AnimalType = GetUrlVars()["AnimalType"];
	var Breed = GetUrlVars()["Breed"];
	var AcceptNum = GetUrlVars()["AcceptNum"];
	var ChipNum = GetUrlVars()["ChipNum"];
	var PageCount = 200; //每頁筆數
	var currentPage = 1; //第一頁
	var _len = 1;
	$(document)
			.ready(
					function() {
						BindUI();
						BindData();
						$('#Search')
								.click(
										function() {
											var SearchString = "?PageType="
													+ PageType;
											if ($("#ddlShelter").val() != null
													&& $("#ddlShelter").val() != "")
												SearchString += "&Unit="
														+ $("#ddlShelter")
																.val();
											if ($(
													'input[name=rdlAnimalType]:checked')
													.val() != null
													&& $(
															'input[name=rdlAnimalType]:checked')
															.val() != "")
												SearchString += "&AnimalType="
														+ $(
																'input[name=rdlAnimalType]:checked')
																.val();
											if ($("#ddlBreed").val() != null
													&& $("#ddlBreed").val() != "")
												SearchString += "&Breed="
														+ $("#ddlBreed").val();
											if ($('#txtAcceptNum').val() != null
													&& $('#txtAcceptNum').val() != "")
												SearchString += "&AcceptNum="
														+ $('#txtAcceptNum')
																.val();
											if ($('#txtChipID').val() != null
													&& $('#txtChipID').val() != "")
												SearchString += "&ChipNum="
														+ $('#txtChipID').val();
											location.href = location.href
													.split('?')[0]
													+ SearchString;
										});
						$('#Cancel').click(
								function() {
									location.href = location.href.split('?')[0]
											+ "?PageType=" + PageType;
								});
						$('#More').click(function() {
							currentPage += 1;
							BindData();
						});
						$('#btnQuery').click(function() {
							if ($('#QueryData').css('display') != 'none')
								$('#QueryData').hide();
							else
								$('#QueryData').show();
						});
						BindCount();
					});
	function ChangeAnimalsType() {
		//動物品種
		var apiUrl = 'http://asms.coa.gov.tw/Asms/api/';
		var apiFun = "AnimalCategories";
		var data = {
			TypeId : "21",
			TypeName : "動物品種",
			AnimalsType : $('input[name=rdlAnimalType]:checked').val()
		}
		var apiParam = ToUrlParam(data);
		var isAsync = false;

		WebAPI.Get(apiUrl + apiFun, apiParam, isAsync, function(jsons) {
			$("#ddlBreed option").remove();
			var _len = 1;
			var dal = new cs.AnimalCategories;
			dal.ini(jsons[0]);
			$("#ddlBreed").append("<option value=''>- 動物品種 -</option>");
			for ( var key in jsons) {
				dal.ini(jsons[key]);
				$("#ddlBreed").append(
						"<option value='" + dal.KeyNo + "'>" + dal.Name
								+ "</option>");
				_len++;
			}
		});
	}

	function BindUI() {
		switch (PageType) {
		case 'Announce':
			$('#spanTitle').html('收容公告');
			break;
		case 'Adopt':
			$('#spanTitle').html('動物認領養');
			break;
		case 'Transfer':
			$('#spanTitle').html('寵物送養媒合');
			break;
		}

		$('input[name=rdlAnimalType]').change(function() {
			ChangeAnimalsType();
		});
		//收容所
		var apiUrl = 'http://asms.coa.gov.tw/Asms/api/';
		var apiFun = "Shelter";
		var data = {
			UserType : 'G'
		}
		var apiParam = ToUrlParam(data);
		var isAsync = false;

		WebAPI.Get(apiUrl + apiFun, apiParam, isAsync, function(jsons) {
			$("#ddlShelter option").remove();
			var _len = 1;
			var dal = new cs.Shelter;
			dal.ini(jsons[0]);
			$("#ddlShelter").append("<option value=''>- 收容所 -</option>");
			for ( var key in jsons) {
				dal.ini(jsons[key]);
				$("#ddlShelter").append(
						"<option value='" + dal.UserTag + "'>"
								+ dal.ShelterName + "</option>");
				_len++;
			}
		});
		if (Unit != null && Unit != "") {
			$('#ddlShelter').val(Unit);
		}
		if (AnimalType != null && AnimalType != "") {
			$("input[name=rdlAnimalType][value=" + AnimalType + "]").prop(
					'checked', true);
			ChangeAnimalsType();
			if (Breed != null && Breed != "") {
				$("#ddlBreed").val(Breed);
			}
		}
		if (AcceptNum != null && AcceptNum != "") {
			$('#txtAcceptNum').val(AcceptNum);
		}
		if (ChipNum != null && ChipNum != "") {
			$('#txtChipID').val(ChipNum);
		}

	}

	function BindData() {
		//清除預設資料
		if (currentPage == 1) {
			_len = 1;
			$("#Annoce li").remove();
		}
		//設定TableName
		var Function = "";
		switch (PageType) {
		case 'Announce':
			Function = "ViewAnimal";
			break;
		case 'Adopt':
			Function = "ViewNowAnimal";
			break;
		case 'Transfer':
			Function = "AmltransferAdmin";
			break;
		}

		//取得資料
		var data = {
			AnimalID : $('#lblKeyNo').text(),
			Typeid : $('input[name=rdlAnimalType]:checked').val(),
			BreedID : $("#ddlBreed").val(),
			chipNum : $('#txtChipID').val(),
			acceptNum : $('#txtAcceptNum').val(),
			UserTag : $("#ddlShelter").val(),
			pageSize : PageCount,
			currentPage : currentPage,
			sortDirection : "DESC"
		}
		switch (PageType) {
		case 'Announce':
			data.sortFields = "AcceptDate";
			break;
		case 'Adopt':
			data.sortFields = "AcceptDate";
			break;
		case 'Transfer':
			data.IsAnnounce = '1';
			$('.inLeft').remove();
			$('.inRight').addClass('inline');
			$('.inline').removeClass('inRight');
			break;
		}

		var apiUrl = 'http://asms.coa.gov.tw/Asms/api/';
		var apiFun = Function;
		var apiParam = ToUrlParam(data);
		var isAsync = false;

		WebAPI
				.Get(
						apiUrl + apiFun,
						apiParam,
						isAsync,
						function(jsons) {
							if (jsons.length > 0) {
								var dal = {};
								switch (PageType) {
								case 'Announce':
									dal = new cs.ViewAnimal;
									break;
								case 'Adopt':
									dal = new cs.ViewNowAnimal;
									break;
								case 'Transfer':
									dal = new cs.AmltransferAdmin;
									break;
								}
								dal.ini(jsons[0]);
								for ( var key in jsons) {
									dal.ini(jsons[key]);

									var path = "";
									if (dal.pic != "" && dal.pic != undefined) {
										var folderPath = '../Upload/pic/';
										var fileName = dal.pic; //dal.InImage;
										path = folderPath + fileName;
									} else {
										path = "../images/defaultSmall.jpg";
									}
									//顯示資料
									$("#Annoce")
											.append(
													"<li id=" + _len + ">"
															+ "<h4><span>"
															+ _len
															+ "</span></h4>"
															// + "<figure><a href='AnnounceList.aspx?Id=" + dal.AnimalId + "&AcceptNum=" + dal.AcceptNum + "&PageType=" + PageType+"'><img id='Img" + _len +"' src='" + path + "'></a></figure>"
															+ "<figure><a href='AnnounceList.aspx?Id="
															+ dal.AnimalId
															+ "&AcceptNum="
															+ dal.AcceptNum
															+ "&PageType="
															+ PageType
															+ "'><img id='Img" + _len + "' class='lazy' data-original='" + path + "'></a></figure>"
															+ "<dl>"
															+ "<dt>品種：</dt>"
															+ "<dd>"
															+ dal.BreedName
															+ "</dd>"
															+ "<dt>類別：</dt>"
															+ "<dd>"
															+ dal.TypeIdName
															+ "</dd>"
															+ "<dt>性別：</dt>"
															+ "<dd>"
															+ dal.SexName
															+ "</dd>"
															+ "<dt>來源：</dt>"
															+ "<dd>"
															+ dal.areaName
															+ "</dd>"
															+ "<div class='clearFloat'></div>"
															+ "</dl>" + "</li>");
									if (PageType == "Transfer") {
										if (dal.AmlPhoto != ''
												&& dal.AmlPhoto != undefined)
											$('#Img' + _len + '').attr(
													'data-original',
													dal.AmlPhoto);
										$('#' + _len + ' figure a')
												.attr(
														'href',
														"AnnounceList.aspx?Id="
																+ dal.KeyNo
																+ "&AcceptNum=&PageType="
																+ PageType);
									}

									_len++;
								}
								if (_len <= 200) {
									$('#More').hide();
								}
							} else if (currentPage != 1 && jsons.length == 0) {
								$('#More').hide();
								alert('查無更多資料');
							} else {
								$('#More').hide();
								alert('無資料');
							}
							//圖片異步載入
							$("img.lazy").lazyload({
								placeholder : '../Images/ENRF/loading.png',
								effect : "fadeIn"
							});
						});
	}

	function BindCount() {
		var dal = {};
		dal.TableName = PageType;
		dal.AnimalType = $('input[name=rdlAnimalType]:checked').val();
		dal.Breed = $("#ddlBreed").val();
		dal.ChipID = $('#txtChipID').val();
		dal.AcceptNum = $('#txtAcceptNum').val();
		dal.Unit = $("#ddlShelter").val();
		var url = "../Handler_ENRF/App/getAnimalCount.ashx";
		var request = $.ajax({
			type : "POST",
			dataType : "json",
			async : false,
			data : {
				data : JSON.stringify(dal)
			},
			url : url
		});
		request.done(function(result, processStatus, $xhr) {
			switch (result.Status) {
			case true:
				var rtn = JSON.parse(result.Message);
				$('#Count_Total').text(rtn.Total);
				$('#Count_Dog').text(rtn.Dog);
				$('#Count_Cat').text(rtn.Cat);
				$('#Count_Other').text(rtn.Other);
				break;
			default:
				console.log(result.Message);
				break;
			}
		});
		request.fail(function(xhr, processStatus, httpStatus) {
			//alert
			console.log('傳輸至 BindCount 操作異常，請洽系統管理員:' + processStatus
					+ '\n操作訊息:' + httpStatus + '');
		});
	}
</script>


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
							<li><a href="">寵寄&送養</a>
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
	<div class="content page1">
		<div class="container_12">
			<div class="main">
				<div class="doc">
					<div class="master">

						<h2 class="iconed" id="btnQuery">
							篩選
						</h2>
						<div id="QueryData">
							<h2>
								<span>請輸入查詢條件</span>
							</h2>
							<form onSubmit="return false;">
								<ul class="query">
									<li><label><input type="radio" name="dog"
											value="1" /><span>大型犬</span></label></li>
									<li><label><input type="radio" name="dog"
											value="2" /><span>中型犬</span></label></li>
									<li><label><input type="radio" name="dog"
											value="3" /><span>小型犬</span></label></li>
									<li><label><input type="radio" name="dog"
											value="4" /><span>超大犬</span></label></li><br>
									<li class="variety"><label ><span >動物品種</span> <select
											id="ddlBreed" >
												<option value="">請選擇</option>
												<option value="">柴犬</option>
												<option value="">巴哥</option>
												<option value="">貴賓犬</option>
												<option value="">吉娃娃</option>
												<option value="">紅貴賓</option>
												<option value="">絲毛梗</option>
												<option value="">北京犬</option>
												<option value="">拉薩犬</option>
												<option value="">博美犬</option>
												<option value="">比熊犬</option>
												<option value="">約克夏</option>
												<option value="">日本狆</option>
												<option value="">西施犬</option>
												<option value="">雪納瑞</option>
												<option value="">蝴蝶犬</option>
												<option value="">米格魯</option>
												<option value="">波士頓梗</option>
												<option value="">威爾斯梗</option>
												<option value="">瑪爾濟斯</option>
												<option value="">長毛臘腸犬</option>
												<option value="">傑克羅素梗</option>
												<option value="">丹第丁蒙梗</option>
												<option value="">中國冠毛犬</option>
												<option value="">西部高地白梗</option>
												<option value="">查理王長毛獵犬</option>
												<option value="">迷你品(迷你杜賓)</option>


										</select></label></li>
									<li class="place"><label><span>地區</span> <select
											id="ddlShelter">
												<option value="">地區</option>
												<option value="">中正區</option>
												<option value="">大同區</option>
												<option value="">中山區</option>
												<option value="">松山區</option>
												<option value="">大安區</option>
												<option value="">萬華區</option>
												<option value="">信義區</option>
												<option value="">士林區</option>
												<option value="">北投區</option>
												<option value="">內湖區</option>
												<option value="">南港區</option>
												<option value="">文山區</option>
										</select></label></li>

								</ul>
								<div class="clearFloat"></div>
								<div class="queryOption">
									<button id="Cancel" type="button">
										<span>取消</span>
									</button>
									<button id="Search" type="button">
										<span>查詢</span>
									</button>
									<button id="Search" type="button">
										<span>發佈</span>
									</button>
								</div>
							</form>
						</div>
						<div style="height: 50px;"></div>
						<hr class="hideItem">
						<h2>
							<span id="spanTitle">動物寄養</span>
						</h2>
						<h3>
							總隻數 <span id="Count_Total">2</span> 隻： 犬 <span id="Count_Dog">2</span>
							隻
						</h3>
						<div calss="animal">
						<ul id="Annoce" class="list toBreakChildren when-2-3-5">
							<li>
								<h4>
									<span>1</span>
								</h4>
								<figure>
									<a href="#"><img src="images/dogg.gif"></a>
								</figure>
								<dl>
									<dt>品種：</dt>
									<dd>混種</dd>
									<dt>類別：</dt>
									<dd>狗</dd>
									<dt>性別：</dt>
									<dd>公</dd>
									<dt>來源：</dt>
									<dd>安平區</dd>
								</dl> <!-- </a> 如果需要 -->
							</li>
							<li>
								<h4>
									<span>2</span>
								</h4>
								<figure>
									<a href="#"><img src="images/1183984391.jpg"></a>
								</figure>
								<dl>
									<dt>品種：</dt>
									<dd>混種</dd>
									<dt>類別：</dt>
									<dd>狗</dd>
									<dt>性別：</dt>
									<dd>公</dd>
									<dt>來源：</dt>
									<dd>安平區</dd>
								</dl> <!-- </a> 如果需要 -->
							</li>
							<li>
								<h4>
									<span>3</span>
								</h4>
								<figure>
									<a href="#"><img src="images/1183984391.jpg"></a>
								</figure>
								<dl>
									<dt>品種：</dt>
									<dd>混種</dd>
									<dt>類別：</dt>
									<dd>狗</dd>
									<dt>性別：</dt>
									<dd>公</dd>
									<dt>來源：</dt>
									<dd>安平區</dd>
								</dl> <!-- </a> 如果需要 -->
							</li>
							<li>
								<h4>
									<span>4</span>
								</h4>
								<figure>
									<a href="#"><img src="images/1183984391.jpg"></a>
								</figure>
								<dl>
									<dt>品種：</dt>
									<dd>混種</dd>
									<dt>類別：</dt>
									<dd>狗</dd>
									<dt>性別：</dt>
									<dd>公</dd>
									<dt>來源：</dt>
									<dd>安平區</dd>
								</dl> <!-- </a> 如果需要 -->
							</li>
							<li>
								<h4>
									<span>5</span>
								</h4>
								<figure>
									<a href="#"><img src="images/1183984391.jpg"></a>
								</figure>
								<dl>
									<dt>品種：</dt>
									<dd>混種</dd>
									<dt>類別：</dt>
									<dd>狗</dd>
									<dt>性別：</dt>
									<dd>公</dd>
									<dt>來源：</dt>
									<dd>安平區</dd>
								</dl> <!-- </a> 如果需要 -->
							</li>


						</ul>
						</div>
					</div>
				</div>
			</div>
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