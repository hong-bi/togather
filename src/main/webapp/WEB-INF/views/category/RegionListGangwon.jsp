<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link href="<c:url value="/resources/css/category/regionList.css" />"
	rel="stylesheet" type="text/css">
<script src="<c:url value="/resources/js/category.js" />"></script>

<div class="contentList">
	<div class="categoryB">
		<span>지역</span>
	</div>
	<div class="categorySdiv">
		<div class="categoryS">
			<a href="region.do?value=allRegion" id="regionAll" class="selectN" onmouseout="change2(this)"
				onmouseover="change1(this)">전체</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=seoul" id="regionSeoul" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">서울</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=gyenggi" id="regionGyeonggi" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">경기</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=inchen" id="regionInchen" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">인천</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=gangwon" id="regionGangwon" class="selectB"
				style="color: rgb(60, 127, 68);">강원</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=jeju" id="regionJeju" class="selectN" onmouseout="change2(this)"
				onmouseover="change1(this)">제주</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=daejeon" id="regionDaejeon" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">대전</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=chungbug" id="regionChungbug" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">충북</a>
		</div>
		<div class="categoryS" style="width: 120px;">
			<a href="region.do?value=chungSe" id="regionChungSe" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">충남/세종</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=busan" id="regionBusan" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">부산</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=ulsan" id="regionUlsan" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">울산</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=gyeongnam" id="regionGyeongnam" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">경남</a>
		</div>
	</div>
	<div class="categorySdiv">
		<div class="categoryS">
			<a href="region.do?value=daegu" id="regionDaegu" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">대구</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=gyeongbug" id="regionGyeongbug" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">경북</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=gwangju" id="regionGwangju" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">광주</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=jeonnam" id="regionJeonnam" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">전남</a>
		</div>
		<div class="categoryS">
			<a href="region.do?value=jeonbug" id="regionJeonbug" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">전북</a>
		</div>
	</div>
	<div class="searchDate">
		<div class="searchDateDiv">
			<div style="margin-bottom: 5px;">
				<span style="font-weight: bold; font-family: 맑은 고딕;">여행시작일</span>
			</div>
			<div>
				<input type="date" id="startDate">
			</div>
		</div>
		<div class="searchDateDiv">
			<div style="margin-bottom: 5px;">
				<span style="font-weight: bold; font-family: 맑은 고딕;">여행종료일</span>
			</div>
			<div>
				<input type="date" id="startDate">
			</div>
		</div>
		<div class="searchDateDiv">
			<input type="button" value="검색" class="searchDateButton">
		</div>
		<div style="float: right;">
			<div style="width: 100px; height: 35px; margin-top: 20px;">
				<select class="custom-select"
					style="width: 120px; height: 35px; font-size: 11pt; float: right; bottom: 0px;">
					<option selected>최신순</option>
					<option value="1">인기순</option>
					<option value="2">조회순</option>
					<option value="3">찜많은순</option>
					<option value="4">인기작가순</option>
					<option value="5">여행기간순</option>
				</select>
			</div>
		</div>
	</div>
	<div style="width: 1140px; height: 55px;">
		<div>
			<span style="font-size: 12pt; font-family: 맑은 고딕; margin-left: 30px;">총
				00000 건</span>
		</div>
		<div class="listLine"></div>
	</div>
	<div style="width: 1140px; height: 1600px; margin-bottom: 20px;">
		<!-- foreach -->
		<div style="margin: 0px 20px 20px 20px;">
			<!-- foreach -->
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="margin: 0px 20px 20px 20px;">
			<!-- foreach -->
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="margin: 0px 20px 20px 20px;">
			<!-- foreach -->
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div style="margin: 0px 20px 20px 20px;">
			<!-- foreach -->
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
			<div style="width: 275px; text-align: center; float: left;">
				<div class="card"
					style="width: 200px; height: 400px; border: 0px; display: inline-block;">
					<div class="selector" style="width: 200px; height: 200px;">
						<a href=""><img src="<c:url value="/resources/images/1.png" />" class="card-img-top" alt="..."></a>
					</div>
					<div class="cardBody">
						<div>
							<span class="postTitle">제목제목제목제목제목제목제목제목제목제목</span>
						</div>
						<div>
							<span class="postContent">하하하하하</span>
						</div>
						<div>
							<span class="postContent">레저/스포츠</span>
						</div>
						<div>
							<span class="postContent">충청북도 / 경상남도</span>
						</div>
						<div>
							<span class="postContent">2019.08.13 ~ 2019.09.01</span>
						</div>
						<div>
							<span class="postContent">모집마감 2019.07.06</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!------------------------------------------------------------------------------------------------------>
	<div style="width: 1140px; height: 50px; text-align: center;">
		<div style="display: inline-block;">
			<nav aria-label="Page navigation example">
				<ul class="pagination" style="color: rgb(60, 127, 68);">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#">4</a></li>
					<li class="page-item"><a class="page-link" href="#">5</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>
	</div>
</div>
