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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<script type="text/javascript">
	
	function themaCodeArr() {
		var themaCode = [];
		$("input[name='themaCode']:checked").each(function(i){
			themaCode.push($(this).val());
		})
	}
	
</script>

</head>
<body>
	<div class="container" style="width: 1500px;">
		<div class="row">
			<div class="col-sm-12 text-center">
				<div class="col-sm-3"></div>

				<div class="col-sm-6">
					<h2><a href="beforemain.do"><img src="<%=cp %>/resources/images/To_gather.png" style="width: 500px;" height="150px;"></a></h2>
					<h3><span style="font-family: 맑은 고딕; font-size: 20pt;">회원가입</span></h3>
					<h5><span style="font-family: 맑은 고딕; font-size: 12pt; color: red;">* 필수 입력 사항</span></h5>
					<br>
					<form action="joininsert.do"  method="post" id="form" >
						<table class="table table-boardered">
							<tr>
								<th>아이디*</th>
								<td>
									<input type="text" class="form-control" id="userId" name="userId" 
									placeholder="영소문자,숫자 혼합 8자리 ~ 12자리" onkeydown="inputIdChk()">
								</td>
								<td>
									<button type="button" class="btn" id="idCheckBtn">중복검사</button>
									<input type="hidden" id="idCheck" value="idUncheck">
								</td>
							</tr>
							<tr>
								<th>패스워드*</th>
								<td><input type="password" class="form-control" id="userPw" name="userPw"
									placeholder="영소문자,숫자 혼합 8자리 ~ 12자리"></td>
							</tr>

							<tr>
								<th>패스워드확인*</th>
								<td><input type="password" class="form-control" id="pw2" name="pw2"
									placeholder="영소문자,숫자 혼합 8자리 ~ 12자리"></td>
							</tr>

							<tr>
								<th>이름*</th>
								<td><input type="text" class="form-control" name="name" id="name"></td>
							</tr>

							<tr>
								<th>닉네임*</th>
								<td><input type="text" class="form-control" id="nickName" name="nickName"
									placeholder="최대 5글자" onkeydown="inputNickNameChk()">
								</td>
								<td>
									<button type="button" class="btn" id="nicknameCheckBtn">중복검사</button>
									<input type="hidden" id="nicknameCheck" value="nicknameUncheck">
								</td>
							</tr>

							<tr>
								<th>생년월일*</th>
								<td><input type="date" class="form-control" id="birth" name="birth"></td>

							</tr>

							<tr>
								<th>성별*</th>
								<td>
									<input type="radio" name="genderCode" value="1" checked="checked">남자
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
									<input type="radio" name="genderCode" value="2">여자</td>
							</tr>

							<tr>
								<th>이메일*</th>
								<td>
									<input type="email" class="form-control" id="email" name="email" onkeydown="inputEmailChk()">
								</td>
								<td>
									<button type="button" class="btn" id="emailCheckBtn">중복검사</button>
									<input type="hidden" id="emailCheck" value="emailUncheck">
								</td>
							</tr>

							<tr>
								<th>자기소개(선택)</th>
								<td><input type="text" class="form-control" id="intro" name="intro"
									placeholder="30자 이내"></td>
							</tr>


							<tr>
								<th>관심 여행테마(최대 3가지)</th>
								<td><input type="checkbox" name="themaCode" value="1" onclick="javascript:chk(this)">자연
									&nbsp;&nbsp; <input type="checkbox" name="themaCode" value="2" onclick="javascript:chk(this)">문화관광
									&nbsp;&nbsp; <input type="checkbox" name="themaCode" value="3" onclick="javascript:chk(this)">레저/스포츠
									&nbsp;&nbsp; <input type="checkbox" name="themaCode" value="4" onclick="javascript:chk(this)">쇼핑
									&nbsp;&nbsp; <input type="checkbox" name="themaCode" value="5" onclick="javascript:chk(this)">맛집
									&nbsp;&nbsp; <input type="checkbox" name="themaCode" value="6" onclick="javascript:chk(this)">기타
									&nbsp;&nbsp;</td>
							</tr>

						</table>
						<br>
						<div style="margin-bottom: 50px;">
						<button type="submit" id="join" name="join" class="btn btn-block">회원가입</button>						
						</div>
					</form>
					
				</div>

			</div>
		</div>
	</div>
<script type="text/javascript">

