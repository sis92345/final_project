<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	
<div class="ui container" style="padding-top: 10px;">



<!-- Sidebar Menu -->
	<div class="ui vertical inverted  thin sidebar menu" id="menubar" style="background-color:burlywood">
		<a class="item" href="/"><i class="shopping basket icon"></i> 알바구니</a>
		 <a class="item" href="/detail?id=first">직종별 검색</a> <a class="item" href="/search?id=알바">검색어로 검색하기</a>
		<a class="item" href="/community?page=1">알바토크</a>
		
		<c:if test="${sessioninfo eq null}">
		<a class="item" id="sideLogin">로그인</a>
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
	
	<div class="ui large secondary inverted pointing menu" id="menubar"
		style="background-color: burlywood;">
		
		
		<a class="side item" id="sidemenu"><i class="sidebar icon" ></i></a>
		<a class="item die" href="/" ><i class="shopping basket icon" ></i> 알바구니</a>
		 <a class="item die" href="/detail?id=first" >직종별 검색</a> 
		 <a class="item die" href="/search?id=알바" >검색어로 검색하기</a>
		<a class="item die" href="/community?page=1" >알바토크</a>
		
		<div class="ui fluid icon input" style="width: 30%">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" id="Searchbar" placeholder="Search" /> <i
				class="search icon"></i>
		</div>

		<div class="right item die">
			<c:if test="${sessioninfo eq null}">
				<a class="ui inverted button" id="Login">로그인</a> 
				<a class="ui inverted button" href="/register">회원가입</a>
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