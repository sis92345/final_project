<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>이력서로 지원한 기업 확인</h1>
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
                <th class="text-right">지역</th>
                <th>기업명/모집제목</th>
                <th>급여</th>
                <th>근무시간</th>
                <th>등록일</th> 
            </tr>
        </thead>
        <tbody></tbody>
        
    </table>
</div>
</body>
</html>