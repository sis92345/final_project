$(function(){
	
	/*페이지 불러오기*/
	var menu = $("div.lsts");
	menu.find("a").click(function(){
		
		if(menu.siblings().find("a").hasClass("active"))
		{
			menu.siblings().find("a").removeClass("active");	
		}
		$(this).addClass("active");
		
		var id_getpage = $(this).attr("id");
		$.ajax({
			type:"GET",
			url:"/sajang/getpage?id="+id_getpage,
			dataType:"html",
			error:function(){
				alert("통신실패");
			},
			success:function(data){
				$("#content_main").html(data);
			}
		})
	});
	
	
	$.ajax({
			type:"GET",
			url:"/sajang/getpage?id=MyGongo",
			dataType:"html",
			error:function(){
				alert("통신실패");
			},
			success:function(data){
				$("#content_main").html(data);
			}
		});
		
	
		
		
		
		
		
		
		
		
	});