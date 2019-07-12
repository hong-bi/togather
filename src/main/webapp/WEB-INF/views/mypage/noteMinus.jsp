<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>note.html</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href="<c:url value="/resources/css/mypage/noteminus.css" />"
	rel="stylesheet">
</head>
<body>
	<div class="note">
		<div class="postTitle">
			<h1>매너점수가 차감되었습니다.</h1>
			<br>
		</div>
		<div class="noteBox">
			<div class="noteText">
				<p>본인에게 5회 이상의 신고접수로 매너점수가 0.5점 차감되었습니다.</p>
				<br>
			</div>
			<div class="noteBtn">
				<button type="button" class="btn">확인</button>
			</div>
		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
</body>
</html>