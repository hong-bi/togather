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
<title>To_gather</title>
</head>


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
<style type="text/css">
	.login-form {
		width: 500px;
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

	$(document).ready(function()
	{
		$("#submitBtn").click(function()
		      {		         
		         if($("#userId").val()=="" && $("#userPw").val()=="")
		         {
		            alert("항목을 모두 입력해야합니다.");
		            $('#userId').focus();
		            return;
		         }
		         else if($("#userId").val()=="")
		         {
		            alert("아이디를 입력해주세요.");
		            $('#userId').focus();
		            return;
		         }
		         else if($("#userPw").val()=="" )
		         {
		        	 alert("패스워드를 입력해주세요.");
			         $('#userPw').focus();
			         return;
		         }
		         
		         $("#loginForm").submit();
		            
		      });
		   });
</script>
</head>
<body>
<div class="login-form">
    <form action="login.do" method="post" id="loginForm">
    	<br><br><br>
        <h2 class="text-center"><a href="beforemain.do"><img src="<%=cp %>/resources/images/To_gather.png" style="width: 500px;" height="150px;"></a></h2>
        <div class="form-group">
            <input type="text" class="form-control" id="userId" name="userId" placeholder="아이디를 입력하세요." required="required" >
        </div>
        <div class="form-group">
            <input type="password" class="form-control" id="userPw" name="userPw" placeholder="비밀번호를 입력하세요" required="required">
        </div>
        <div class="form-group">
            <button type="button" id="submitBtn" class="btn btn-block">로그인</button>
        </div>
             
    </form>
    <div class="btn">
            <button type="button" class="btn"  style="width: 50%" onclick="location.href='idsearch.do'">아이디찾기</button>
            <button type="button" class="btn" style="width: 50%" onclick="location.href='pwsearch.do'">비밀번호찾기</button>
            <button type="button" class="btn" style="width: 50%" onclick="location.href='joinform.do'">회원가입</button>
    </div>

<script type="text/javascript">
	$('#userId').focus();

</script>
</div>
</body>
</html>