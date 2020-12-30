<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="listSlider" id="listSlider">
<c:forEach items="${listinfo}" var="list" begin="0" end="${listinfo.size() }" step="1">
<div>
<div class="ui card">
	<a class="image" onclick="getcontent(${list.boardalba_seq})" > <img src="https://semantic-ui.com/images/avatar2/large/matthew.png"/>
	</a>
	<div class="content">
		<a class="header" onclick="getcontent(${list.boardalba_seq})">(${list.worktype})${list.title}
		</a>
		
		<div class="meta">
		시간 : ${list.worktime} / 기간 : ${list.workdate} <br/>
			${list.regdate}
		</div>
	</div>
</div>
</div>
</c:forEach>
</div>