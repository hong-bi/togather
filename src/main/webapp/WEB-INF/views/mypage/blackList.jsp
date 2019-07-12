<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>블랙 리스트</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link href="<c:url value="/resources/css/mypage/blacklist.css" />"rel="stylesheet">
	
<!-- 팝업창 크기  -->
<!-- <script>
	var windowW = 700; // 창의 가로 길이
	var windowH = 800; // 창의 세로 길이
	var left = Math.ceil((window.screen.width - windowW) / 2);
	var top = Math.ceil((window.screen.height - windowH) / 2);
	window.open("blacklist.do", "pop_01", "l top=" + top + ", left="
			+ left + ", height=" + windowH + ", width=" + windowW);
</script> -->

</head>
<body>
	<div class="row content">
		<div class="blank col-md-3"></div>
		<div class="content col-md-6">
			<div align="center">
				<br>
				<th><h1>&lt;블랙리스트&gt;</h1></th> <br> <input type="text" size=50>
				<button class="popup btn btn-secondary" onclick="myFunction()">
					추가 <span class="popuptext" id="myPopup">해당 별명은 존재하지 않습니다.</span>
				</button>
				<br>
				<br> ※ 블랙리스트는 나의 여행 게시물 신청이 불가합니다. ※
			</div>

			<br>
			<br>

			<div id="bbs" align="center">
				<br>
				<div id="right" align="right">
					<input type="text" cols="65px" />
					<button type="button" class="btn btn-dark">검색</button>
				</div>
				<div id="left" align="left">총 1 명</div>

				<table class="table" style="width: 80%;">
					<thead>
						<tr>
							<th>No.</th>
							<th>닉네임</th>
							<th>추가일자</th>
							<th>해제</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						<tr>
							<td class="text">1</td>
							<td class="text">홍홍홍</td>
							<td class="text">2019-06-20</td>
							<td><button type="button" id="cancel"
									class="btn btn-secondary">해제하기</button></td>
						</tr>
						
					</tbody>
				</table>

				<nav aria-label="Page navigation example">
					<ul class="pagination justify-content-center">
						<li class="page-item"><a class="page-link" href="#"
							tabindex="-1"><</a></li>
						<li class="page-item active"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">></a></li>
					</ul>
				</nav>

				<br>

			</div>

			<br>

			<div align="center">
				<button type="button" class="btn btn-secondary">확인</button>
			</div>
			<br>
		</div>
		<div class="blank col-md-3"></div>
	</div>

	<%-- <script type="text/javascript"
		src="<c:url value="/resources/js/blacklist.js" />"></script> --%>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

</body>
</html>
