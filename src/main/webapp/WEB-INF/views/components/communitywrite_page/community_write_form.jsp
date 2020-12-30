<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="ui container" style="padding-top: 30px; ">
	<form class="ui form" method="POST" action="/registercontent">
		
		<div class="ui grid">
			
				
				<div class="three wide column">
					<div class="ui fluid selection dropdown" >
					
						<i class="dropdown icon"></i> <span class="default text">태그를
							선택해 주세요</span>
						<input type="hidden" name="tag">
						<div class="menu">
							<div class="item" data-value="임금">
								<i class="money bill alternate left floated icon"></i> 임금
							</div>
							<div class="item" data-value="근로계약서">
								<i class="handshake outline left floated icon"></i> 근로계약서
							</div>
							<div class="item" data-value="근무환경">
								<i class="bed left floated icon"></i> 근무환경
							</div>
							<div class="item" data-value="해고">
								<i class="cut left floated icon"></i> 해고
							</div>
							<div class="item" data-value="기타">
								<i class="paperclip left floated icon"></i> 기타
							</div>
						</div>
					</div>
				</div>
<div class="thirteen wide column">
					<input type="text" name="title" placeholder="제목을 입력해 주세요">
					<input type="hidden" name="id" value="${sessioninfo.id}">
				</div>

			</div>
		<br/>
		<textarea name="content" id="cont" maxlength="300"></textarea>
		<div class="ui right aligned container" style="padding-top:20px;">
		<input type="hidden" name="board_cd" value="AT">
		
		<button type="submit" class="ui button">등록하기</button>
		<div class="ui error message"></div>
	</div>
	</form>
</div>