$("#userId").focus();
	$(document).ready(function()
	{ 	
		var id = /^[A-Za-z0-9+]{8,12}$/;
		
		var pw = /^[A-Za-z0-9+]{8,12}$/;
		
		$("#join").click(function()
		{	
			// 다시 중복체크
			function inputIdChk() {
				document.getElementById("idCheck").value = "idUnCheck";
			}
			function inputNickNameChk() {
				document.getElementById("nicknameCheck").value = "nicknameUnCheck";
			}
			function inputEmailChk() {
				document.getElementById("emailCheck").value = "emailUnCheck";
			}
			
			if($("#userId").val()=="" || $("#userPw").val()=="" || $("#pw2").val()=="" || $("#name").val()=="" || $("#nickName").val()==""
					|| $("#birth").val()==""  || $("#email").val()=="")
			{
				alert("필수 항목이 누락되었습니다.");
				return false;
			}
			
			if (!id.test(document.getElementById("userId").value))
			{	
				alert("아이디가 조건에 맞지 않습니다");
				$("#userId").focus();
				return false;
			}
			
			if (!pw.test(document.getElementById("userPw").value))
			{
				alert("패스워드가 조건에 맞지 않습니다");
				$("#userPw").focus();
				return false;
			}
			
			if(document.getElementById("userPw").value != document.getElementById("pw2").value)
			{
				alert("패스워드와 패스워드확인이 일치하지 않습니다. ");
				$("#pw2").focus();
				return false;
			}
			
	        if($("#nickName").val().length > 5) 	   
	        {
	        	alert("닉네임은 최대 5글자 입니다.");
	        	$("#nickName").focus();
	            return false;
	        }
	        
	        if($("#intro").val().length > 30) 	   
	        {
	        	alert("30자 이내로 작성해주세요.");
	        	$("#intro").focus();
	            return false;
	        }
	        
			if($("#idCheck").val() != "idCheck")
			{	
				alert("아이디를 중복체크 해주세요!");
				return false;
			}
			
			if($("#nicknameCheck").val() !="nicknameCheck")
			{
				alert("닉네임을 중복체크 해주세요!");
				return false;
			}
			
			if($("#emailCheck").val()!="emailCheck")
			{
				alert("이메일을 중복체크 해주세요!");
				return false;
			}
		});
		
		$("#idCheckBtn").click(function() {
			var userId = $("#userId").val();
			
			if(userId == "")
			{
				alert("아이디를 입력해주세요.");
				return false;
			}
			
			$.ajax({
				url : "<%=cp%>/idcheck.do",
				type : "post",
				data : {'userId':userId},
				success: function(count) {
					
					if (!id.test(document.getElementById("userId").value))
					{	
						alert("아이디가 조건에 맞지 않습니다");
						$("#userId").focus();
						return false;
					}
					
					// 중복안됨
					if(count == 0)
					{
						alert("사용가능한 아이디입니다.");
						document.getElementById("idCheck").value = "idCheck";
						
					}
					else
					{
						alert("중복된 아이디입니다.");
						return false;
					}
				}
			});
		});
		
		$("#nicknameCheckBtn").click(function() {
			var nickName = $("#nickName").val();
			
			if(nickName == "")
			{
				alert("닉네임을 입력해주세요.");
				return false;
			}
			
			$.ajax({
				url : "<%=cp%>/nicknamecheck.do",
				type : "post",
				data : {'nickName':nickName},
				success: function(count) {
					
					if($("#nickName").val().length > 5) 	   
			        {
			        	alert("닉네임은 최대 5글자 입니다.");
			        	$("#nickName").focus();
			            return false;
			        }
					
					// 중복안됨
					if(count == 0)
					{
						alert("사용가능한 닉네임입니다.");
						document.getElementById("nicknameCheck").value = "nicknameCheck";
					}
					else
					{
						alert("중복된 닉네임입니다.");
						return false;
					}
				}
			});
		});
		
		$("#emailCheckBtn").click(function() {
			var email = $("#email").val();
			
			if(email == "")
			{
				alert("이메일을 입력해주세요.");
				return false;
			}
			
			$.ajax({
				url : "<%=cp%>/emailcheck.do",
				type : "post",
				data : {'email':email},
				success: function(count) {
									
					// 중복안됨
					if(count == 0)
					{
						alert("사용가능한 이메일입니다.");
						document.getElementById("emailCheck").value = "emailCheck";
						
					}
					else
					{
						alert("중복된 이메일입니다.");
						return false;
					}
				}
			});
		});
				
	});

	
</script>

<script type="text/javascript">
function chk(obj){

	var chkbox = document.getElementsByName("themaCode");

	var chkCnt = 0;

	for(var i=0;i<chkbox.length; i++){

		if(chkbox[i].checked){

			chkCnt++;

		}
	}

	if(chkCnt>3){

		alert("관심테마는 최대 3개까지 선택가능합니다.");

		obj.checked = false;

		return false;
	}
}
</script>

</body>
</html>