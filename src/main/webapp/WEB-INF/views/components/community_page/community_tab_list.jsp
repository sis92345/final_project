<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>



<h3 class="ui header">알바토크 인기글</h3>


<div class="ui relaxed divided list">
  <c:forEach items="${listinfo}" var="list" begin="0" end="4" step="1">
	<div class="item">
    <i class="large github middle aligned icon"></i>
    <div class="content">
      <a class="header" href="community_read?page=1&title=${list.boardtalk_seq}">
     (${list.tag}) ${list.title}</a>
 <div style="text-align:right">
   <div class="description">작성자 ${list.id} / ${list.regdate}/ 조회수 ${list.readnum}</div>
   
     </div>
    </div>
  </div>
  
</c:forEach>
  
  </div>
  
  