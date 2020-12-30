
$(document).ready(function () {
$("#bottomMenu").click(function() {
	$(this).transition('fade up');
	$("#c_info").transition('scale');
})
$("#c_info_close").click(function() {
	$('#c_info').transition();
	$("#bottomMenu").transition('fade up');
})
$("#Login").click(function() {
	console.log("clicked");
	$("#modaldiv").modal("show");
});
$("#sideLogin").click(function() {
	console.log("clicked");
	$("#modaldiv").modal("show");
});
$("#Searchbar").keydown(function(key) {
	if (key.keyCode == 13) {
		window.location.href = "/search?id=" + $(this).val();
	}
});

$("#sidemenu").click(function(){
	$('#menubar').sidebar('toggle');
})

$("#modal_login").click(function(){
	var queryString = $("form[name=modalform]").serialize();
	console.log(queryString);
		$.ajax({
			type:'post',
			url:'modallogin?'+queryString,
			contentType : 'charset=utf-8',
			dataType:'json',
			error: function(xhr, status, error){
            },
            success : function(data){
				if(data.code=="false"){
					$("#bool").text("정보가 일치하지 않습니다 다시 로그인 해주세요");
				}
				if(data.code=="1"){ 
					location.replace("/");
				}
				if(data.code=="2"){ 
					location.replace("/");
				}
   			}
		})
});
});