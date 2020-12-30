<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<c:forEach items="${googleinfo}" var="goo">
	<div class="ui list">
  <div class="item">
    <i class="map marker icon"></i>
    <div class="content">
      <a class="header" id="${goo.boardalba_seq}">${goo.title}</a>
      등록날짜 : ${goo.regdate} &nbsp;조회수: ${goo.readnum}
      <div class="description">
      <br/>
      ${goo.company_name}에서 올린 공고입니다<br/> 
      주소 : ${goo.address}<br/>
      <span style="color:red">급여 : ${goo.sal}</span> <br/>
      근무기간 : ${goo.workdate} 근무일시 : ${goo.worktime} 근무형태:${goo.worktype}
      </div>
    </div>
  </div>
</div>
<br/>
</c:forEach>



