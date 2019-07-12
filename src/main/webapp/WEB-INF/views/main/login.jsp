<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>로그인</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="<c:url value="/resources/css/main/login.css" />"
	rel="stylesheet">
</head>
<body>
	<div class="login-form">
		<form action="" method="post">
			<div class="logo">
				<h2 class="text-center">로고</h2>
			</div>
			<div class="form-group">
				<input type="text" class="form-control" id="userId" name="userId"
					placeholder="아이디를 입력하세요." required="required">
			</div>
			<div class="form-group">
				<input type="password" class="form-control" id="userPw"
					name="userPw" placeholder="비밀번호를 입력하세요" required="required">
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-block btnlogin">로그인</button>
			</div>

			<div class="btn buttongroups">
				<button type="button" class="btn">아이디찾기</button>
				<button type="button" class="btn">비밀번호찾기</button>
				<button type="button" class="btn">회원가입</button>
			</div>

		</form>

	</div>
</body>
</html>
