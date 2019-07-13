<%@page import="com.together.web.BoardPager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%
	BoardPager paging = new BoardPager();
	
	int dataCount =(Integer)request.getAttribute("totalNum");
	int numPerPage = 16;
	int total_page = paging.getPageCount(numPerPage, dataCount);
	
	if()
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<link href="<c:url value="/resources/css/public.css" />" rel="stylesheet" type="text/css">
<link href="<c:url value="/resources/css/category/periodList.css" />" rel="stylesheet" type="text/css">

<div class="contentList">
	<div class="categoryB">
		<span>BEST</span>
	</div>
	<div class="searchDate">
		<div style="float: right;">
			<div style="width: 100px; height: 35px; margin-top: 20px;">
				<select class="custom-select"
					style="width: 120px; height: 35px; font-size: 11pt; float: right; bottom: 0px;">
					<option selected>최신순</option>
					<option value="1">조회순</option>
					<option value="2">찜많은순</option>
					<option value="3">인기작가순</option>
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
		<!-- foreach -->		
		<div style="margin: 0px 20px 20px 20px;">
			<!-- foreach -->
			
			<c:forEach var="travel" items="${travelList }">			
			
				<div style="width: 275px; text-align: center; float: left;">
					<div class="card"
						style="width: 200px; height: 400px; border: 0px; display: inline-block;">
						<div class="selector" style="width: 200px; height: 200px;">
							<a href=""><img src="<c:url value="/resources/userimages/${travel.img }" />" class="card-img-top" alt="..."></a>
						</div>
						<div class="cardBody">
							<div>
								<span class="postTitle">${travel.title}</span>
							</div>
							<div>
								<span class="postContent">여행작가 : ${travel.nickName }</span>
							</div>
							<div>
								<span class="postContent">
									여행테마 : 
									<c:forEach var="thema" items="${travel.themaType }">
										${thema} 　
									</c:forEach>
								</span>								
							</div>
							<div>
							<!-- 짤렸어 확인해 -->
								<span class="postContent">
									${travel.region_Start }-${travel.city_Start }
								</span>
							</div><div>
								<span class="postContent">
									→${travel.region_End }/${travel.city_End }								
								</span>								
								
							</div>
							<div>
								<span class="postContent">
									${travel.t_Start } ~ ${travel.t_End }
								</span>
							</div>
							<div>
								<span class="postContent">모집마감 ${travel.recruit_End }</span>
							</div>
						</div>
					</div>
				</div>
				
			</c:forEach>
			
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
</div>

<!-- script -->
<script type="text/javascript">
	function change1(obj) {
		obj.style.color = 'rgb(60,127,68)';
	}
	function change2(obj) {
		obj.style.color = 'gray';
	}
</script>

