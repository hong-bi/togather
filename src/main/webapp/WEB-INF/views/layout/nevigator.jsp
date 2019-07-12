<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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