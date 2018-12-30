<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="js/jquery.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
	<!-- Button trigger modal -->
	<button type="button" class="btn btn-primary" data-toggle="modal"
		data-target="#exampleModal">登入</button>

	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">請先登入</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<p>
						<label for="account"> 帳號:</label> <br> <input type="text"
							id="account" required autocomplete="off">
					</p>
					<p>
						<label for="pew"> 密碼:</label> <br> <input type="password"
							id="pew" required autocomplete="off">
					</p>



				</div>
				<div class="modal-footer">
					<input type="reset" value="取消" class="btn btn-secondary"
						data-dismiss="modal"> <input type="submit" value="登入"
						class="btn btn-primary">

				</div>
			</div>
		</div>
	</div>
</body>
</html>