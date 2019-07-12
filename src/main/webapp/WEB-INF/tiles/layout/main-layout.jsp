<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title></title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- bootstrap -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<link href="<c:url value="/resources/css/public.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/main/index.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/main/main.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/fontawesome/css/all.css" />" rel="stylesheet">
</head>

<body>
	<div class="container">
		<div class="row header">
			<div class="blank col-md-1"></div>
			<div class="logo col-md-12">
				<%-- <%@ include file="/WEB-INF/views/layout/header_bf.jsp"%> --%>
				 <tiles:insertAttribute name="header" />
				
			</div>
			<div class="blank col-md-1"></div>
		</div>


		<div class="row nevigator">
			<div class="blank col-md-1"></div>
			<div class="category col-md-12">
				<%-- <c:import url="/WEB-INF/views/layout/nevigator.jsp">
				</c:import> --%>
				 <tiles:insertAttribute name="nevigator" />
			</div>
			<div class="blank col-md-1"></div>
		</div>


		<div class="row content">
			<div class="blank col-md-1"></div>
			<div class="content col-md-12">
				<tiles:insertAttribute name="content" />
				

			</div>
			<!--------------------------------------------------- content -------------------------------------------------->
			<div class="blank col-md-1"></div>
		</div>
		<div class="row footer">
			<div class="blank col-md-1"></div>
			<div class="content col-md-12">
				<%-- <c:import url="/WEB-INF/views/layout/footer.jsp">
				</c:import> --%>
				<tiles:insertAttribute name="footer" /> 
			</div>
			<div class="blank col-md-1"></div>
		</div>
	</div>


	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>