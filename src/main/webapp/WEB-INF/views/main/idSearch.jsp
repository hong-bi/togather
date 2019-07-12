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
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body onload="window.resizeTo(400,200)">
	<div class="container" style="width: 1000px; margin: 150px auto;">
		<div class="row">
			<div class="col-sm-12 text-center">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<h2>로고</h2>
					<h3>아이디 찾기</h3>
					<br>
					<form action="" method="post">
						<table class="table table-boardered">
							<tr>
								<th>이름</th>
								<td><input type="text" class="form-control" name="name"
									required="required"></td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td><input type="date" class="form-control" name="birth"
									required="required"></td>
							</tr>
							<tr>
								<th>이메일</th>
								<td><input type="email" class="form-control" name="email"
									required="required"></td>
							</tr>
						</table>
						<br>
						<button type="submit" class="btn"
							style="width: 200px; float: left;">확인</button>
						<button type="button" class="btn"
							style="width: 200px; float: right;">취소</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>