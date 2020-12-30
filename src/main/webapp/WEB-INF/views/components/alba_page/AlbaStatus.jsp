<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보 페이지</title>
<link rel="stylesheet" href="css/bootstrap.css" />
<link rel="stylesheet" href="css/style1.css">
<script src="js/jquery-3.5.1.js"></script>
<script>
$(document).ready(function(){
	$('#btnUpdate').click(function(){
		if($(this).text() == '정보변경'){
			let email = $('#email').text();
			$('#email').replaceWith("<input id='txtEmail' type='email' value='" + email + "'/>");
		
			let tel = $('#tel').text();
			$('#tel').replaceWith("<input id='txtTel' type='tel' value='" + tel + "' />");
			$('#btnUpdate').text('변경완료');
			$('#btnUpdate').removeClass();
			$('#btnUpdate').addClass("btn btn-success");
		}else if($(this).text() == '변경완료'){
			let email = $('#txtEmail').val();
			let tel = $('#txtTel').val();
			location.href = 
				'update.jsp?email=' + email +  '&tel=' + tel;
		}
		
	});
	 $('#btnResume').on('click', function(){
         window.location.href="Resumemgmt.html";// /ProjectM/guestSignUp.html
         });
});

</script>
</head>
<body>
	<h2 class="text-center">회원 정보</h2>
	<div class="container">
		<div class="row">
			<table id="signupTable" class="text-center">
				<tr>
					<th>아이디 &nbsp; &nbsp;</th>
					<%-- <td>${userid}</td> --%>       <!-- DB연동시 사용 -->
					<td>project</td>
				</tr>
				<tr>
					<th>이름 &nbsp; &nbsp;</th>
					<%-- <td>${name}</td> --%>       <!-- DB연동시 사용 -->
					<td>p.젝트</td>
				</tr>
				<tr>
					<th>이메일 &nbsp; &nbsp;</th>
					<%-- <td><span id="email">${individual.email}</span></td> --%>       <!-- DB연동시 사용 -->
					<td><span id="email">aaa@naver.com</span></td>
				</tr>
				<tr>
					<th>전화번호 &nbsp; &nbsp;</th>
					<%-- <td><span id="tel">${individual.tel}</span></td> --%>       <!-- DB연동시 사용 -->
					<td><span id="tel">010-1234-5678</span></td>
				</tr>
			</table>
		</div>
	</div>
	<br>
	<div class="container">
		<div class="row">
			<div id="btnSignup" class="text-center">
				<button type="button" class="btn btn-warning" id="btnUpdate">정보변경</button>
				<button type="button" class="btn btn-warning" id="btnResume">내 이력서 확인</button>
			</div>
			
		</div>
	</div>
</body>
</html>