<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<table class="ui celled table" >
	<thead>
		<tr>
			<th><h3 class="ui header">(${content.tag})${content.title}</h3>

				<div class="ui grid">
					<div class="thirteen wide column">
						<span style="color: blue;"> 작성자 : ${content.id}</span> / ${content.regdate}
					</div>
					<div class="three wide column" style="text-align: right">조회수 ${content.readnum }</div>
				</div></th>

		</tr>
	</thead>
	<tbody>
		<tr>
			<td>${content.content }</td>

		</tr>
	</tbody>
</table>

