$(document).ready(function(){
	/*$("#total").height($(window).height() - 70);
  
  $(window).resize(function () {
      $("#total").height($(window).height() - 70);
    
  });*/

	$("#Searchbar").val(search_name);
	
	if($("#Searchbar").val()!=""){
		$.ajax({
          type: "GET",
          url: "search_list?id=" + $("#Searchbar").val(),
          dataType: "html",
          error: function () {
            alert("통신실패!!");
          },
          success: function (data) {
            $("#listresult").html(data);
			$(".hvr").transition('pulse');
          },
        });
	}
})