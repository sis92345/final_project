<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:forEach items="${current_list}" var="list" begin="0" end="6" step="1">
<div>
  <div class="ui card">
    <a class="image" href="/detail?id=first&num=${list.boardalba_seq}">
    <img src="https://semantic-ui.com/images/avatar2/large/matthew.png">
  </a>
    <div class="content">
      <a class="header" href="/detail?id=first&num=${list.boardalba_seq}">(${list.worktype})${list.title}</a>
      <div class="meta">
        <span class="date" style="color:skyblue">등록시간 ${list.regdate}</span>
      </div>
      <div class="description" >
        알바시간 ${list.worktime} / 기간 ${list.workdate} <br/>
		
      </div>
    </div>
    <div class="extra content">
      <a>
        <i class="user icon"></i>
        조회수 ${list.readnum}
      </a>
    </div>
  </div>
</div>
</c:forEach>
