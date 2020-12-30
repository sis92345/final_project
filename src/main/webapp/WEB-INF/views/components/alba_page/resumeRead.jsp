<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="../../common/menubar.jsp" var="menubar" />
<c:import url="../../common/info.jsp" var="info" />
<c:set var="member" value="${sessionScope.id}" />
<html>
<head>
<meta charset="UTF-8">
<title>이력서 작성 페이지</title>
<link rel="stylesheet" href="/static/css/Semantic/semantic.css" />
<script src="/static/js/jquery-3.5.1.js"></script>
<script src="/static/js/common/commons.js"></script>
<script src="/static/css/Semantic/semantic.js"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
<script>
	$(document).ready(function () {
	let seq = location.search.substring(1).split("=")[1];
	$.ajax({
       url: "/rsumRead/" + seq, // Request URL
       type: "GET", //GET or POST
       datatype:"json", //gender, age
       success: function (data) { 
			var resume = data.data;
			$('#hh').text(resume.title);
			$('#title').text(resume.title);
			$('#name').text(resume.name);
			$('#age').text(resume.ag);
			$('#academic_ability').text(resume.academic_ability);
			$('#business_type').text(resume.business_type);
			$('#work_type').text(resume.work_type);
			$('#work_date').text(resume.work_date);
			$('#work_time').text(resume.work_time);
			$('#work_content').html(resume.work_content);
			$('#gender').text(resume.gender);
			if(resume.rsumopen == 0){
				$('#rsumopen').text("비공개");
			}else{
				$('#rsumopen').text("공개");
			}
       }    
       });
    	$('#btnReset').click(function(){
			location.href="/alba";
        });
	});

</script>
</head>
<body>
	${menubar} ${info}
	
	<input type="text" hidden="hidden" value="${member}" id="userid" />
	<!-- 세션 설정에 따라 바꿔야 할 곳 -->
	<div class="ui container" style="padding-top: 20px" id="maincontainer">
		<div class="ui grid" id="total" style="padding-button: 2%">
			<div class="ten wide column">
				<h1 id="hh"></h1>
			</div>
			
			<div class="sixteen wide column">
				<!--이력서 제목 입력-->
				<h3 class="ui horizontal divider header">기본사항</h3>
				<table class="ui celled padded table">
					<thead>
						<tr>
							<th>이력서 제목</th>
							<td id="title">
							</td>
						</tr>
						<tr>
							<th>이름</th>
							<td id="name">						
							</td>
						</tr>
						<tr>
							<th>성별</th>
							<td id="gender">							
							</td>
						</tr>
						<tr>
							<th>나이</th>
							<td id="age">
							</td>
						</tr>
						<tr>
							<th>이력서 공개 여부</th>
							<td id="rsumopen">								
							</td>
						</tr>
					</thead>
				</table>
				<div>

					<!--이력서 학력사항 입력-->
					<div>
						<h3 class="ui horizontal divider header">학력사항</h3>
						<table class="ui celled padded table">
							<thead>
								<tr>
									<th>최종학력</th>
									<td id="academic_ability"></td>
								</tr>
							</thead>
						</table>
					</div>

					<br>
					<br>
					<br>

					<!--이력서 희망근무조건 입력-->
					<div>
						<h3 class="ui horizontal divider header">희망근무조건</h3>
						<table class="ui celled padded table">
							<thead>
								<tr>
									<th>근무지</th>
									<td id="local">										
									</td>
								</tr>
								<tr>
									<th>업직종</th>
									<td id="business_type">									
									</td>
								</tr>
								<tr>
									<th>근무형태</th>
									<!-- WORKTYPE -->
									<td id="work_type"></td>
								</tr>
								<tr>
									<th>근무기간</th>
									<!-- WORKDATE -->
									<td id="work_date"></td>
								</tr>
								<tr>
									<th>근무일시</th> <!-- WORKTIME -->
									<td id="work_time"></td>
								</tr>
							<tbody id="tbody1">

							</tbody>
							</thead>
						</table>
					</div>

					<br>
					<br>
					<br>
					<!--이력서 자기소개서 입력-->
					<div>
						<h3 class="ui horizontal divider header">자기소개서</h3>

						<span id="work_content"></span> <!-- 아무것도 입력하지 않으면 공백으로 값이 들어간다 -->
					</div>
					<br>
					<br>
					<br>
				</div>
				<div class="ten wide column">
				
				</div>
				<div class="six wide right aligned column">
				<div id="btnResumeCreate">					
					<button type="reset" class="ui primary button" id="btnReset">이력서 취소</button>
				</div>
			</div>
			</div>
		</div>

</body>
</html>