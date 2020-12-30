<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="components/detail_page/list.jsp" var="list" />
<c:import url="common/menubar.jsp" var="menubar" />
<c:import url="common/info.jsp" var="info" />
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>${param.job}- 상세검색 | 알바구니</title>
<script src="static/js/jquery-3.5.1.js"></script>
<script src="static/css/Semantic/semantic.js"></script>
<link rel="stylesheet" href="static/css/Semantic/semantic.css" />
<link rel="stylesheet" href="static/css/slick/slick.css" />
<link rel="stylesheet" href="static/css/slick/slick-theme.css" />
<link rel="stylesheet"
	href="static/css/page_styles/detail_page/detail.css" />


<script src="static/css/styles/visibility.js"></script>
<script src="static/css/styles/sidebar.js"></script>
<script src="static/css/styles/transition.js"></script>

<script src="//unpkg.com/jscroll/dist/jquery.jscroll.min.js"></script>
<script src="static/js/bindWithDelay.js"></script>
<script src="static/js/common/commons.js"></script>



<link rel="stylesheet"href="static/css/common/common.css" />

<script>
	var jobname = "${param.job}";
	var selectedicon = "${param.id}";
	var getnum = "${param.num}";
	
</script>



<script src="static/js/detail_page/detail.js"></script>

</head>
<body>
	${menubar} ${info}

	<div class="ui container" style="padding-top: 10px" id="maincontainer">
		<div class="ui grid" id="total" style="padding-button: 2%">
			<div class="sixteen wide column" id="contents"
				>


<div class="ui top attached tabular menu" id="menu">
  <a class="item first" data-tab="first">서빙</a>
  <a class="item second" data-tab="second">음료</a>
  <a class="item third" data-tab="third">의류</a>
  <a class="item fourth" data-tab="fourth">판매</a>
  <a class="item fifth" data-tab="fifth">문구</a>
  <a class="item sixth" data-tab="sixth">놀이</a>
  <a class="item seventh" data-tab="seventh">영화</a>
  <a class="item eighth" data-tab="eighth">유통</a>
</div>
<div id="lists">
<div class="ui bottom attached tab segment" data-tab="first" id="first"></div>
<div class="ui bottom attached tab segment" data-tab="second" id="second"></div>
<div class="ui bottom attached tab segment" data-tab="third" id="third"></div>
<div class="ui bottom attached tab segment" data-tab="fourth" id="fourth"></div>
<div class="ui bottom attached tab segment" data-tab="fifth" id="fifth"></div>
<div class="ui bottom attached tab segment" data-tab="sixth" id="sixth"></div>
<div class="ui bottom attached tab segment" data-tab="seventh" id="seventh"></div>
<div class="ui bottom attached tab segment" data-tab="eighth" id="eighth"></div>
	</div>	
				<div id="content" >
				
				</div>
				
			</div>
		</div>
	</div>
	
	
	<script src="static/css/slick/slick.min.js"></script>
	
</body>


</html>
