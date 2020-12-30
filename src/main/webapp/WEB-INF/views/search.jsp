<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="components/search_page/result_card.jsp" var="result" />
<c:import url="common/menubar.jsp" var="menubar" />
<c:import url="common/info.jsp" var="info" />
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>${param.job}-검색 | 알바구니</title>
<script src="static/js/jquery-3.5.1.js"></script>
<script src="static/css/Semantic/semantic.js"></script>
<link rel="stylesheet" href="static/css/Semantic/semantic.css" />
<link rel="stylesheet" href="static/css/slick/slick.css" />
<link rel="stylesheet" href="static/css/slick/slick-theme.css" />
<link rel="stylesheet"
	href="static/css/page_styles/search_page/search.css" />
<script src="static/css/styles/visibility.js"></script>
<script src="static/css/styles/sidebar.js"></script>
<script src="static/css/styles/transition.js"></script>

<script src="//unpkg.com/jscroll/dist/jquery.jscroll.min.js"></script>
<script src="static/js/bindWithDelay.js"></script>
<script src="static/js/search_page/search.js"></script>
<script src="static/js/common/commons.js"></script>
<link rel="stylesheet"href="static/css/common/common.css" />
<script>
	var search_name = "${param.id}";
</script>
</head>
<body>
	${menubar} ${info}

	<div class="ui container" style="padding-top: 10px" id="maincontainer">
		<div class="ui grid" id="total" style="padding-button: 2%">
			<div class="sixteen wide column" id="contents" >
				<div id="content">

					<div class="doubling four column row" id="resultlist">
						<div id="listresult">
						
						</div>
					</div>
						
						
				</div>
			</div>
		</div>
	</div>
</body>
</html>
