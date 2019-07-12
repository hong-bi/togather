<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.Date" %>
<%@page import="java.text.SimpleDateFormat" %>
<%

 Date now = new Date();
 SimpleDateFormat sf = new SimpleDateFormat("yyyy년MM월dd일 E요일");
 
 String today = sf.format(now);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<style type="text/css">

	.container
	{
		width: 500px;
    	margin: 100px auto;
	}

</style>

</head>
<body>
<div class="container" style="width: 1500px;">
<div class="row">
<div class="col-sm-12 text-center" >
<div class="col-sm-3"></div>
 
<div class="col-sm-6">
<img alt="" src="로고.png" style="width: 450px;" height="150px;">
<h5><span style="font-family: 맑은 고딕; font-size: 15pt; color: red;">* 필수 입력 사항</span></h5>
<br>
    <form action="" method="post">
        <table class="table table-boardered">
            <tr>
                <th><span style="font-family: 맑은 고딕; font-size: 20pt; font-weight: bold;">탈퇴사유</span></th>
            	<td>
            		<textarea rows="5" cols="60" id="exitReason" required="required" placeholder="100자 이내로 작성해주세요."></textarea>
            	</td>    	
            </tr>
    		
    		<tr>
                <th><span style="font-family: 맑은 고딕; font-size: 20pt; font-weight: bold;">탈퇴일자</span></th>
            	<td>
            		<span style="font-family: 맑은 고딕; font-size: 18pt;"><%= today %></span>
            	</td>    	
            </tr>
                       
        </table>
        <br><br>
        <button type="submit" class="btn" style="width: 200px; margin: 5px;">확인</button>
        <button type="button" class="btn" style="width: 200px; margin: 5px;">취소</button>
        
    </form>
</div>
 
</div>
</div>
</div>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script type="text/javascript">

	
	
	
	$("#exitReason").on('keyup', function() {

		if($(this).val().length > 50) 
		{

			alert("글자수는 100자로 이내로 제한됩니다.");

			$(this).val($(this).val().substring(0, 100));

		}

	});
	
	
	
</script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>