
$(document).ready(function () {
	$('.menu .item').tab();
  jobname += "알바는";
/*
 $("#total").height($(window).height() - 110);
  
  $(window).resize(function () {
      $("#total").height($(window).height() - 110);
    
  });
*/




$(window).on('mousewheel',function(e){
var wheel = e.originalEvent.wheelDelta;

$("#menu").find("a").click(function(){
	
	$("#lists").show();
});
//스크롤값을 가져온다.
if(wheel>0){
//스크롤 올릴때
if($("#lists").css("display")=="none"){
		console.log("올림");
		$("#lists").show();
	}
} else {
//스크롤 내릴때
	if($("#lists").css("display")!="none"){
		$("#lists").hide();
		console.log("내림");
	}
}
});

  // $.ajax({
  //   type: "GET",
  //   dataType: "JSON",
  //   url:
  //     "https://www.googleapis.com/youtube/v3?q=" +
  //     jobname +
  //     "&part=snippet&maxResults=2&key=AIzaSyCaGjtm-fWEISHGdrxU4JXGnOsuYMQpMhc",
  //   contentType: "application/json",
  //   success: function (jsonData) {
  //     for (var i = 0; i < jsonData.items.length; i++) {
  //       var items = jsonData.items[i];
  //       console.log(items);
  //     }
  //   },
  //   complete: function (data) {},
  //   error: function (xhr, status, error) {
  //     console.log("유튜브 요청 에러: " + error);
  //   },
  // });

$("a."+selectedicon).addClass("active");
$("#"+selectedicon).addClass("active");
/*
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
*/

$.ajax({
	type: "GET",
          url: "detail_list?id="+selectedicon,
          dataType: "html",
          error: function () {
            alert("통신실패!!");
          },
          success: function (data) {
            $("#"+selectedicon).html(data);
			$(".listSlider").attr('class','listSliderfirst');
			$(".listSliderfirst").slick({
			   centerMode: true,
			    slidesToShow: 3,
			    slidesToScroll: 3,
			  });
          },
});

if(getnum!=""){
$.ajax({
	type: "GET",
          url: "detail_content?num="+getnum,
          dataType: "html",
          error: function () {
            alert("통신실패!!");
          },
          success: function (data) {
            $("#content").html(data);
          },
});
}


$('#menu .item').click(function(){
		var tab_id = $(this).attr('data-tab');
		console.log(tab_id);
		
		$.ajax({
          type: "GET",
          url: "detail_list?id=" + tab_id,
          dataType: "html",
          error: function () {
            alert("통신실패!!");
          },
          success: function (data) {
			
            $("#"+tab_id).html(data);
			$(".listSlider").attr('class','listSlider'+tab_id);
			$(".listSlider"+tab_id).slick({
			   centerMode: true,
			    slidesToShow: 3,
			    slidesToScroll: 3,
			  });
			
          },
        });
	})
 /* $("#Searchbar").bindWithDelay(
    "keyup paste",
    function () {
      if ($("#Searchbar").val() == "") {
		history.replaceState({}, null, location.pathname);
      } else {
        $.ajax({
          type: "GET",
          url: "search_list?keyword=" + $("#Searchbar").val(),
          dataType: "html",
          error: function () {
            alert("통신실패!!");
          },
          success: function (data) {
            $("#maincontainer").html(data);
            $(".hvr").transition('pulse');
          },
        });
      }
    },
    500
  );*/

  $("#firstVideo").attr("src", "https://www.youtube.com/embed/");
});


function getcontent(evt){
	$.ajax({
	type: "GET",
          url: "detail_content?num="+evt,
          dataType: "html",
          error: function () {
            alert("통신실패!!");
          },
          success: function (data) {
            $("#content").html(data);
          },
});
}








