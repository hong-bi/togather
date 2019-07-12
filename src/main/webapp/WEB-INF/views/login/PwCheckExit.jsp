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
		width: 600px;
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
        width: 60%;
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
            <h3 class="text-center">회원탈퇴</h3>
        </div>
        
        <br>
        <div>
            <input type="password" class="form-control" name="pw"
                required="required" placeholder="비밀번호를 입력해주세요."
                style="width: 100%;">
        </div>
       
        <br><br>
        
        <div style="text-align: center;">
          	<button type="button" class="btn" style="width: 240px; margin: 5px;">확인</button>
            <button type="button" class="btn" style="width: 240px; margin: 5px;">취소</button>
        </div>
             
    </form>
    
</div>
</body>
</html>                                		                            