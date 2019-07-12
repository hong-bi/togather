<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<style type="text/css">
.evalList {
	width: 470px;
	height: 50px;
	margin-left: 60px;
	margin-bottom: 20px;
	margin-right: 60px;
}

.evalScore {
	width: 110px;
	float: left;
	padding: 10px 10px 10px 0px;
}

.evalScore span {
	font-size: 14pt;
	font-family: 맑은 고딕;
	font-weight: bold;
}

.evalComment {
	float: right;
	width: 300px;
	height: 50px;
	border: 1px solid black;
	border-radius: 5px;
	background-color: white;
}
a.page-link {
    color: rgb(60,127,68);
}
</style>
</head>
<body>

	<div
		style="width: 600px; height: 650px; background-color: white; text-align: center;">
		<div
			style="width: 600px; height: 50px display: inline-block; margin-top: 20px; margin-bottom: 20px;">
			<span style="font-size: 18pt; font-family: 맑은 고딕; font-weight: bold;"><동행자 평가 상세></span>
		</div>
		<div
			style="width: 600px; height: 600px; display: inline-block; background-color: lightgray;">
			<div style="width: 520px; height: 30px; margin: 20px 40px 20px 40px;">
				<div style="float: left;">
					<span
						style="font-size: 14pt; font-family: 맑은 고딕; font-weight: bold;">게시물
						제목</span>
				</div>
				<div style="float: right;">
					<span
						style="font-size: 14pt; font-family: 맑은 고딕; font-weight: bold;">평균
						: ★★★☆☆</span>
				</div>
			</div>
			<div style="width: 80px; margin-left: 40px; margin-bottom: 30px">
				<span
					style="font-size: 14pt; font-family: 맑은 고딕; font-weight: bold;">총
					6 명</span>
			</div>
			<div style="widows: 720px; height: 350px;">
				<!-- foreach -->
				<div class="evalList">
					<div class="evalScore">
						<span>★★★☆☆</span>
					</div>
					<div class="evalComment"></div>
				</div>
				<div class="evalList">
					<div class="evalScore">
						<span>★★★☆☆</span>
					</div>
					<div class="evalComment"></div>
				</div>
				<div class="evalList">
					<div class="evalScore">
						<span>★★★☆☆</span>
					</div>
					<div class="evalComment"></div>
				</div>
				<div class="evalList">
					<div class="evalScore">
						<span>★★★☆☆</span>
					</div>
					<div class="evalComment"></div>
				</div>
				<div class="evalList"">
					<div class="evalScore">
						<span>★★★☆☆</span>
					</div>
					<div class="evalComment"></div>
				</div>
			</div>
			<div style="width:600px; height:40px; text-align: center; margin-top: 10px;">
				<div style="display: inline-block; width:135px; height:40px;">
					<nav aria-label="Page navigation example">
						<ul class="pagination" style="color: skyblue;">
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#"
								aria-label="Next"> <span aria-hidden="true">&raquo;</span>
							</a></li>
						</ul>
					</nav>
				</div>
			</div>
			<div style="display: inline-block; margin-top: 20px;">
				<input type="button" value="확인" style="width:100px; height: 40px; color:white; border-radius: 5px; background-color: rgb(60,127,68); font-family: 맑은 고딕; font-size: 12pt; font-weight: bold;">
			</div>
		</div>
	</div>

</body>
</html>