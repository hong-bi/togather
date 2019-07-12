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

<script type="text/javascript">

	

</script>


</head>
<body>
<div class="login-form">
    <form action="" method="post">
    	<br><br><br>
        <h2 class="text-center"><a href="beforemain.do"><img src="<%=cp %>/resources/images/To_gather.png" style="width: 500px;" height="150px;"></a></h2>      

        <div class="form-group">
            <h1 class="text-center">회원님의 아이디는 ${userId } 입니다.</h1>
        </div>
       
        <br><br>
        
        <div>
            <button type="button" class="btn" style="width: 240px; margin: 2px;" onclick="location.href='pwsearch.do'">비밀번호찾기</button>
          	<button type="button" class="btn" style="width: 200px; margin: 2px;" onclick="location.href='loginform.do'">로그인</button>
            <button type="button" class="btn" style="width: 240px; margin: 2px;" onclick="location.href='beforemain.do'">메인페이지</button>
        </div>
             
    </form>
    
</div>
</body>
</html>                                		                            