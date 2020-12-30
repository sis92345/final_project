<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>지원한 이력서 리스트</h1>
<br>
<br>
<div id="resumeMgmt">
    <div id="btnGonggoCreate">
        <button class="ui red button">선택한 이력서 삭제 ✖</button>
        <button class="ui primary button" id="gonggoWrite">공고 등록 ✔</button> 
    </div>
    <table class="ui striped table ui center aligned segment">
        <thead>
            <tr>
                <th class="text-right">이력서제목</th>
                <th>근무일시</th><th>근무형태</th><th>등록일</th> 
                <tr>
	                	<td>${title}</td>
	                	<td>${work_time}</td>
	                	<td>${work_type}</td>
	                	<td>${regdate}</td>
            	</tr>
            </tr>
        </thead>
        <tbody></tbody>
        
    </table>
</div>
</body>
</html>