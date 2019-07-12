<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>여행글 등록</title>


<link rel="stylesheet"
	href="<c:url value="/resources/css/public.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/Posts/application.css" />"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<c:url value="/resources/css/fontawesome-free-5.9.0-web/css/all.css" />">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="<c:url value="/resources/js/application.js" />"></script>
</head>
<body>
	<div class="container">
		<div class="row header">
			<div class="blank col-md-1"></div>
			<div class="logo col-md-12">header</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row nevigator">
			<div class="blank col-md-1"></div>
			<div class="category col-md-12">11nevigator</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row content">
			<div class="blank col-md-1"></div>
			<div class="content col-md-12">
				<div class="layer form-group">

					<div class="header">
						<div class="headerTitle">
							<h2>여행코스 등록</h2>
						</div>
						<div class="headerMenu">
							<button type="button" class="headerBtn">단계별 추가 정보 입력 안내</button>
							<button type="button" class="headerBtn">여행경로 등록 안내</button>
						</div>
					</div>


					<div class="">
						<table class="introductionTbl table">
							<tr>
								<th>
									<h4>여행 제목</h4>
								</th>
								<td><input type="text" class="form-control" id="subject"
									placeholder="내용을 입력해주세요."> <span class="alert"
									id="subjectAlert">제목을 30자이내로 입력하세요.</span></td>
								<td rowspan="2" class="imgBox"><img
									src="https://img-wishbeen.akamaized.net/plan/1467363589743_1024px-Red_square_Moscow_cityscape_830914872122222.jpg"
									class="img-responsive img-circle"></td>
							</tr>
							<tr>
								<th>
									<h4>여행소개</h4>
								</th>
								<td><textarea rows="8" id="introduceText"
										class="form-control noresize" placeholder="내용을 입력해주세요."></textarea>
								</td>
							</tr>
						</table>
					</div>


					<div class="form-group">
						<div class="frame-category">
							<div class="menu subtitle">
								<h4>카테고리</h4>
							</div>
							<div class="menu category-menu">
								<div class="btn-group btn-group-toggle" data-toggle="buttons">
									<label class="btn"><input type="checkbox" name="loc"
										id="loc">자연</label> <label class="btn"><input
										type="checkbox" name="loc" id="loc">문화관광</label> <label
										class="btn"><input type="checkbox" name="loc" id="loc">레저/스포츠</label>
									<label class="btn"><input type="checkbox" name="loc"
										id="loc">쇼핑/맛집</label> <label class="btn"><input
										type="checkbox" name="loc" id="loc">기타</label>
								</div>
								<span class="alert" id="locationAlert"><br>카테고리를
									선택해주세요.</span>
							</div>

						</div>
						<div class="form-together">
							<div class="menu subtitle">
								<div id="subtitle">
									<h4>
										동행자<br>조건
									</h4>
								</div>
							</div>
							<div class="menu category-menu">
								<div class="age">
									<div class="btn-group btn-group-toggle" data-toggle="buttons">
										<div class="subname">연령</div>
										<label class="btn"><input type="checkbox"
											class="checkAll" name="ageAll" id="ageAll">전체</label> <label
											class="btn"><input type="checkbox" class="age"
											name="age" id="ageAll">20대</label> <label class="btn"><input
											type="checkbox" class="age" name="age" id="ageAll">30대</label>
										<label class="btn"><input type="checkbox" class="age"
											name="age" id="ageAll">40대</label> <label class="btn"><input
											type="checkbox" class="age" name="age" id="ageAll">50대
											이상</label>
									</div>
									<span class="alert" id="ageAlert"><br>연령 선택해주세요.</span>

								</div>
								<div class="gender">
									<div class="subname">성별</div>
									<div class="btn-group btn-group-toggle gender"
										data-toggle="buttons">
										<label class="btn"><input type="radio" name="gender"
											id="gender">전체</label> <label class="btn"> <input
											type="radio" name="gender" id="gender">동성
										</label>
									</div>
									<span class="alert" id="genderAlert"><br>성별을
										선택해주세요.</span>
								</div>
								<div class="etc">
									<div class="subname">기타</div>
									<div class="textarea">
										<textarea rows="5" class="form-control noresize"
											placeholder="내용을 입력해주세요."></textarea>
									</div>
								</div>

							</div>
						</div>
					</div>
					<div class="form-together2">
						<div class="frame-category2">
							<div class="menu subtitle">
								<h4>
									동행자<br>인원
								</h4>
							</div>
							<div class="menu category-menu">
								<div class="menu category-menu">
									<div class="__count_range btn-group">
										<input type="text" class="count" value="1" readonly="readonly">
										<input value="▼" count_range="m" type="button"
											class="btn btn-secondary"> <input value="▲"
											count_range="p" type="button" class="btn btn-secondary">
										<span class="alert" id="countAlert">&emsp;최대인원은 10명까지
											입니다.</span>
									</div>
								</div>
							</div>

						</div>
					</div>



					<div class="form-group2">
						<table class="table">
							<tbody class="period">
							<tr>
								<th>
									<h4>여행 기간</h4>
								</th>
								<td></td>
								<td class="startAndEnd"><label>여행 시작일<input
										type="text" class="form-control" id="date1"></label>&emsp;~&emsp;
									<label>여행 종료일<input type="text" class="form-control"
										id="date2"></label></td>
							</tr>
							</tbody>
							<tbody class="plans">
								<tr>
									<th>
										<h4>여행지<br>추가</h4>
									</th>
									<th>
										<h3>Step1.</h3>
									</th>
									<td>
										<table class="table">
											<tr>
												<th>
													<h4>주소입력</h4>
												</th>
												<td class="input-group-prepend"><input type="text"
													placeholder="내용을 입력해주세요." class="form-control">
													<button type="button" class="btn btn-secondary"
														onclick="document.getElementById('modal').style.display='block'">
														<i class="fa fa-search"></i>주소 검색
													</button></td>
											</tr>
											<tr>
												<th>
													<h4>설명</h4>
												</th>
												<td><textarea rows="8" class="form-control noresize"
														placeholder="내용을 입력해주세요."></textarea></td>
											</tr>
											<tr>
												<th></th>
												<td>
													<button type="button"
														class="traffic btn btn-outline-secondary">
														<i class="fa fa-car"></i> 교통수단
													</button>
													<button type="button" class="pay btn btn-outline-secondary">
														<i class="fas fa-won-sign"></i> 비용
													</button>
													<button type="button"
														class="time btn btn-outline-secondary">
														<i class="fas fa-stopwatch"></i> 소요시간
													</button>
													<button type="button"
														class="else btn btn-outline-secondary">
														<i class="fas fa-calendar-check"></i> 기타
													</button>
												</td>
											</tr>
										</table>
								</tr>
							</tbody>
							<tr>
								<th></th>
								<th></th>
								<td class="moreInfBox">
									<button type="button" class="moreInf btn btn-info" id="moreInf">
										<i class="fa fa-plus"></i> 항목 추가
									</button>
								</td>
								<td>
							</tr>
							<tr>
								<th colspan="3" class="selectBtn text-center">
									<button class="btn btn-primary">임시저장</button>
									<button class="btn btn-danger" id="upload">업로드</button>
								</th>
							</tr>
						</table>
					</div>
				</div>
				<div id="modal" class="modal">
					<table class="modalContent">
						<tr>
							<th class="modalHeader form-inline">
								<h3>여행지 검색</h3>
								<button
									onclick="document.getElementById('modal').style.display='none'"
									class="close">&times;</button>
							</th>
						</tr>
						<tr>
							<td class="imgcontainer"><img alt="지도"
								src="http://webframeworks.kr/tutorials/angularjs/angularjs_google_map_directive/imgs/google_map_tutorial_02.png">
							</td>
						</tr>
						<tr>
							<td class="container btn-group"><input type="text"
								class="form-control">
								<button type="button" class="btn btn-default">주소 검색</button></td>
						</tr>
						<tr>
							<th>
								<table class="modalInsert">
									<tr>
										<th>
											<h4>장소</h4>
										</th>
									</tr>
									<tr>
										<td><textarea rows="5" class="form-control noresize"
												readonly="readonly"></textarea></td>
									</tr>
									<tr>
										<td>
											<button type="button" class="btn btn-primary">등록</button>
										</td>
									</tr>
								</table>
							</th>
						</tr>
					</table>
				</div>
			</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row footer">
			<div class="blank col-md-2"></div>
			<div class="content col-md-12">footer</div>
			<div class="blank col-md-2"></div>
		</div>
	</div>

</body>
</html>