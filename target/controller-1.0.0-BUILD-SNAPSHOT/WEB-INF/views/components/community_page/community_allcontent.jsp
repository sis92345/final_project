<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div id="allcontent" style="padding-top: 5px">
<div class="ui relaxed divided list">
	<c:forEach items="${listinfo}" var="list" begin="0"
		end="${listinfo.size() }" step="1">
		<div class="item">
			<i class="large github middle aligned icon"></i>
			<div class="content">
				<a class="header ccoul" href="community_read?page=${param.page}&title=${list.boardtalk_seq}">
				(${list.tag}) ${list.title}
				</a>
				<div style="text-align: right">
					<div class="description"> 작성자 ${list.id}/
						${list.regdate}/ 조회 ${list.readnum}</div>
				</div>
			</div>
		</div>

	</c:forEach>

</div>

</div>
<div class="ui center aligned container" style="padding-top: 20px;">
	 				<div id="test" style="display: none;">${count}</div>
	 				
	 				
				    <nav aria-label="Page navigation">
				        <ul class="pagination" id="pagination"></ul>
				    </nav>

					</div>