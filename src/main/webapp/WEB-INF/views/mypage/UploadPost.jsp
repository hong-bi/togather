<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="mypageMenu">

	<div class="mypageButton">
		<!-- 여행신청목록 -->
		<div style="width: 150px; height: 120px;">
			<div class="textMenu">
				<span>여행 신청 목록</span>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="ongoing"
					onmouseout="change2(this)" onmouseover="change1(this)">진행중</a>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="lastTrip"
					onmouseout="change2(this)" onmouseover="change1(this)">지난여행</a>
			</div>
		</div>
		<!-- 여행 작가 -->
		<div style="width: 150px; height: 120px;">
			<div class="textMenu">
				<span style="color: black;">여행 작가</span>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="upload" style="color: black;">내가
					올린 여행</a>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="storage"
					onmouseout="change2(this)" onmouseover="change1(this)">임시보관함</a>
			</div>
		</div>
		<!-- 나의 관심 -->
		<div style="width: 150px; height: 150px;">
			<div class="textMenu">
				<span>나의 관심</span>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="jjim" onmouseout="change2(this)"
					onmouseover="change1(this)">찜한 게시물</a>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="favorWriter"
					onmouseout="change2(this)" onmouseover="change1(this)">관심작가</a>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="favorTheme"
					onmouseout="change2(this)" onmouseover="change1(this)">관심테마</a>
			</div>
		</div>
		<!-- 동행자게시판 -->
		<div style="width: 150px; height: 60px;">
			<div>
				<input type="button" value="동행자게시판" onmouseout="change2(this)"
					onmouseover="change1(this)" class="btnMypage" id="community">
			</div>
		</div>
		<!-- 쪽지함 -->
		<div style="width: 150px; height: 60px;">
			<div>
				<input type="button" value="쪽지함" onmouseout="change2(this)"
					onmouseover="change1(this)" class="btnMypage" id="message">
			</div>
		</div>
		<!-- 나에 대한 평가 -->
		<div style="width: 150px; height: 120px;">
			<div class="textMenu">
				<span>나에 대한 평가</span>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="eval1"
					onmouseout="change2(this)" onmouseover="change1(this)">동행자 평가</a>
			</div>
			<div>
				<a href="" class="btnMypageSub" id="eval2"
					onmouseout="change2(this)" onmouseover="change1(this)">여행작가 평가</a>
			</div>
		</div>

		<div class="none"></div>

		<!-- 블랙리스트 회원탈퇴 -->
		<div class="bottomMy">
			<div style="float: left">
				<a href="" class="btnB" id="blackList">블랙리스트</a>
			</div>
			<div style="float: right">
				<a href="" class="btnB" id="exit">회원탈퇴</a>
			</div>
		</div>
	</div>


	<div
		style="width: 12px; height: 725px; border-right: 2px solid gray; float: left; margin-right: 5px;"></div>



	<form id="myForm">
		<div class="mypageContent">
			<div style="width: 950px; height: 60px;">
				<span class="subMenuText">내가 올린 여행</span>
			</div>
			<div
				style="width: 950px; height: 40px; margin-top: 20px; margin-bottom: 20px;"></div>
			<div style="margin-bottom: 15px; width: 950px; height: 25px;">
				<span
					style="margin-left: 20px; font-size: 12pt; font-family: 맑은 고딕;">게시물
					: 2</span>
				<div style="width: 120px; height: 20px; float: right;">
					<select class="custom-select"
						style="width: 100px; height: 35px; font-size: 11pt; float: right; bottom: 0px;">
						<option selected>최신순</option>
						<option value="1">조회순</option>
						<option value="1">찜많은순</option>
					</select>
				</div>
			</div>
			<div style="width: 950px;">
				<table class="table table-hover"
					style="font-size: 13px; font-family: 맑은 고딕; text-align: center;">
					<thead>
						<tr style="background-color: lightgray;">
							<th scope="col">No.</th>
							<th scope="col">제목</th>
							<th scope="col">등록일</th>
							<th scope="col">여행시작일</th>
							<th scope="col">여행종료일</th>
							<th scope="col">모집인원</th>
							<th scope="col">신청인원</th>
							<th scope="col">진행현황</th>
							<th scope="col">동행자목록</th>
							<th scope="col">삭제</th>
						</tr>
					</thead>
					<tbody>
						<!-- foreach문 돌려야함 -->
						<tr>
							<th scope="row">1</th>
							<td><a href="">걹루굴얼키밝기밝기울기</a></td>
							<td>2019.05.30</td>
							<td>2019.06.29</td>
							<td>2019.06.30</td>
							<td>10</td>
							<td>5</td>
							<td>모집종료</td>
							<td><input type="button" value="조회"></td>
							<td><input type="button" value="삭제"></td>
						</tr>
						<tr>
							<th scope="row">2</th>
							<td>Jacob</td>
							<td>Thornton</td>
							<td>@fat</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
						<tr>
							<th scope="row">3</th>
							<td colspan="2"></td>
							<td>@twitter</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div style="width: 950px; height: 50px; text-align: center;">
				<div style="display: inline-block;">
					<nav aria-label="Page navigation example">
						<ul class="pagination" style="color: skyblue;">
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
	</form>
</div>



