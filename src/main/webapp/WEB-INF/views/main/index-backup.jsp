<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>

<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"> 
	<title></title>
	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	 <link href="<c:url value="/resources/css/public.css" />" rel="stylesheet">
</head>

<body>
	<div class="container">
		<div class="row header">
			<div class="blank col-md-1"></div>
			<div class="logo col-md-12">
			<!-- header -->
			  <tiles:insertAttribute name="header" />
			</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row nevigator">
			<div class="blank col-md-1"></div>
			<div class="category col-md-12">
			<!-- nevigator -->
			  <tiles:insertAttribute name="nevigator" />
			</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row content">
			<div class="blank col-md-1"></div>
			<div class="content col-md-12">
			<!-- content -->
			  <tiles:insertAttribute name="content" />
			</div>
			<div class="blank col-md-1"></div>
		</div>
		<div class="row footer">
			<div class="blank col-md-2"></div>
			<div class="content col-md-12">
			<!-- footer -->
			  <tiles:insertAttribute name="footer" />
			</div>
			<div class="blank col-md-2"></div>
		</div>
	</div>

</body>
</html>