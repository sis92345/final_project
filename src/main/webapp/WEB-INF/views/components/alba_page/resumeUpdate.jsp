<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="UTF-8">
<title>이력서 수정</title>
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
			$('#txtTitle').val(resume.title);
			$('#txtName').val(resume.name);						
			$('#txtAge').val(resume.age);						
			$('#cont').text(resume.work_content);					
       }    
       });
    	$('#btnReset').click(function(){
			location.href="/albaPage";
        });
    	$('#btnWrite').on('click', function(){
    		let title = $('#txtTitle').val();
    		let worktime = "";
    		let content = getDataFromTheEditor();
    		
    		if($('#selSchedule').val() == "무관"){
    			worktime = $('#selSchedule').val();
    		}else{
    			worktime = $('#selSchedule').val() + $('#selSchedule1').val();
    		}
    			
    		if(title == ""){
    			title = "입력하지 않은 이력서 제목";
    		}
    		$.ajax({
                url: "/rsum", // Request URL
                type: "PUT", //GET or POST
                contentType : 'application/json;charset=utf-8',
                datatype:"json", //gender, age
                data: JSON.stringify({
    				'id':$('#userid').val(),
    				'rsum_seq':seq,
    				'title': title,
    				'name': $('#txtName').val(),
    				'academic_ability': $("#selAcademic_ability option:selected").val(),
    				'local': $('#selLocal option:selected').val() + $('#selLocalSub option:selected').val(),
    				'business_type': $('#selBusiness_type option:selected').val(),
    				'work_type': $("input:radio[name='worktype']:checked"). val(),
    				'work_time': worktime,
    				'work_date': $('#selWorkdate option:selected').val(),	//들어가는거 보고 고치기
    				'work_content': content,
    				'rsumopen': $("input:radio[name='rsumopen']:checked").val(),
    				'gender':$("input:radio[name='gender']:checked").val()
                }),
                success: function (data) { 
                    if(data.code == "success"){
                        alert("이력서 수정 성공");
    					location.href="/alba";
                    }else{
                    	alert("이력서 저장 중 문제 발생");
                    }
                }
            }); 
    	});
	});
	

