<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="common/menubar.jsp" var="menubar" />
<c:import url="common/info.jsp" var="info" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원가입 페이지 입니다</title>
    <script src="static/js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="static/css/Semantic/semantic.css" />
    <script src="static/js/common/commons.js"></script>
    <script src="static/css/Semantic/semantic.js"></script>
<link rel="stylesheet"href="static/css/common/common.css" />
<script>
$(document).ready(function () {
	$("#p3").blur(function(){
		$("#tel").val($("#p1").val()+$("#p2").val()+$("#p3").val());
	});

	 $("input[name=id]").keyup(function(event){ 
		   if (!(event.keyCode >=37 && event.keyCode<=40)) {
		    var inputVal = $(this).val();
		    $(this).val(inputVal.replace(/[^a-z0-9]/gi,''));
		   }
		  });
});
</script>
  </head>
  <body>
  ${menubar} ${info}
  
    <div class="ui container" id="container" style="padding-top:30px;">
    <h2 class="ui header">개인(알바)회원가입 페이지입니다</h2>
      <form class="ui form" action="register_alba" method="POST">
      <div class="two fields">
  <div class="field">
    <label>아이디</label>
    <input type="text" name="id"  placeholder="아이디를 입력 해주세요(6-12자리)"
    pattern=".{6,12}"
    title="6글자이상 써주세요"
    maxlength="12"
     required="required">
  </div>
  </div>
  <div class="two fields">
  <div class="field">
    <label>비밀번호</label>
    <input type="password" name="password" 
     pattern=".{6,12}"
    title="6글자이상 써주세요"
    maxlength="12"
    placeholder="비밀번호를 입력 해주세요(6-12자리)" required="required">
    
    <input type="hidden" name="division" value="1"/>
  </div>
  </div>
  <br/>
  <hr/><br/>
  <div class="two fields">
  <div class="field">
    <label>이름</label>
    <input type="text" name="name" 
    maxlength="4"
    placeholder="이름을 입력 해주세요" required="required">
  </div>
  </div>
  <div class="two fields">
  <div class="field">
  	<label>이메일</label>
    <input type="email" name="email"
     maxlength="30"
      placeholder="이메일을 입력 해주세요(한글)" required="required">
    </div>
  </div>
   <div class="equal width fields">
    <div class="field">
      <label>전화번호</label>
      <input type="number" id="p1" placeholder="(XXX)" required="required">
    </div>
    <div class="field">
      <label>&nbsp;</label>
      <input type="number" id="p2" placeholder="XXX" required="required">
    </div>
    <div class="field">
      <label>&nbsp;</label>
      <input type="number" id="p3" placeholder="XXX" required="required">
      <input type="hidden" id="tel"name="tel" value=""/>
    </div>
  </div>
  <button class="ui button" type="submit">가입하기</button>
</form>
    </div>
  </body>
</html>