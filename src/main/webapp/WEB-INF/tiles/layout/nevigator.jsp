<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="category" style="width: 1140px; height: 50px;">
	<div class="nevigatorBtn">
		<!-- 전체 카테고리 버튼 -->
		<button class="categoryBtn width200">
			<i class="fa fa-th" aria-hidden="true"></i>전체 카테고리
		</button>
		<div class="categoryMenu">
			<!-- 테마버튼 -->
			<div class="themaBtn"><a href="category.do?value=allTheme">테마별</a></div>
			<div class="themaMenu">
				<div><a href="category.do?value=allTheme">전체</a></div>
				<div><a href="category.do?value=nature">자연</a></div>
				<div><a href="category.do?value=culture">문화/관광</a></div>
				<div><a href="category.do?value=sports">레저/스포츠</a></div>
				<div><a href="category.do?value=shopping">쇼핑/맛집</a></div>
				<div><a href="category.do?value=ectTheme">기타</a></div>
			</div>
			<!-- 지역버튼 -->
			<div class="regionBtn"><a href="region.do?value=allRegion">지역별</a></div>
			<div class="regionMenu">
				<div><a href="region.do?value=allRegion">전체</a></div>
				<div><a href="region.do?value=seoul">서울</a></div>
				<div><a href="region.do?value=gyenggi">경기</a></div>
				<div><a href="region.do?value=inchen">인천</a></div>
				<div><a href="region.do?value=gangwon">강원</a></div>
				<div><a href="region.do?value=jeju">제주</a></div>
				<div><a href="region.do?value=daejeon">대전</a></div>
				<div><a href="region.do?value=chungbug">충북</a></div>
				<div><a href="region.do?value=chungSe">충남/세종</a></div>
				<div><a href="region.do?value=busan">부산</a></div>
				<div><a href="region.do?value=ulsan">울산</a></div>
				<div><a href="region.do?value=gyeongnam">경남</a></div>
				<div><a href="region.do?value=daegu">대구</a></div>
				<div><a href="region.do?value=gyeongbug">경북</a></div>
				<div><a href="region.do?value=gwangju">광주</a></div>
				<div><a href="region.do?value=jeonnam">전남</a></div>
				<div><a href="region.do?value=jeonbug">전북</a></div>
			</div>
			<!-- 기간버튼 -->
			<div class="periodBtn"><a href="period.do?value=allPeriod">기간별</a></div>
			<div class="periodMenu">
				<div><a href="period.do?value=allPeriod">전체</a></div>
				<div><a href="period.do?value=12">1박2일</a></div>
				<div><a href="period.do?value=23">2박3일</a></div>
				<div><a href="period.do?value=34">3박4일</a></div>
				<div><a href="period.do?value=45">4박5일</a></div>
				<div><a href="period.do?value=ectPeriod">장기</a></div>
			</div>
		</div>

		<!-- 베스트 버튼 -->
		<button class="bestBtn width200" onclick="location.href='best.do'">베스트</button>
		
		<!-- 관심목록 버튼 -->
		<button class="intBtn width200">관심목록</button>
		<div class="intMenu">
			<div><a href="login.do">관심작가</a></div>
			<div><a href="login.do">관심테마</a></div>
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
		<button type="button" class="writeBtn btn btn-outline-dark" onclick="location.href='login.do'">
			<i class="fas fa-pencil-alt"></i>
		</button>
	</div>
</div>