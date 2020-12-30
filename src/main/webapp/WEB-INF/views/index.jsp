<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:import url="components/main_page/slider_current.jsp" var="slider_current" />
<c:import url="components/main_page/slider_viewcount.jsp" var="slider_viewcount" />

<c:import url="components/main_page/icons.jsp" var="icons" />
<c:import url="components/main_page/status.jsp" var="status" />
<c:import url="components/main_page/maplist.jsp" var="maplist" />

<c:import url="common/info.jsp" var="info"/>



<!DOCTYPE html>
<!-- saved from url=(0046)https://semantic-ui.com/examples/homepage.html -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!-- Standard Meta -->

<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

<!-- Site Properties -->
<title>Homepage - Semantic</title>
<script src="static/css/styles/jquery.min.js"></script>
<script defer
	src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCaGjtm-fWEISHGdrxU4JXGnOsuYMQpMhc&callback=initMap"></script>


<script>
      var goolatlng = [];
      var gooid = [];
      var gooname = [];
      var gooseq = [];
    </script>
<c:forEach items="${googleinfo}" var="goo">
	<script>
        goolatlng.push(
         {	lat : ${goo.latitude},
        	lng : ${goo.longitude}
         });
        gooseq.push("${goo.boardalba_seq}");
        gooid.push("${goo.title}");
        gooname.push("${goo.company_name}");
      </script>
</c:forEach>

<script src="static/css/styles/visibility.js"></script>
<script src="static/css/styles/sidebar.js"></script>
<script src="static/css/styles/transition.js"></script>
<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="static/js/jquery.counterup.js"></script>
<script src="static/js/main_page/index.js"></script>
<script src="static/css/Semantic/semantic.js"></script>


<link rel="stylesheet"
	href="static/css/Hover-master/Hover-master/css/hover.css" />
<link rel="stylesheet" href="static/css/Semantic/semantic.css" />
<link rel="stylesheet" href="static/css/slick/slick.css" />
<link rel="stylesheet" href="static/css/slick/slick-theme.css" />
<!-- Add the slick-theme.css if you want default styling -->
<link rel="stylesheet" href="static/css/page_styles/main_page/index.css" />
<link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet" />
<script>
      AOS.init();
    </script>
