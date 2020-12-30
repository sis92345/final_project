<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="components/communityread_page/community_feed_comment.jsp"
	var="comment" />
	
<div class="ui right aligned container">
	<a class="ui button" href="/community?page=${param.page}">
  목록으로
</a>
</div>
<div class="ui comments">
  
  
  <div class="comment" id="getfeed">
  
  ${comment}
  </div>
  
   <form class="ui reply form" name="replyform">
   <input type="hidden" name="boardtalk_seq" value="${param.title}">
   <input type="hidden" name="id" value="taeho2">
	<input type="hidden" name="lvl" value="0">
   
    <div class="field">
      <textarea class="txtarea" id="txtar" maxlength="60" name="comment_content" style="resize: none; height:100px;"></textarea>
      <span class="counter"></span>
    </div>
  </form>
  <br/>
   <button  type="button" id="sumit" class="ui blue labeled submit icon button">
      <i class="icon edit"></i> Add Reply
    </button>
</div>