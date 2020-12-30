$(document).ready(function () {
	
	/*댓글쓰기 */
	$("#sumit").click(function(){
		var queryString = $("form[name=replyform]").serialize();
		
		$.ajax({
			type:'post',
			url:'registerreply?'+queryString,
			contentType : 'application/json;charset=utf-8',
			dataType:'html',
			error: function(xhr, status, error){
                alert(error);
            },
            success : function(data){
               $("#getfeed").html(data);
				$("#txtar").val("");
				
	var menu = $("div.actions");
	$('div.actions').find("a.reply").click(function(){
		if($("div.content").find("a.reply").hasClass("active")
		&& $('div.content').find("div.rp").hasClass("active"))
		{
			$("div.content").find("a.reply").removeClass("active");	
			$('div.content').find("div.rp").removeClass("active");
			$('div.content').find("div.rp").empty();
		}
		$(this).addClass("active");
		$(this).siblings().addClass("active");
		$(this).siblings().html(fm);
	});
	var fm = ' <form class="ui reply form"><div class="field">'+
      '<textarea class="txtarea"  style="resize: none; height:100px;"></textarea>'+
    '</div>'+
    '<div class="ui blue labeled submit icon button">'+
     ' <i class="icon edit"></i> Add Reply'+
    '</div>'+
  	'</form>';
            }
		});
		
	
	});
	
/*reply누르면 댓글추가*/
	var menu = $("div.actions");
	$('div.actions').find("a.reply").click(function(){
		if($("div.content").find("a.reply").hasClass("active")
		&& $('div.content').find("div.rp").hasClass("active"))
		{
			$("div.content").find("a.reply").removeClass("active");	
			$('div.content').find("div.rp").removeClass("active");
			$('div.content').find("div.rp").empty();
		}
		$(this).addClass("active");
		$(this).siblings().addClass("active");
		$(this).siblings().html(fm);
	});
	var fm = ' <form class="ui reply form"><div class="field">'+
      '<textarea class="txtarea"  style="resize: none; height:100px;"></textarea>'+
    '</div>'+
    '<div class="ui blue labeled submit icon button">'+
     ' <i class="icon edit"></i> Add Reply'+
    '</div>'+
  	'</form>';

	/*글자수제한하기*/
	/*$('.txtarea').keyup(function (e){
    var content = $(this).val();
    $('.counter').html("("+content.length+" / 최대 200자)");    //글자수 실시간 카운팅

    if (content.length > 200){
        alert("최대 200자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 200));
        $('#counter').html("(200 / 최대 200자)");
    }
});*/
	var allpage = ($('#test').text()) * 1;
	var howmany = Math.ceil(allpage / 10);
	$('#pagination').twbsPagination({
        totalPages: howmany,    //총 페이지 갯수
        visiblePages: 3,    //보여줄 페이지
		startPage : startpage,
		initiateStartPageClick: false,
        onPageClick: function (event, page) {
			location.href="community?page="+page;
        }
    });
});