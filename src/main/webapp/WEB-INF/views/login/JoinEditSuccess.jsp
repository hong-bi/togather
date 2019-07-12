<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<title>Login Form</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	.login-form {
		width: 700px;
    	margin: 100px auto;
	}
    .login-form form {
    	margin-bottom: 50px;
        background: white;
       
        padding: 0px;
    }
    .login-form h2 {
        margin: 0 0 15px;
    }
    .form-control, .btn {
        min-height: 38px;
        border-radius: 2px;
    }
    .btn {        
        font-size: 15px;
        font-weight: bold;
    }
</style>
</head>
<body>
<div class="login-form">
    <form action="" method="post">
    	<br><br><br>
        <h2 class="text-center"><img alt="" src="로고.png" style="width: 450px;" height="150px;"></h2>      

        <div class="form-group">
            <h1 class="text-center">회원정보수정이 완료되었습니다.</h1>
        </div>
       
        <br>
        
        <div style="text-align: center;">
            <button type="button" class="btn" style="width: 300px;">메인페이지로 돌아가기</button>
        </div>
             
    </form>
    
</div>
</body>
</html>                                		                            