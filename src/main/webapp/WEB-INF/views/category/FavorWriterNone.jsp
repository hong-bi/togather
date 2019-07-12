<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">

<link href="../css/public.css" rel="stylesheet">
<link href="../css/periodList.css" rel="stylesheet">
<link rel="stylesheet" href="../fontawesome/css/all.css">

</head>


<!-- 네이게이터 전체 카테고리 선택 표시 (색상 넣기)  -->

<body>
	<div class="container">
		<div class="row header">
			<div class="blank col-md-1"></div>
			<div class="logo col-md-12">header</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row nevigator">
			<div class="blank col-md-1"></div>
			<div class="category col-md-12">nevigator</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row content">
			<form>
				<div class="contentList">
					<div class="categoryB">
						<span>관심작가</span>
					</div>
					<div class="searchDate">
						<div style="float: right;">
							<div style="width: 100px; height: 35px; margin-top: 20px;">
								<select class="custom-select"
									style="width: 120px; height: 35px; font-size: 11pt; float: right; bottom: 0px;">
									<option selected>최신순</option>
									<option value="1">인기순</option>
									<option value="2">조회순</option>
									<option value="3">찜많은순</option>
									<option value="4">인기작가순</option>
								</select>
							</div>
						</div>
					</div>
					<div style="width: 1140px; height: 55px;">
						<div><span style="font-size: 12pt; font-family: 맑은 고딕; margin-left: 30px;">총 00000 건</span></div>
						<div class="listLine"></div>
					</div>
					<div style="width: 1140px; height: 700px; margin-bottom: 20px;">
						<div style="padding: 100px 100px 100px 100px">
							<div style="text-align: center; margin-bottom: 20px;"><span style="font-size: 35pt; font-family: 맑은 고딕; font-weight: bold;"><i class="fas fa-exclamation-circle"></i></span></div>
							<div style="text-align: center; margin-bottom: 20px;"><span style="font-size: 35pt; font-family: 맑은 고딕; font-weight: bold;" >등록한 관심작가가 없습니다.</span></div>
							<div style="text-align: center;">
								<a href="" style="width: 300px; height:50px; color: white; text-decoration: none; font-size: 20pt; font-family: 맑은 고딕; font-weight: bold; border-radius:5px; border: 0px; background-color: rgb(60,127,68);" onmouseout="change2(this)" onmouseover="change1(this)">관심작가등록하러가기</a>
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
		<div class="row footer">
			<div class="blank col-md-2"></div>
			<div class="content col-md-12">footer</div>
			<div class="blank col-md-2"></div>
		</div>
	</div>

	<!-- script -->
	<script type="text/javascript">
		function change1(obj) {
			obj.style.color = 'black';
		}
		function change2(obj) {
			obj.style.color = 'white';
		}
	</script>

</body>
</html>