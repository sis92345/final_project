$(document).ready(function() {

	$('.menu .item').tab();
	/*탭 받아오기*/
	$.ajax({
		type: "GET",
		url: "community_tab_list?id=first",
		dataType: "html",
		error: function() {
			alert("통신실패!!");
		},
		success: function(data) {
			$('#first').html(data);
		},
	});

	$('#menu .item').click(function() {
		var tab_id = $(this).attr('data-tab');
		$.ajax({
			type: "GET",
			url: "community_tab_list?id=" + tab_id,
			dataType: "html",
			error: function() {
				alert("통신실패!!");
			},
			success: function(data) {
				$("#" + tab_id).html(data);
			},
		});
	});
	/*$.ajax({
		type: "GET",
		url: "community_get?page=1",
		dataType: "html",
		error: function() {
			alert("통신실패");
		},
		success: function(data) {
			$("#allcontent").html(data);
		}
	})*/
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

