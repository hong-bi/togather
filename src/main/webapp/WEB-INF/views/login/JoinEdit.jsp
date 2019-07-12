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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container" style="width: 1500px;">
<div class="row">
<div class="col-sm-12 text-center" >
<div class="col-sm-3"></div>
 
<div class="col-sm-6">
<h2><a href=""><img src="<%=cp %>/resources/images/To_gather.png" style="width: 500px;" height="150px;"></a></h2>
<h3><span style="font-family: 맑은 고딕; font-size: 20pt;">회원정보수정</span></h3>
<h5><span style="font-family: 맑은 고딕; font-size: 12pt;  color: red;">* 필수 입력 사항</span></h5>
<br>
    <form action="" method="post">
        <table class="table table-boardered">
            <tr>
                <th>아이디*</th>
                <td><input type="text" class="form-control" id="id" placeholder="영소문자,숫자 혼합 8자리 ~ 12자리"
                required="required">
                </td>        
                <td>
                	<button type="button" class="btn" >중복검사</button>
                </td>
            </tr>
            <tr>
                <th>패스워드*</th>
                <td><input type="password" class="form-control" id="pw1" placeholder="영소문자,숫자 혼합 8자리"
                required="required"></td>      
            </tr>
             
            <tr>
                <th>패스워드확인*</th>
                <td><input type="password" class="form-control" id="pw2" placeholder="영소문자,숫자 혼합 8자리"
                required="required"></td>        
            </tr>
             
            <tr>
                <th>이름*</th>
                <td><input type="text" class="form-control" id="name"
                required="required"></td>       
            </tr>
             
            <tr>
                <th>닉네임*</th>
                <td><input type="text" class="form-control" id="nickname" placeholder="최대 5글자"
                required="required"></td> 
                <td><button type="button" class="btn" >중복검사</button></td>      
            </tr>
            
            <tr>
            	<th>생년월일*</th>
            	<td><input type="date" class="form-control" id="birth"
            	required="required"></td>
            	
            </tr>
             
            <tr>
            	<th>성별*</th>
            	<td>
	            	<input type="radio"  name="gender" value="0">남자
	            	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	            	<input type="radio"  name="gender" value="1">여자
            	</td>
            </tr>
            
             <tr>
                <th>이메일*</th>
                <td><input type="email" class="form-control" id="email"
                required="required"></td> 
                <td><button type="button" class="btn" >중복검사</button></td>         
            </tr>
            
            <tr>
                <th>자기소개(선택)</th>
                <td><input type="text" class="form-control" id="intro" placeholder="30자 이내"></td>       
            </tr>
             
             
            <tr>
                <th>관심 여행테마(최대 3가지)</th>    
                <td>
                <input type="checkbox"  name="thema" value="1">자연 &nbsp;&nbsp;
                <input type="checkbox"  name="thema" value="2">문화관광 &nbsp;&nbsp;
                <input type="checkbox"  name="thema" value="3">레저/스포츠 &nbsp;&nbsp;
                <input type="checkbox"  name="thema" value="4">쇼핑 &nbsp;&nbsp;
                <input type="checkbox"  name="thema" value="5">맛집 &nbsp;&nbsp;
                <input type="checkbox"  name="thema" value="6">기타 &nbsp;&nbsp;
                </td>     
            </tr>
                       
        </table>
        <br>
        
        <div style="text-align: center;">
          	<button type="submit" class="btn" style="width: 240px; margin: 5px;">회원정보수정</button>
            <button type="button" class="btn" style="width: 240px; margin: 5px;">취소</button>
        </div>
        
    </form>
</div>
 
</div>
</div>
</div>

<script type="text/javascript">
	

	$(document).ready(function()
	{
		$("#join").click(function()
		{
			var id = /^[A-Za-z0-9+]{8,12}$/;

			if (!id.test(document.getElementById("id").value))
			{
				alert("아이디가 조건에 맞지 않습니다");
				$("#id").focus();
				return false;
			}
			
			var pw = /^[A-Za-z0-9+]{8,12}$/;
			
			if (!pw.test(document.getElementById("pw1").value))
			{
				alert("패스워드가 조건에 맞지 않습니다");
				$("#pw1").focus();
				return false;
			}
			
			if(document.getElementById("pw1").value != document.getElementById("pw2").value )
			{
				alert("패스워드와 패스워드확인이 일치하지 않습니다. ");
				$("#pw1").focus();
				return false;
			}
			
			
	        if($("#nickname").val().length > 5) 	   
	        {
	        	alert("닉네임은 최대 5글자 입니다.");
	        	$("#nickname").focus();
	            return false;
	        }
	        
	        if($("#intro").val().length > 30) 	   
	        {
	        	alert("자기소개는 30자 이내로 작성해주세요.");
	        	$("#intro").focus();
	            return false;
	        }
		
		
			
		});
	});
	
	

	
	
</script>

</body>
</html>