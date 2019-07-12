<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<link href="../css/public.css" rel="stylesheet">
<link rel="stylesheet" href="/resources/css/Posts/post.css">

<!-- script -->
<script type="text/javascript">
	function change1(obj) {
		obj.style.color = 'rgb(60,127,68)';
	}
	function change2(obj) {
		obj.style.color = 'gray';
	}
</script>


<style type="text/css">
.selector img {
	top: 0;
	left: 0;
	width: 500px;
	height: 300px;;
}

.iconStyle {
	font-size: 25pt;
	padding: 10px 10px 10px 10px;
}

.postFont {
	font-size: 15pt;
	font-family: 맑은 고딕;
	font-weight: bold;
}

div {
	overflow: hidden;
	height: auto;
}

.postButton {
	font-size: 25pt;
	font-family: 맑은 고딕;
	font-weight: bold;
	border: 0px;
	border-radius: 5px;
	color: white;
	width: 400px;
	height: 125px;
}

.postUnderButton {
	width: 200px;
	height: 30px;
	border: 0px;
	border-radius: 5px;
	color: white;
	font-size: 15pt;
	font-family: 맑은 고딕;
}
</style>

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

			<div style="width: 1140px;">
				<div style="width: 520px; height: 20px; margin-top: 20px;">
					<div style="float: left;">
						<span
							style="margin-left: 20px; font-family: 맑은 고딕; font-size: 12pt;">등록일
							2019.07.05</span>
					</div>
					<div style="float: right;">
						<span style="font-family: 맑은 고딕; font-size: 12pt;">조회수 0000</span>
					</div>
				</div>
				<div style="width: 1100px; margin: 10px 0px 20px 20px;">
					<div style="float: left;">
						<div class="selector" style="width: 500px; height: 300px;">
							<img src="<c:url value="/resources/images/1.png" />" alt="...">
						</div>
						<div
							style="position: relative; width: 500px; height: auto; margin-top: 10px;">
							<div style="float: left;">
								<span
									style="font-family: 맑은 고딕; font-weight: bold; font-size: 20pt;">게시물제목</span>
							</div>
						</div>
					</div>
					<div style="float: right; width: 500px;">
						<div
							style="width: 500px; height: 5px; border-bottom: 2px solid lightgray; margin-bottom: 10px;"></div>
						<div style="position: relative; width: 500px; height: 55px;">
							<div style="float: left;">
								<i class="fas fa-id-card-alt iconStyle"></i> <span
									class="postFont">여행작가닉</span>
							</div>
							<div
								style="width: 115px; height: 30px; position: absolute; right: 0px; bottom: 0px;">
								<input type="button" value="관심작가등록"
									style="background-color: rgb(60, 127, 68); font-size: 12pt; font-family: 맑은 고딕; font-weight: bold; color: white; border: 0px; border-radius: 3px;">
							</div>
						</div>
						<div style="width: 500px; height: 55px;">
							<div style="float: left;">
								<i class="far fa-file-alt iconStyle"></i> <span class="postFont">쇼핑/맛집
									문화/관광 레저/스포츠</span>
							</div>
						</div>
						<div style="width: 500px;">
							<div>
								<i class="fas fa-user-friends iconStyle"
									style="font-size: 25pt;"></i> <span class="postFont">30대
									40대 50대이상</span>
							</div>
							<div>
								<span class="postFont" style="margin-left: 63px;">성별무관</span>
							</div>
							<div>
								<span class="postFont" style="margin-left: 63px;">비흡연자 희망</span>
							</div>
						</div>
						<div style="width: 500px; height: 55px;">
							<i class="fas fa-users iconStyle" style="font-size: 25pt;"></i> <span
								class="postFont">동행자 인원 <span style="color: blue;">10</span>
								명
							</span>
						</div>
						<div style="width: 500px; height: 55px;">
							<i class="fas fa-user-edit iconStyle" style="font-size: 25pt;"></i>
							<span class="postFont">신청 인원 <span style="color: red;">150</span>
								명
							</span>
						</div>
					</div>
				</div>
				<div style="width: 1100px; margin: 10px 0px 20px 20px;">
					<div style="width: 500px; float: left;">
						<div
							style="height: 5px; border-bottom: 2px solid lightgray; margin-bottom: 10px;"></div>
						<div>
							<i class="far fa-calendar-alt iconStyle"></i> <span
								class="postFont">2019.08.12 ~ 2019.08.13 (1박 2일)</span>
						</div>
						<div style="width: 500px; height: 400px; border: 1px solid black;">
							<!-- 여행 소개 height: auto; -->
						</div>
					</div>
					<div style="width: 500px; float: right;">
						<div
							style="width: 500px; height: 5px; border-bottom: 2px solid lightgray; margin-bottom: 20px;"></div>
						<div style="text-align: center;">
							<input type="button" id="" value="신청하기" class="postButton"
								style="background-color: #dc3545;">
						</div>
						<div style="text-align: center; margin-top: 10px;">
							<button class="postButton" id=""
								style="background-color: #007bff;">
								<i class="far fa-heart"></i> 찜하기
							</button>
						</div>
					</div>
				</div>
				<div style="width: 1100px; margin: 10px 0px 40px 20px;">
					<div
						style="height: 5px; border-bottom: 2px solid lightgray; margin-bottom: 20px;"></div>
					<div style="height: 60px;">
						<i class="fas fa-map-marked-alt iconStyle"
							style="font-size: 30pt;"></i> <span class="postFont"
							style="font-size: 20pt;">여행 코스</span>
					</div>
					<div style="width: 934px; height: 452px">
						<img
							src="http://blog.ninefactory.kr/wp-content/uploads/sites/2/2014/04/%EA%B5%AC%EA%B8%80%EC%A7%80%EB%8F%84.png">
					</div>
				</div>
				<div style="width: 1100px; margin: 10px 0px 20px 20px;">
					<div
						style="height: 5px; border-bottom: 2px solid lightgray; margin-bottom: 50px;"></div>
					<div style="margin: 0px 20px 20px 20px">
						<!-- sample foreach -->
						<div style="margin-bottom: 30px;">
							<div style="width: 530px; float: left;">
								<div style="margin-bottom: 5px;">
									<div style="height: 40px; margin-bottom: 5px;">
										<span class="postFont" style="font-size: 20pt;">Step1.
											강원도 춘천시 홍비동</span>
									</div>
									<div style="height: 200px; border: 1px solid black;">
										<!-- 설명 height 조절 필요-->
									</div>
								</div>
								<div style="height: 100px; border: 1px solid black;">
									<!-- 설명 height 조절 필요-->
								</div>
							</div>
							<div style="width: 530px; float: left;">
								<div style="width: 450px; float: right; height: 245px;">
									<img
										src="http://blog.ninefactory.kr/wp-content/uploads/sites/2/2014/04/%EA%B5%AC%EA%B8%80%EC%A7%80%EB%8F%84.png">
								</div>
							</div>
						</div>
						<div style="margin-bottom: 30px;">
							<div style="width: 530px; float: left;">
								<div style="margin-bottom: 5px;">
									<div style="height: 40px; margin-bottom: 5px;">
										<span class="postFont" style="font-size: 20pt;">Step2.
											강원도 춘천시 홍비동</span>
									</div>
									<div style="height: 200px; border: 1px solid black;">
										<!-- 설명 height 조절 필요-->
									</div>
								</div>
								<div style="height: 100px; border: 1px solid black;">
									<!-- 설명 height 조절 필요-->
								</div>
							</div>
							<div style="width: 530px; float: left;">
								<div style="width: 450px; float: right; height: 245px;">
									<img
										src="http://blog.ninefactory.kr/wp-content/uploads/sites/2/2014/04/%EA%B5%AC%EA%B8%80%EC%A7%80%EB%8F%84.png">
								</div>
							</div>
						</div>
						<div style="margin-bottom: 30px;">
							<div style="width: 530px; float: left;">
								<div style="margin-bottom: 5px;">
									<div style="height: 40px; margin-bottom: 5px;">
										<span class="postFont" style="font-size: 20pt;">Step3.
											강원도 춘천시 홍비동</span>
									</div>
									<div style="height: 200px; border: 1px solid black;">
										<!-- 설명 height 조절 필요-->
									</div>
								</div>
								<div style="height: 100px; border: 1px solid black;">
									<!-- 설명 height 조절 필요-->
								</div>
							</div>
							<div style="width: 530px; float: left;">
								<div style="width: 450px; float: right; height: 245px;">
									<img
										src="http://blog.ninefactory.kr/wp-content/uploads/sites/2/2014/04/%EA%B5%AC%EA%B8%80%EC%A7%80%EB%8F%84.png">
								</div>
							</div>
						</div>
					</div>
				</div>
				<div
					style="width: 1100px; margin: 10px 0px 20px 20px; text-align: center;">
					<div style="width: 410px; display: inline-block;">
						<div style="float: left; margin-right: 10px;">
							<button id="" class="postUnderButton"
								style="background-color: #dc3545;">신고하기</button>
						</div>
						<div style="float: left;">
							<button id="" class="postUnderButton"
								style="background-color: #007bff;">이전으로</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row footer">
			<div class="blank col-md-2"></div>
			<div class="content col-md-12">footer</div>
			<div class="blank col-md-2"></div>
		</div>
	</div>



</body>
</html>