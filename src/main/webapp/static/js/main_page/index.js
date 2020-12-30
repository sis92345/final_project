let map;
var marker = [];

var content = [];
var contentid = [];
var contentString = [];
var contenthref=[];
var infowindow = [];

var input_lat;
var input_long;

navigator.geolocation.getCurrentPosition((position) => {
  input_lat = position.coords.latitude;
  input_long = position.coords.longitude;
});
function initMap() {
  var map = new google.maps.Map(document.getElementById("googlemap"), {
    center: { lat: input_lat, lng: input_long },
    zoom: 15,
  });

  infoWindow2 = new google.maps.InfoWindow();
  const locationButton = document.createElement("button");
  locationButton.textContent = "현재위치보기";
  locationButton.classList.add("custom-map-control-button");
  locationButton.style.color = "rgb(25,25,25)";
  locationButton.style.fontFamily = "Roboto,Arial,sans-serif";
  locationButton.style.fontSize = "16px";
  locationButton.style.lineHeight = "38px";
  locationButton.style.paddingLeft = "5px";
  locationButton.style.paddingRight = "5px";
  locationButton.style.marginTop = "10px";
  locationButton.style.background = "rgb(255,255,255)";
  locationButton.style.border = "0px";
  map.controls[google.maps.ControlPosition.TOP_CENTER].push(locationButton);
  locationButton.addEventListener("click", () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        const pos = {
          lat: position.coords.latitude,
          lng: position.coords.longitude,
        };
        map.setCenter(pos);
      });
    }
  });

  for (i = 0; i < gooid.length; i++) {
	contenthref.push(gooseq[i]);
    content.push(gooname[i]);
    contentid.push(gooid[i]);
    contentString[i] =
      "선택하신 공고는<a href='detail?id=first&num=" +
      contenthref[i] +
      "'style='color:red ;font-size:1.5em'>" +
      contentid[i] +
      "</a>입니다<br/>"+content[i] +"에서 올린 공고입니다" +
      "<br/> 공고이름을 선택하시면 상세정보를 볼 수 있습니다";
    infowindow[i] = new google.maps.InfoWindow({
      content: contentString[i],
    });
  }

  for (i = 0; i < gooid.length; i++) {
    marker[i] = new google.maps.Marker({
      position: goolatlng[i],
      map,
    });
    ((m) => {
      marker[m].addListener("click", () => {
        infowindow[m].open(map, marker[m]);
      });
      map.addListener("click", () => {
        infowindow[m].close();
      });
      map.addListener("dragstart", () => {
        infowindow[m].close();
      });
    })(i);
  }
}
$(document).ready(function () {
	for(i=0;i<gooid.length;i++){
		((m)=>{$("#"+gooseq[m]).on("click",function(){
			for(k=0;k<gooid.length;k++){
				infowindow[k].close();
			}
			infowindow[m].open(map,marker[m]);
			map.setCenter(goolatlng[m]);
		});
	})(i);
	}
	$("#bottomMenu").click(function(){
		$(this).transition('fade up');
		$("#c_info").transition('scale');
	})
	$("#c_info_close").click(function(){
		$('#c_info').transition();
		$("#bottomMenu").transition('fade up');
	})
	
	//모달로 로그인하기
  $(".LOGIN").click(function () {
   // $("#modaldiv").modal("show");
 $('#modaldiv')
    .modal({
        closable: false
     }).modal('show');
  });

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

  $("#Searchbar").keydown(function(key){
	if(key.keyCode ==13){
		window.location.href = "/search?id="+$(this).val();
	}
})

  $(".hvr-float").transition("jiggle");

  $(".counter").counterUp({
    delay: 10,
    time: 1000,
  });
  $(".slickSlider,.slickSlider2").slick({
    centerMode: true,
    slidesToShow: 4,
    slidesToScroll: 1,
    autoplay: true,
    autoplaySpeed: 2000,
    responsive: [
      {
        breakpoint: 1260,
        settings: {
          centerMode: true,
          slidesToShow: 2,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 600,
        settings: {
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
      {
        breakpoint: 480,
        settings: {
          centerMode: true,
          slidesToShow: 1,
          slidesToScroll: 1,
        },
      },
    ],
  });

  // fix menu when passed
  $(".masthead").visibility({
    once: false,
    onBottomPassed: function () {
      $(".fixed.menu").transition("fade in");
    },
    onBottomPassedReverse: function () {
      $(".fixed.menu").transition("fade out");
    },
  });
  // create sidebar and attach to menu open
  $(".ui.sidebar").sidebar("attach events", ".toc.item");
});
