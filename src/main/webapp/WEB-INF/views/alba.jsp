<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

	<c:import url="common/menubar.jsp" var="menubar"/>
	<c:import url="common/info.jsp" var="info"/>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title>Insert title here</title>
<script src="static/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="static/css/Semantic/semantic.css" />
<link rel="stylesheet" href="static/css/slick/slick.css" />
<link rel="stylesheet" href="static/css/slick/slick-theme.css" />
<link rel="stylesheet"
	href="static/css/page_styles/alba_page/alba.css" />

<script src="static/css/styles/visibility.js"></script>
<script src="static/css/styles/sidebar.js"></script>
<script src="static/css/styles/transition.js"></script>
<script src="static/css/Semantic/semantic.js"></script>

<script src="//unpkg.com/jscroll/dist/jquery.jscroll.min.js"></script>
<script src="static/js/bindWithDelay.js"></script>

<script src="static/js/alba_page/alba.js"></script>
<script src="static/js/common/commons.js"></script>
<link rel="stylesheet"href="static/css/common/common.css" />

</head>
<body>
	${menubar}
	${info}

<div class="ui container">
<div class="ui grid">

<div class="three wide column">
<div class="ui vertical menu" id="menudiv" style="width:100%;">
  <div class="item m_bar" >
    <div class="header">이력서 관리</div>
    <div class="menu">
    <a class="item" id="WriteResume">이력서 작성</a>
    <a class="item active" id="ChangeResume">이력서 관리</a>
      
    </div>
  </div>
  <div class="item m_bar">
    <div class="header">알바활동</div>
    <div class="menu">
      <a class="item" id="ApplyStatus">지원현황</a>
    </div>
  </div>
  <div class="item m_bar">
    <div class="header">채용정보</div>
    <div class="menu">
      <a class="item" id="Locations">주변알바</a>
    </div>
  </div>
  <div class="item m_bar">
    <div class="header">회원정보</div>
    <div class="menu">
      <a class="item" id="AlbaStatus">정보 확인 / 수정</a>
    </div>
  </div>
</div>
</div>

<div class="thirteen wide column">


<div class="contents" id="content_main" >
	asd
</div>
</div>
</div>
</div>

















</body>
</html>