<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<link href="<c:url value="/resources/css/category/periodList.css" />"
	rel="stylesheet" type="text/css">
<script src="<c:url value="/resources/js/category.js" />"></script>

<div class="contentList">
	<div class="categoryB">
		<span>기간</span>
	</div>
	<div class="categorySdiv">
		<div class="categoryS">
			<a href="periodlistall.do" id="periodAll" class="selectN" onmouseout="change2(this)"
				onmouseover="change1(this)">전체</a>
		</div>
		<div class="categoryS">
			<a href="periodlist12.do" id="period12" class="selectN" onmouseout="change2(this)"
				onmouseover="change1(this)">1박2일</a>
		</div>
		<div class="categoryS">
			<a href="periodlist23.do" id="period23" class="selectN" onmouseout="change2(this)"
				onmouseover="change1(this)">2박3일</a>
		</div>
		<div class="categoryS">
			<a href="periodlist34.do" id="period34" class="selectB"
				style="color: rgb(60, 127, 68);">3박4일</a>
		</div>
		<div class="categoryS">
			<a href="periodlist45.do" id="period45" class="selectN" onmouseout="change2(this)"
				onmouseover="change1(this)">4박5일</a>
		</div>
		<div class="categoryS" style="width: 140px;">
			<a href="periodlistother.do" id="periodOther" class="selectN"
				onmouseout="change2(this)" onmouseover="change1(this)">장기여행</a>
		</div>
	</div>
	<div class="searchDate">

		<div style="float: right;">
			<div style="width: 100px; height: 35px; margin-top: 20px;">
				<select class="custom-select"
					style="width: 120px; height: 35px; font-size: 11pt; float: right; bottom: 0px;"
					id="selectBest" name="selectBest">
					<option value="1">최신순</option>
					<option value="2">인기순</option>
					<option value="3">조회순</option>
					<option value="4">찜많은순</option>
					<option value="5">인기작가순</option>
					<option value="6">여행시작순</option>

				</select>
			</div>
		</div>
	</div>
	<div style="width: 1140px; height: 55px;">
		<div>
			<span style="font-size: 12pt; font-family: 맑은 고딕; margin-left: 30px;">총
				${totalNum } 건</span>
		</div>
		<div class="listLine"></div>
	</div>
	<div style="width: 1140px; height: 1600px; margin-bottom: 20px;">
		<div style="margin: 0px 20px 20px 20px;">
			<!-- foreach -->

			<c:forEach var="travel" items="${travelList }">

				<div style="width: 275px; text-align: center; float: left;">
					<div class="card"
						style="width: 200px; height: 400px; border: 0px; display: inline-block;">
						<div class="selector" style="width: 200px; height: 200px;">
							<a href=""><img
								src="<c:url value="/resources/userimages/${travel.img }" />"
								class="card-img-top" alt="..."></a>
						</div>
						<div class="cardBody">
							<div>
								<span class="postTitle">${travel.title}</span>
							</div>
							<div>
								<span class="postContent">여행작가 : ${travel.nickName }</span>
							</div>
							<div>
								<span class="postContent"> 여행테마 : <c:forEach var="thema"
										items="${travel.themaType }">
										${thema} 　
									</c:forEach>
								</span>
							</div>
							<div>
								<!-- 짤렸어 확인해 -->
								<span class="postContent"> ${travel.region_Start }-${travel.city_Start }
								</span>
							</div>
							<div>
								<span class="postContent"> →${travel.region_End }/${travel.city_End }
								</span>

							</div>
							<div>
								<span class="postContent"> ${travel.t_Start } ~
									${travel.t_End } </span>
							</div>
							<div>
								<span class="postContent">모집마감 ${travel.recruit_End }</span>
							</div>
						</div>
					</div>
				</div>

			</c:forEach>
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
</div>

<!-- script -->
<script type="text/javascript">
	
	/* $("input:checkbox[name='selectBest']:checkbox[value='"+userThema[i]+"']").prop('checked', true); */
	$("#selectBest").val("${selectValue}").prop("selected", true);

	function change1(obj) {
		obj.style.color = 'rgb(60,127,68)';
	}
	function change2(obj) {
		obj.style.color = 'gray';
	}


	$("#selectBest").change(function() {
		
		var selectValue = $("#selectBest").val();
		
		location.href="<%=cp %>/periodlist34.do?selectValue="+selectValue;
						
		
	});
	
	
	
	
	
</script>



