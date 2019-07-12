<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title></title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<link href="<c:url value="/resources/css/public.css" />"
	rel="stylesheet">
<link href="<c:url value="/resources/css/index.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/fontawesome/css/all.css" />" rel="stylesheet">
<!-- <script>
	var windowW = 800; // 창의 가로 길이
	var windowH = 400; // 창의 세로 길이
	var left = Math.ceil((window.screen.width - windowW) / 2);
	var top = Math.ceil((window.screen.height - windowH) / 2);
	window.open("noteminus.do", "pop_01", "l top=" + top + ", left="
			+ left + ", height=" + windowH + ", width=" + windowW);
</script> -->
</head>

<body>
	<div class="container">
		<div class="row header">
			<div class="blank col-md-1"></div>
			<div class="logo col-md-12">
				<div class="header-sec">
					<div class="headerNav">
						<div class="join common">
							<p class="content">
								<a href="http://www.google.com">회원가입</a>
							</p>
						</div>
						<div class="login common">
							<p class="content">
								<a href="http://www.naver.com">로그인</a>
							</p>
						</div>
					</div>

					<div class="header">
						<!-- <a href="/html/intro" target="_blank"> -->
						<img class="imgLogo"
							src="<c:url value="/resources/images/To_gather.png" />"
							alt="logo">
						<!-- </a> -->
					</div>
				</div>
			</div>
			<div class="blank col-md-1"></div>
		</div>


		<div class="row nevigator">
			<div class="blank col-md-1"></div>
			<div class="category col-md-12">
				<div class="category" style="width: 1140px; height: 50px;">
					<div class="nevigatorBtn">
						<!-- 전체 카테고리 버튼 -->
						<button class="categoryBtn width200">
							<i class="fa fa-th" aria-hidden="true"></i> 전체 카테고리
						</button>
						<div class="categoryMenu">
							<!-- 테마버튼 -->
							<div class="themaBtn">테마별</div>
							<div class="themaMenu">
								<div>전체</div>
								<div>자연</div>
								<div>문화/관광</div>
								<div>레저/스포츠</div>
								<div>쇼핑/맛집</div>
								<div>기타</div>
							</div>
							<!-- 지역버튼 -->
							<div class="regionBtn">지역별</div>
							<div class="regionMenu">
								<div>전체</div>
								<div>서울</div>
								<div>경기</div>
								<div>인천</div>
								<div>강원</div>
								<div>제주</div>
								<div>대전</div>
								<div>충북</div>
								<div>충남/세종</div>
								<div>부산</div>
								<div>울산</div>
								<div>경남</div>
								<div>대구</div>
								<div>경북</div>
								<div>광주</div>
								<div>전남</div>
								<div>전북</div>
							</div>
							<!-- 기간버튼 -->
							<div class="timeBtn">기간별</div>
							<div class="timeMenu">
								<div>전체</div>
								<div>1박2일</div>
								<div>2박3일</div>
								<div>3박4일</div>
								<div>장기</div>
							</div>
						</div>

						<!-- 베스트 버튼 -->
						<button class="bestBtn width200">베스트</button>
						<!-- 관심목록 버튼 -->
						<button class="intBtn width200">관심목록</button>
						<div class="intMenu">
							<div>관심작가</div>
							<div>관심테마</div>
						</div>
					</div>
					<div class="nevigatorSearch form-inline">
						<!-- 검색 조건 -->
						<select class="custom-select">
							<option value="">전체</option>
							<option value="">제목</option>
							<option value="">여행작가</option>
						</select>&emsp;&emsp;
						<!-- 검색창 -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="search">
							<div class="input-group-append">
								<button class="btn btn-info searchBtn" type="submit">
									<i class="fa fa-search"></i>
								</button>
							</div>
						</div>
						&emsp;&emsp;
						<button type="button" class="writeBtn btn btn-outline-dark">
							<i class="fas fa-pencil-alt"></i>
						</button>
					</div>
				</div>
			</div>
			<div class="blank col-md-1"></div>
		</div>


		<div class="row content">
			<div class="blank col-md-1"></div>
			<div class="content col-md-12">content</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row footer">
			<div class="blank col-md-1"></div>
			<div class="content col-md-12"><!-- footer -->
			<div class="content" style="width: 1140px;">
				<div class="contentBoth">
					<div class="contentLeft">
						<div>
							[Member of Team 4]<br>
							<b>권홍비 · 김성희 · 나주영 · 유진석 · 윤희진 · 이지혜</b>
						</div>
						<div>
							Copyright ⓒ 2019 <b><i class="fas fa-child"></i><i
								class="fas fa-child"></i><i class="fas fa-child"></i><i
								class="fas fa-child"></i>To_gather</b> Corp. All Rights Reserved.
						</div>
						<div>
							Designed and built with all the love in the world by <b>Team
								4</b> with the help of <b>our contributors</b>.<br> Currently
							v1.0.1. Code licensed <b><i class="fas fa-child"></i><i
								class="fas fa-child"></i><i class="fas fa-child"></i><i
								class="fas fa-child"></i>To_gather</b>.
						</div>
					</div>
					<div class="contentRight" >
						<div><img src="<c:url value="/resources/images/To_gather.png" />" style="width: 300px;">
						</div>
					</div>
				</div>
			</div>
			
			
			</div>
			<div class="blank col-md-1"></div>
		</div>
	</div>
	
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
	<script type="text/javascript" src="<c:url value="/resources/js/index.js" />"></script>
</body>
</html>