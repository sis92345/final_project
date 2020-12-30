<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>내 이력서 확인하기</h1>
<br>
<br>
<div id="resumeMgtm">
    <div id="btnResumeCreate">
        <button class="ui red button">선택한 이력서 삭제</button>
        <button class="ui primary button" id="resumeWrite">이력서 작성하기</button> 
    </div>
    <table class="ui striped table ui center aligned segment">
        <thead>
            <tr>
                <th colspan="2" class="text-right">이력서 제목</th>
                <th>최종 수정일</th>
                <th>이력서 관리</th>
                <th>공개 여부</th>
                <th>지원 기업</th> 
            </tr>
        </thead>
        <tbody></tbody>
    </table>
</div>
</body>
</html>