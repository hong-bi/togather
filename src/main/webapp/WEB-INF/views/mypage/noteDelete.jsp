<!-- 게시물 삭제 알람 쪽지 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쪽지</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

<link href="<c:url value="/resources/css/mypage/notedelete.css" />"
	rel="stylesheet">

<!-- 창 크기 -->
<!-- <script>
	var windowW = 800; // 창의 가로 길이
	var windowH = 400; // 창의 세로 길이
	var left = Math.ceil((window.screen.width - windowW) / 2);
	var top = Math.ceil((window.screen.height - windowH) / 2);
	window.open("notedelete.do", "pop_01", "l top=" + top + ", left="
			+ left + ", height=" + windowH + ", width=" + windowW);
</script> -->
</head>
<body>
	<div class="note">
		<div class="postTitle">
			<h1>&lt;게시물 제목&gt;이 삭제되었습니다.</h1>
			<br>
		</div>
		<div class="noteBox">
			<table class="table table-bordered">
				<tr class="subject">
					<th>제목</th>
					<th>여행작가</th>
					<th>여행시작일</th>
					<th>여행종료일</th>
					<th>모집인원수</th>
				</tr>
				<tr>
					<td>전라도 갈 사람~</td>
					<td>네스퀵</td>
					<td>2019.06.29</td>
					<td>2019.06.30</td>
					<td>3</td>
				</tr>
			</table>
			<div class="noteText">
				<p>
					해당 게시물이 삭제되었습니다.<br>확인해주세요.
				</p>
			</div>
			<br>
			<div class="noteBtn">
				<button type="button" class="btn">확인</button>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>