</script>
</head>
<body>
	${menubar} ${info}
	
	<input type="text" hidden="hidden" value="${sessioninfo.id}" id="userid"/>
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
							<th>이력서 수정</th>
							<td>
								<div class="ui input focus">
									<input type="text" name="title" id="txtTitle" size="74" id="title"
										placeholder="내 이력서를 돋보이게 하는 PR 한마디" required="required"><br />
								</div>
							</td>
						</tr>
						<tr>
							<th>이름</th>
							<td>
								<div class="ui input focus">
									<input type="text" name="name" id="txtName" size="74" id="txtName"
										placeholder="이름을 입력하세요" required="required">
								</div>						
							</td>
						</tr>
						<tr>
							<th>성별</th>
							<td id="gender">
								<div class="ui input focus">							
									<input type="radio" name="gender" id="gender1" value="남성" checked="checked">남성
									&nbsp; &nbsp; 
									<input type="radio" name="gender"  id="gender2" value="여성">여성 &nbsp; &nbsp;
								</div>							
							</td>
						</tr>
						<tr>
							<th>나이</th>
							<td>
								<div class="ui input focus">
									<input type="number" name="age" id="txtAge" size="74" id="txtAge"
										placeholder="이름을 입력하세요" required="required">
								</div>
							</td>
						</tr>
						<tr>
							<th>이력서 공개 여부</th>
							<td id="rsumopen">		
								<input type="radio" name="rsumopen" id="checkOpen" value="0">비공개&nbsp; &nbsp;
								<input type="radio" name="rsumopen" id="checkOpen1" value="1" checked="checked">공개						
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
									<td>
										<select class='ui search dropdown' name="academic_ability" id="selAcademic_ability">
											<option value="">--최종학력--</option>
											<option value="대학(4년제)" selected>대학(4년제)</option>
											<option value="대학(2,3학년제)">대학(2,3학년제)</option>
											<option value="고등학교">고등학교</option>
											<option value="중학교">중학교</option>
											<option value="초등학교">초등학교</option>
									</select>
									</td>
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
									<td>	
										<!--Json으로 값 불러오기: 나중에 구현--> <select
										class='ui search dropdown' name="local" id="selLocal">
											<option value="">-시/도--</option> &nbsp;&nbsp;
									</select> <select class='ui search dropdown' name="localSub"
										id="selLocalSub">
											<option value="">-시/군/구--</option>
									</select>									
									</td>
								</tr>
								<tr>
									<th>업직종</th>
									<td>
										<div class="ui input focus">
											<select class='ui search dropdown' name="business_type"
												id="selBusiness_type">
												<option value="">--업직종--</option>	<!-- 아무것도 입력하지 않으면 공백으로 값이 들어간다 -->
												<option value="서빙">서빙</option>
												<option value="음료">음료</option>
												<option value="문구">문구</option>
												<option value="판매">판매</option>
												<option value="놀이">놀이</option>
												<option value="영화">영화</option>
												<option value="유통">유통</option>
											</select>
										</div>									
									</td>
								</tr>
								<tr>
									<th>근무형태</th>
									<!-- WORKTYPE -->
									<td><input type="radio" name="worktype" id="alba"
										value="" checked="checked" hidden="hidden"><input type="radio" name="worktype" id="alba"
										value="알바">알바 &nbsp; &nbsp; <input type="radio"
										name="worktype" id="fullTime" value="정규직">정규직 &nbsp;
										&nbsp; <input type="radio" name="worktype" id="partTime"
										value="계약직">계약직 &nbsp; &nbsp; <input type="radio"
										name="worktype" id="dispatch" value="파견직">파견직 &nbsp;
										&nbsp; <input type="radio" name="worktype" id="intern"
										value="인턴">인턴 &nbsp; &nbsp;</td>
								</tr>
								<tr>
									<th>근무기간</th>
									<!-- WORKDATE -->
									<td><select class='ui search dropdown' name="work_date"
										id="selWorkdate">
											<option value="">--근무기간--</option>	<!-- 아무것도 입력하지 않으면 공백으로 값이 들어간다 -->
											<option value="1년 이상">1년 이상</option>
											<option value="6개월 ~ 1년">6개월 ~ 1년</option>
											<option value="3개월 ~ 6개월">3개월 ~ 6개월</option>
											<option value="1개월 ~ 3개월">1개월 ~ 3개월</option>
											<option value="1개월 이하">1개월 이하</option>
									</select></td>
								</tr>
								<tr>
									<th>근무일시</th> <!-- WORKTIME -->
									<td><select class='ui search dropdown' name="work_time"
										id="selSchedule">
											<option value="">-근무요일--</option>
											<option value="무관">무관</option>
											<option value="평일">평일</option>
											<option value="주말">주말</option>
									</select> &nbsp; <select class='ui search dropdown' name="work_time"
										id="selSchedule1">
											<option value="">-근무일시--</option>	<!-- 아무것도 입력하지 않으면 공백으로 값이 들어간다 -->
											<option value="오전">오전</option>
											<option value="오후">오후</option>
											<option value="저녁">저녁</option>
											<option value="새벽">새벽</option>
									</select></td>
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

						<textarea name="work_content"id="editor" ></textarea> <!-- 아무것도 입력하지 않으면 공백으로 값이 들어간다 --> <!-- 아무것도 입력하지 않으면 공백으로 값이 들어간다 -->
					</div>
					<br>
					<br>
					<br>
				</div>
				
				
				<div class="ui grid">
					<div class="ten wide column">
						
					</div>
					<div class="six wide right aligned column">
						<div id="btnResumeCreate">					
							<button class="ui red button" type="button" id="btnWrite">이력서 저장</button>
							<button type="reset" class="ui primary button" id="btnReset">이력서 취소</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script>
 		let theEditor;
        ClassicEditor
            .create( document.querySelector( '#editor' ) )
            .then(editor => {
    		theEditor = editor;

  			})
            .catch( error => {
                console.error( error );
            } );
        function getDataFromTheEditor() {
        	  return theEditor.getData();
        	}
        document.getElementById('btnWrite').addEventListener('click', () => {
        	  
        	});
</script>
</body>
</html>