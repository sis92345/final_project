<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<h3 class="ui dividing header">댓글 (${replycomment.size()})</h3>
 <c:forEach items="${replycomment}" var="list" begin="0" end="${replycomment.size()}" step="1">
	
	
	 <a class="avatar">
      <img src="/images/avatar/small/elliot.jpg">
    </a>
    <div class="content">
      <a class="author">${list.id}</a>
      <div class="metadata">
        <span class="date">${list.regdate}</span>
      </div>
      <div class="text">
        <p>${list.comment_content}</p>
      </div>
	      <div class="actions">
	        <a class="reply">Reply</a>
	        <div class="rp">
	        
	        </div>
	      </div>
	</div>
<br/><br/>

</c:forEach>

