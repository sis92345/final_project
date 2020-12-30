<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>공고 리스트</h1>
<br>
<br>
<div id="resumeMgmt">
    <div id="btnGonggoCreate">
        <button class="ui red button">선택한 공고 삭제 ✖</button>
        <button class="ui primary button" id="gonggoWrite">공고 등록 ✔</button> 
    </div>
    <table class="ui striped table ui center aligned segment">
        <thead>
            <tr>
                <th>공고제목</th><th>근무요일</th> <th>근무시간</th>  <th>등록일</th> 
                	<tr>
	                	<td>${g_title}</td>
	                	<td>${workday}</td>
	                	<td>${worktime}</td>
	                	<td>${regdate}</td>
            		</tr>
        </thead>
        <tbody></tbody>
        
    </table>
</div>
</body>
</html>