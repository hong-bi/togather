<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="header-sec">
	<div class="headerNav">
		<div class="join common">
			<p class="content">
				<a href="join.do">회원가입</a> 	<!-- Join.jsp -->
			</p>
		</div>
		<div class="login common">
			<p class="content">
				<a href="login.do">로그인</a>	 <!-- Login.jsp -->
			</p>
		</div>
	</div>

	<div class="header">
		<a href="beforemain.do" target="_self">				 <!-- beforeLogin.jsp -->
		<img class="imgLogo"
			src="<c:url value="/resources/images/To_gather.png" />" alt="함께 만들어가는 여행 To_gather">
		</a>
	</div>
</div>