$(function(){
	
	/*페이지 불러오기*/
	var menu = $("div.m_bar");
	menu.find("a").click(function(){
		
		if(menu.siblings().find("a").hasClass("active"))
		{
			menu.siblings().find("a").removeClass("active");	
		}
		$(this).addClass("active");
		
		var id_getpage = $(this).attr("id");
		$.ajax({
			type:"GET",
			url:"/alba/getpage?id="+id_getpage,
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
			url:"/alba/getpage?id=ChangeResume",
			dataType:"html",
			error:function(){
				alert("통신실패");
			},
			success:function(data){
				$("#content_main").html(data);
			}
		});
		
		
	/*이력서 작성하기*/
	$('#checkHighSch').on('click',function(){
            if($("#checkHighSch").is(":checked")){
                var thisDate = new Date();
                var thisYear = thisDate.getFullYear();
                str += "<th>고등학교</th>";
                str += "<td>";
                str += "<select class='ui search dropdown' name='selStartYear' id='selStartYear'>"
                for(let i=thisYear; i>=1910;i--){
                    year = i;
                    console.log(year);
                    str += "<option value=" + year + ">" + year + "</option>";
                }
                str +="</select>";
                str += "~"
                str += "<select class='ui search dropdown' name='selEndYear' id='selEndYear'>";
                for(let i=thisYear; i<=2099;i++){
                        year = i;
                        str += "<option value=" + year + ">" + year + "</option>";
                }
                str +="</select>&nbsp;&nbsp;";
                str += "<div class=\"ui input focus\" ><input type=\"text\" name=\"resumeSchoolName\" size=\"20\" id=\"resumeSchoolName\" placeholder=\"학교명\"></div>";
                str += "</td>";
                
            }else{
                str = "";
            }
            $('#tr1').html(str);
        });
        //학력사항: 학력상세 이벤트 : 대학(2,3학년제)을 클릭했다면
        $('#checkCollage').on('click',function(){
            str = "";
            if($("#checkCollage").is(":checked")){
                var thisDate = new Date();
                var thisYear = thisDate.getFullYear();
                str += "<th>대학(2,3학년제)</th>";
                str += "<td style='text-align:center'>";
                str += "<select class='ui search dropdown' name='selStartYear' id='selStartYear'>"
                for(let i=thisYear; i>=1910;i--){
                    year = i;
                    console.log(year);
                    str += "<option value=" + year + ">" + year + "</option>";
                }
                str +="</select>";
                str += "~"
                str += "<select class='ui search dropdown' name='selEndYear' id='selEndYear'>";
                for(let i=thisYear; i<=2099;i++){
                        year = i;
                        str += "<option value=" + year + ">" + year + "</option>";
                }
                str +="</select>&nbsp;&nbsp;";
                str += "<div class=\"ui input focus\" ><input type=\"text\" name=\"resumeSchoolName\" size=\"20\" id=\"resumeSchoolName\" placeholder=\"학교명\">";
                str += "<input type=\"text\" name=\"resumeMajorName\" size=\"20\" id=\"resumeMajorName\" placeholder=\"전공명\"></div>";
                str += "</td>";
                
            }else{
                str = ""
            }
            $('#tr2').html(str);
        });
        //학력사항: 학력상세 이벤트 : 대학(4학년제)을 클릭했다면
        $('#checkUniversity').on('click',function(){
            str = "";
            if($("#checkUniversity").is(":checked")){
                var thisDate = new Date();
                var thisYear = thisDate.getFullYear();
                str += "<th>대학(4학년제)</th>";
                str += "<td colspan='2' style='text-align:center'>";
                str += "<select class='ui search dropdown' name='selStartYear' id='selStartYear'>"
                for(let i=thisYear; i>=1910;i--){
                    year = i;
                    console.log(year);
                    str += "<option value=" + year + ">" + year + "</option>";
                }
                str +="</select>";
                str += "~"
                str += "<select class='ui search dropdown' name='selEndYear' id='selEndYear'>";
                for(let i=thisYear; i<=2099;i++){
                        year = i;
                        str += "<option value=" + year + ">" + year + "</option>";
                }
                str +="</select>&nbsp;&nbsp;";
                str += "<div class=\"ui input focus\" ><input type=\"text\" name=\"resumeSchoolName\" size=\"20\" id=\"resumeSchoolName\" placeholder=\"학교명\">";
                str += "<input type=\"text\" name=\"resumeMajorName\" size=\"20\" id=\"resumeMajorName\" placeholder=\"전공명\"></div>";
                str += "</td>";
                
            }else{
                str = ""
            }
            $('#tr3').html(str);
        });

/*이력서로 지원한 기업확인*/
$.ajax({
                url: "MyResumeApply.jsp", // Request URL
                type: "GET", //GET or POST
                data: { //서버에 보낼 데이터
                },
                success: function (data) { //성공하면 해당 Function 사용: 서버에서 보낸 데이터
                    myparser(data);
                }
            });  
            function myparser(data){
                //Json 값 가져오기
                let obj = JSON.parse(data);
                let array = obj.company;
                let str = "";
                for(let i=0;i<array.length;i++){
                    let resume = array[i];
                    str += "<tr>";
                    str += "<td name=\"Check\"><input type=\"radio\">"+ resume.cLoc+ "</td>";
                    str +=  "<td \"cName\" id=\"cName\">" + resume.cName + resume.cSubName + "</td>";
                    str += "<td name=\"cSal\" id=\"cSal\">"+ resume.cSalType + resume.cSal + "</td>";
                    str += " <td name=\"cType\" id=\"cType\">"+resume.cTime+"</td>";
                    str += " <td name=\cPubDate\" id=\"cPubDate\">"+resume.cPubDate+"</td>";
                    str += "</tr>";
                }
                $('tbody').html(str);
            }
            //클릭이벤트
             $('#resumeWrite').on('click', function(){
            window.location.href="ResumeCreate.html";// /ProjectM/guestSignUp.html
            });
            $('#resumeCompany').on('click', function(){
            window.location.href="ResumeApply.html";// /ProjectM/guestSignUp.html
            });
/*이력서 관리페이지*/

$.ajax({
                url: "MyResume.jsp", // Request URL
                type: "GET", //GET or POST
                data: { //서버에 보낼 데이터
                },
                success: function (data) { //성공하면 해당 Function 사용: 서버에서 보낸 데이터
                    myparser(data);
                }
            });  
            function myparser(data){
                //Json 값 가져오기
                let obj = JSON.parse(data);
                let array = obj.resume;
                let str = "";
                for(let i=0;i<array.length;i++){
                    let resume = array[i];
                    str += "<tr>";
                    str += "<td name=\"Check\"><input type=\"radio\"></td>";
                    str +=  "<td \"resumeName\" id=\"resumeName\">" + resume.resumeName + "</td>";
                    str += "<td name=\"resumePubDate\" id=\"resumePubDate\">"+ resume.resumePubDate +"</td>";
                    str += "<td name=\"Mgmt\"><button class=\"mini ui inverted secondary button\">이력서 수정하기</button> <br><button class=\"mini ui inverted secondary button\">이력서 삭제하기</button></td>";
                    str += " <td name=\"resumeOpen\" id=\"resumeOpen\">"+resume.resumeOpen+"</td>";
                    str += "<td name=\"\"> <a href=\"ResumeApply.html\">지원기업보기</a></td>"
                    str += "</tr>";
                }
                $('tbody').html(str);
            }
            //클릭이벤트
             $('#resumeWrite').on('click', function(){
            window.location.href="ResumeCreate.html";// /ProjectM/guestSignUp.html
            });





        });

