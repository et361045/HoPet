<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/PetProject/assets/css/bootstrap.css" rel="stylesheet">
<link href="/PetProject/assets/css/zebra_datepicker.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript"
	src="/PetProject/assets/js/zebra_datepicker.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.2.1/js/bootstrap.bundle.min.js"></script>
	<link rel="stylesheet" href="path/to/theme.css"/>

</head>
<body>


	<div class="well">
		<div class="row">
			<div class="col-sm-3">
				<input id="datepicker-range-start" type="text" class="form-control"
					data-zdp_readonly_element="false">
			</div>
			<div class="col-sm-3">
				<input id="datepicker-range-end" type="text" class="form-control"
					data-zdp_readonly_element="false">
			</div>
			<div>
				<p id="idp"></p>
			</div>
		</div>
	</div>

	<script>
		$('#datepicker-range-start').Zebra_DatePicker({
			direction : 1
		});

		$('#datepicker-range-end').Zebra_DatePicker({
			direction : 1
		});

		function ans() {
			var start = $("#datepicker-range-start").val();
			var end = $("#datepicker-range-end").val();
			if (end != "" && start != "") {
				var ans = Date.parse(end) - Date.parse(start);
				ans = ans / (1000 * 60 * 24 * 60) + 1;
				if (ans > 0) {
					$("#idp").html("共" + ans + "天");
				} else {
					$("#idp").html("開始日期大於結束日期");
				}
			}
		}

		$(document).ready(function() {

			$("#datepicker-range-start").focusout(function() {
				ans()
			})
			$("#datepicker-range-end").focusout(function() {
				ans()
			})

		})
	</script>
	<script>
	$(function () {
		  $('#example-popover').popover({
		    container: 'body'
		  })
		})
	
	</script>
	<div style="height: 200px;">
	<button type="button" class="btn btn-secondary" data-container="body" id="example-popover"
		data-toggle="popover" data-placement="bottom"
		data-content="Vivamus
sagittis lacus vel augue laoreet rutrum faucibus.">
		Popover on bottom</button>
		</div>
	<div class="bpk-popover__body--padded-16jsh">
		<div>
			<label
				class="bpk-label-3kiqK CabinClassTravellersSelector__traveller-label-1er97"
				for="search-controls-cabin-class-dropdown">客艙等級</label>
			<div
				class="CabinClassTravellersSelector__cabin-class-economy-only-2df2H">
				<p>
					<strong>我們只能為此搜尋顯示經濟艙的價格。</strong>
				</p>
				<p>若要查看商務艙和頭等艙選項，請告知我們您的確切日期及/或目的地城市。</p>
			</div>
			<label
				class="bpk-label-3kiqK CabinClassTravellersSelector__traveller-label-1er97"
				for="adults-nudger">大人</label>
			<div class="CabinClassTravellersSelector__nudger-wrapper-1Vx00">
				<div class="bpk-nudger CabinClassTravellersSelector__nudger-3zVYk">
					<button type="button" disabled=""
						class="bpk-button-2YQI1 bpk-button--secondary-2AZNL bpk-button--icon-only-3GUDX bpk-nudger__button-2e-8N"
						title="減少成人人數" aria-controls="search-controls-adults-nudger">
						<span
							style="line-height: 1.125rem; display: inline-block; margin-top: 0.1875rem; vertical-align: top;"><svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="18" height="18"
								class="bpk-nudger__icon bpk-nudger__icon--disabled"
								style="width: 1.125rem; height: 1.125rem;">
								<path d="M19 10a2 2 0 1 1 0 4H5a2 2 0 1 1 0-4h14z"></path></svg></span>
					</button>
					<input type="text" aria-live="assertive" readonly="" value="1"
						id="search-controls-adults-nudger" class="bpk-nudger__input-2V63i">
					<button type="button"
						class="bpk-button-2YQI1 bpk-button--secondary-2AZNL bpk-button--icon-only-3GUDX bpk-nudger__button-2e-8N"
						title="增加成人人數" aria-controls="search-controls-adults-nudger">
						<span
							style="line-height: 1.125rem; display: inline-block; margin-top: 0.1875rem; vertical-align: top;"><svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="18" height="18" class="bpk-nudger__icon"
								style="width: 1.125rem; height: 1.125rem;">
								<path
									d="M10 10V5a2 2 0 1 1 4 0v5h5a2 2 0 1 1 0 4h-5v5a2 2 0 1 1-4 0v-5H5a2 2 0 1 1 0-4h5z"></path></svg></span>
					</button>
				</div>
				<span class="CabinClassTravellersSelector__nudgertext-2KZ1n">年滿
					16 歲</span>
			</div>
			<label
				class="bpk-label-3kiqK CabinClassTravellersSelector__traveller-label-1er97"
				for="children-nudger">孩童</label>
			<div class="CabinClassTravellersSelector__nudger-wrapper-1Vx00">
				<div class="bpk-nudger CabinClassTravellersSelector__nudger-3zVYk">
					<button type="button" disabled=""
						class="bpk-button-2YQI1 bpk-button--secondary-2AZNL bpk-button--icon-only-3GUDX bpk-nudger__button-2e-8N"
						title="減少兒童人數" aria-controls="search-controls-children-nudger">
						<span
							style="line-height: 1.125rem; display: inline-block; margin-top: 0.1875rem; vertical-align: top;"><svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="18" height="18"
								class="bpk-nudger__icon bpk-nudger__icon--disabled"
								style="width: 1.125rem; height: 1.125rem;">
								<path d="M19 10a2 2 0 1 1 0 4H5a2 2 0 1 1 0-4h14z"></path></svg></span>
					</button>
					<input type="text" aria-live="assertive" readonly="" value="0"
						id="search-controls-children-nudger"
						class="bpk-nudger__input-2V63i">
					<button type="button"
						class="bpk-button-2YQI1 bpk-button--secondary-2AZNL bpk-button--icon-only-3GUDX bpk-nudger__button-2e-8N"
						title="增加兒童人數" aria-controls="search-controls-children-nudger">
						<span
							style="line-height: 1.125rem; display: inline-block; margin-top: 0.1875rem; vertical-align: top;"><svg
								xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"
								width="18" height="18" class="bpk-nudger__icon"
								style="width: 1.125rem; height: 1.125rem;">
								<path
									d="M10 10V5a2 2 0 1 1 4 0v5h5a2 2 0 1 1 0 4h-5v5a2 2 0 1 1-4 0v-5H5a2 2 0 1 1 0-4h5z"></path></svg></span>
					</button>
				</div>
				<span class="CabinClassTravellersSelector__nudgertext-2KZ1n">0-15
					歲</span>
			</div>
			<div class="CabinClassTravellersSelector__passengers-legal-1Q9fo">
				<p>旅行時，您須符合預訂規定的年齡層。航空公司對於未滿 18 歲單獨旅行的乘客有限制規定。</p>
				<p>年齡限制與攜兒童旅行的政策可能不同，請先向航空公司確認，然後再進行預訂。</p>
			</div>
		</div>
	</div>
</body>
</html>