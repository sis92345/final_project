<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<div class="ui grid">
   	<div class="doubling four column row" id="resultlist" style="padding:10px;">
   	
<c:if test="${empty results}">
<div>검색어에 일치하는 결과가 없습니다 다른 검색어를 이용해보세요</div>
</c:if>

<c:if test="${results.size() ne null }">
<c:forEach items="${results}" var="list" begin="0" end="${results.size()}" step="1">
<div class="column hvr" style="padding-top:20px" >
    <div class="ui card">
  <a class="image" href="/detail?id=first&num=${list.boardalba_seq}">
    <img src="https://semantic-ui.com/images/avatar2/large/matthew.png">
  </a>
  <div class="content">
    <a class="header" href="/detail?id=first&num=${list.boardalba_seq}">(${list.worktype})${list.title}</a>
    <div class="meta">
		시간 : ${list.worktime} / 기간 : ${list.workdate} <br/>
			${list.regdate}
		</div>
  </div>
</div></div>
</c:forEach>
</c:if>
</div>
</div>