<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="components/communityread_page/community_contents.jsp"
	var="communitycontent" />
	<c:import url="components/community_page/community_allcontent.jsp"
	var="allcontent" />
	
	<c:import url="components/communityread_page/community_feed.jsp"
	var="communityfeed" />
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
	href="static/css/page_styles/community_page/community.css" />

<script src="static/css/styles/visibility.js"></script>
<script src="static/css/styles/sidebar.js"></script>
<script src="static/css/styles/transition.js"></script>
<script src="static/css/Semantic/semantic.js"></script>
<script src="static/js/jquery.twbsPagination.js"></script>

<script src="//unpkg.com/jscroll/dist/jquery.jscroll.min.js"></script>
<script src="static/js/bindWithDelay.js"></script>

<script src="static/js/communityread_page/communityread.js"></script>
<script src="static/js/common/commons.js"></script>
<link rel="stylesheet"href="static/css/common/common.css" />
<script>
	var startpage = ${param.page};
	//var starttitle = ${param.title};
</script>
</head>
<body>

	${menubar}
	${info}
	
	

	<div class="ui container" style="padding-top: 5px" id="maincontainer">
		<div class="ui grid" id="total" style="padding-button: 2%">
			<div class="column" id="ctable" style="overflow: scroll">
				<div id="content" style="height: 100%;">
					${communitycontent} 
					
					<div style="padding-left: 5px;" id="replypage">
					${communityfeed}
					</div>
				</div>
			</div>

		</div>
		<h2 class="ui header">알바토크 전체글</h2>
		${allcontent}
	</div>
	
</body>
 
</html>