</head>
<body class="pushable">
	<!-- Following Menu -->
	<div class="ui large top fixed hidden menu" id="menubar">
		<div class="ui container">
			<a class="item" style="color: white"><i class="shopping basket icon"></i> 알바구니</a> <a class="item"
				style="color: white" href="/detail?id=first">직종별 검색</a> <a class="item" style="color: white" href="/search?id=알바">검색어로 검색하기</a>
			<a class="item" style="color: white" href="/community?page=1">알바토크</a>
			<div class="right menu">
			<c:if test="${sessioninfo eq null}">
				<div class="item">
					<a class="ui inverted button LOGIN" id="Login">로그인</a>
				</div>
				<div class="item">
					<a class="ui inverted button" href="/register">회원가입</a>
				</div>
			</c:if>
			<c:if test="${sessioninfo.division eq '1' }">
				<a class="ui inverted button" href="/alba">알바페이지 가기</a>
				<a class="ui inverted button" href="/logout">로그아웃</a>
			</c:if>
			<c:if test="${sessioninfo.division eq '2' }">
				<a class="ui inverted button" href="/sajang">사장페이지 가기</a>
				<a class="ui inverted button" href="/logout">로그아웃</a>
			</c:if>
			<c:if test="${sessionionfo.division eq '3' }">
				<a class="ui inverted button" href="/admin">관리자페이지 가기</a>
				<a class="ui inverted button" href="/logout">로그아웃</a>
			</c:if>
			</div>
		</div>
	</div>
	<!-- Sidebar Menu -->
	<div class="ui vertical inverted sidebar menu" id="menubar">
		<a class="item" href="/"><i class="shopping basket icon"></i> 알바구니</a>
		 <a class="item" href="/detail?id=first">직종별 검색</a> <a class="item" href="/search?id=알바">검색어로 검색하기</a>
		<a class="item" href="/community?page=1">알바토크</a>
		
		<c:if test="${sessioninfo eq null}">
		<a class="item LOGIN" id="Login">로그인</a>
		<a class="item" href="/register">회원가입</a>
		</c:if>
		<c:if test="${sessioninfo.division eq '1' }">
				<a class="item" href="/alba">알바페이지 가기</a>
				<a class="item" href="/logout">로그아웃</a>
			</c:if>
			<c:if test="${sessioninfo.division eq '2' }">
				<a class="item" href="/sajang">사장페이지 가기</a>
				<a class="item" href="/logout">로그아웃</a>
			</c:if>
			<c:if test="${sessionionfo.division eq '3' }">
				<a class="item" href="/admin">관리자페이지 가기</a>
				<a class="item" href="/logout">로그아웃</a>
			</c:if>
	</div>

	<!-- Page Contents -->
	<div class="pusher">
		<div class="ui inverted vertical masthead center aligned segment"
			id="background">
			<div class="ui container">
				<div class="ui large secondary inverted pointing menu" id="menubar">
					<a class="toc item"> <i class="sidebar icon"></i>
					</a> <a class="item" href="/"><i class="shopping basket icon"></i> 알바구니</a>
		 <a class="item" href="/detail?id=first">직종별 검색</a> <a class="item" href="/search?id=알바">검색어로 검색하기</a>
		<a class="item" href="/community?page=1">알바토크</a>
					<div class="ui fluid icon input" style="width: 30%">
          
        </div>
					<div class="right item">
					<c:if test="${sessioninfo eq null}">
						<a class="ui inverted button LOGIN" id="Login">로그인</a> <a
							class="ui inverted button" href="/register">회원가입</a>
							</c:if>
			<c:if test="${sessioninfo.division eq '1' }">
			${sessioninfo.name}님
				<a class="ui inverted button" href="/alba">알바페이지 가기</a>
				<a class="ui inverted button" href="/logout">로그아웃</a>
			</c:if>
			<c:if test="${sessioninfo.division eq '2' }">
				${sessioninfo.representative}님
				<a class="ui inverted button" href="/sajang">사장페이지 가기</a>
				<a class="ui inverted button" href="/logout">로그아웃</a>
			</c:if>
			<c:if test="${sessionionfo.division eq '3' }">
			관리자님
				<a class="ui inverted button" href="/admin">관리자페이지 가기</a>
				<a class="ui inverted button" href="/logout">로그아웃</a>
			</c:if>
					</div>
				</div>
			</div>

			<div class="ui text container">
				<h1 class="ui inverted header">Imagine-a-Company</h1>
				<h2>Do whatever you want when you want to.</h2>
				<br />
				<div class="ui huge icon input">
					<input type="text" placeholder="Search huge..." id="Searchbar" />
					<i class="search icon"></i>
				</div>
			</div>
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
			<br />
		</div>
		<br />
		<div class="ui grid center aligned" id="iconsdiv">${icons}</div>
		<br />
		<br />
		<br />
		<br />
		<div class="ui grid center aligned" id="statusdiv" data-aos="fade-up"
			data-aos-anchor-placement="bottom-bottom" data-aos-duration="3000">
			${status}</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<div class="ui container"> 
		<h2 class="ui header">현재 인기많은 알바</h2>
		<br/>
		</div>
		<div class="slickSlider" data-aos="fade-up"
			data-aos-anchor-placement="bottom-bottom"
			style="padding-left: 13%; padding-right: 13%">
			
			${slider_viewcount}</div>
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<br />
		<div class="ui container"> 
		<h2 class="ui header">최근에 올라온 알바</h2>
		<br/>
		</div>
		<div class="slickSlider2" data-aos="fade-up"
			data-aos-anchor-placement="bottom-bottom"
			style="padding-left: 13%; padding-right: 13%">
			
			${slider_current}</div>
		<div class="mapview" data-aos="fade-up"
			data-aos-anchor-placement="bottom-bottom">
			<div class="ui vertical stripe segment">
				<div class="ui middle aligned stackable grid container">
					<div class="row">
						<div class="six wide column"  id="maplist" style="overflow:auto;height:500px;">
						
							<h3 class="mapview" style="text-align: center">
							근처 공고를 찾아보세요</h3><br/><br/>
							
							${maplist}
						</div>
						<div class="eight wide right floated column googlemap"
							id="googlemap" style="height: 600px"></div>
					</div>
				</div>
			</div>
		</div>
		<div class="ui inverted vertical footer segment">
			<div class="ui container">
				<div
					class="ui stackable inverted divided equal height stackable grid">
					<div class="three wide column">
						<h4 class="ui inverted header">About</h4>
						<div class="ui inverted link list">
							<a href="#"
								class="item">Sitemap</a> <a
								href="#"
								class="item">Contact Us</a> <a
								href="#"
								class="item">Religious Ceremonies</a> <a
								href="#"
								class="item">Gazebo Plans</a>
						</div>
					</div>
					<div class="three wide column">
						<h4 class="ui inverted header">Services</h4>
						<div class="ui inverted link list">
							<a href="#"
								class="item">Banana Pre-Order</a> <a
								href="#"
								class="item">DNA FAQ</a> <a
								href="#"
								class="item">How To Access</a> <a
								href="#"
								class="item">Favorite X-Men</a>
						</div>
					</div>
					<div class="seven wide column">
						<h4 class="ui inverted header">Footer Header</h4>
						<p>Extra space for a call to action inside the footer that
							could help re-engage users.</p>
					</div>
				</div>
			</div>
		</div>
	</div>


	${info }


	<!-- modals-->
	<div class="ui modal" id="modaldiv" style="background-color:snow">
		<i class="close icon"></i>


		<div class="header" style="background-color:burlywood;color:white">로그인</div>

		<div class="ui text container"
			style="padding-top: 30px; padding-bottom: 30px; ">

			
			<form class="ui form" name="modalform">
			<div class="ui form">
				<div class="inline fields">
					<div class="field">
						<div class="ui radio checkbox">
							<input type="radio" name="division" checked="true" tabindex="0"
							value="1">
							<label>개인회원</label>
						</div>
					</div>
					<div class="field">
						<div class="ui radio checkbox">
							<input type="radio" name="division" tabindex="0"
							value="2"> <label>기업회원</label>
						</div>
					</div>
				</div>
			</div>
				<div class="field">

					<br /> <label>아이디</label> <input name="id" type="text" name="id" size="10"
						placeholder="아이디를 입력해주세요">
				</div>
				<div class="field">
					<label>비밀번호</label> <input name = "password" type="text" name="passwd"
						placeholder="비밀번호를 입력해주세요">
				</div>
				<div class="field">
					<div class="ui checkbox">
						<br /> <a href="">아이디 찾기</a> | <a href="">비밀번호 찾기</a>
					</div>
					<br />
					<br /> <span>아직 회원이 아니세요? <a href=""><em>회원가입</em></a>
					</span>
				</div>

			</form>
		</div>
		
		<div class="ui right aligned container" style="background-color:burlywood ; padding-top:15px; padding-bottom:15px; padding-right:5px;">
			<span style="color:red" id="bool"></span>
			
			<div class="actions" style="display: inline;"><div class="ui white deny button" id="closemodal">취소</div></div>
			<button id="modal_login" class="ui positive right labeled icon button">
				로그인 <i class="checkmark icon"></i>
			</button>
		</div>
		
		</div>
		<script>
      AOS.init();
    </script>
		<script src="static/css/slick/slick.min.js"></script>
</body>
</html>
