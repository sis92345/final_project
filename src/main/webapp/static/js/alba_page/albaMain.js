$(document).ready(function(){
	$('#btnRsum').on('click', function(){
		location.href="/alba";
	});
	var id = $('#userid').val();	
	befEmail = "";
	befName = "";
	befTel = "";
	
	$('#btnUpdate').hide();
	$('#btnCancle').hide();
	$('#btnDelete').hide();
	$.ajax({
		url:"/albaPage/" + id,			 	
		method:'GET',	 		
		dataType:'json', 		
		success: function(data){
			data = data.data;			
			$('#id').html(data.id);	
			$('#name').html(data.name);	
			$('#email').html(data.email);	
			$('#tel').html(data.tel);	
			befEmail = $('#email').text();
			befName = $('#name').text();
			befTel = $('#tel').text();	
		}
	});
	
	
	$('#btnChange').click(function(){
			
			$('#email').replaceWith("<div class='ui input'><input id='txtEmail' /></div>");
			$('#name').replaceWith("<div class='ui input'><input id='txtName'/></div>");
			$('#tel').replaceWith("<div class='ui input'><input id='txtTel' /></div>");
			
			$('#txtEmail').val(befEmail);
			$('#txtName').val(befName);
			$('#txtTel').val(befTel);
			
			$('#btnUpdate').show();
			$('#btnCancle').show();
			$('#btnChange').hide();


			
			
			befEmail = $('#txtEmail').val();
			befName = $('#txtName').val();
			befTel = $('#txtTel').val();
	$('#btnUpdate').on('click', function(){
		$.ajax({
			url:"/alba/Update",			 	
			method:'PUT',	
			contentType : 'application/json;charset=utf-8', 		
			dataType:'json', 
			data: JSON.stringify({
				"id": $('#userid').val(),
				"email" : $('#txtEmail').val(),
				"name" : $('#txtName').val(),
				"tel" : $('#txtTel').val()
			}),		
			success: function(data){
				if(data.code == "success"){
					location.href = "/alba";
				}
			}
		});
	 });
	  
	 $('#btnCancle').on('click', function(){
         window.location.href="/alba";
     });
	 //JavaScript: 이메일 이벤트: var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	 $('#txtEmail').blur(function(){
		 var inputval = $('#txtEmail').val();
		 var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;
		 if(inputval.match(regExp) == null){
			 alert("이메일 형식이 잘못되었습니다");
			 $('#btnUpdate').prop("disabled", true);
		 }else{
			 $('#btnUpdate').prop("disabled", false);	
		 }	
	 })
	 
});
	
	
	
});