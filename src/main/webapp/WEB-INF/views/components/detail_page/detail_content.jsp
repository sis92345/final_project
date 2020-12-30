<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h3>기업명  : <span class="company_name">${con.company_name}</span></h3>
<hr />
<div class="eight wide right floated column googlemap"
							id="googlemap" style="height: 600px ;background-color: skyblue"
							></div>
<h3>공고제목  : <span class="title">${con.title}</span></h3>
   <hr/>
   
   <h1 style="text-align: center;">근무조건</h1>
   <table>
  <tr style="vertical-align:top">
    <td style="width:500px; border-right:1px solid lightgrey; padding-right:12px; text-align:justify">
    <div class="viewTable">
    <br/><br/><br/><br/>
    <table class="ui orange table">
    <colgroup>
            <col style="width:170px">
            <col style="width:300px">
   </colgroup>
  <thead style ="text-align:center;">
    <tr><th>급여</th>
       <td>
             <span class="sal">${con.sal}<span>원</span></span>
      </td>
  </tr></thead><tbody>

    <thead style ="text-align:center;">
    <tr><th>근무기간</th>
       <td>
          <span class="workdate"> ${con.workdate}</span>
        </td>
  </tr></thead><tbody>

    <thead style ="text-align:center;">
    <tr><th>근무일시</th>
       <td>
          <span class="workday">${con.worktime}</span>
       </td>
  </tr></thead><tbody>

    <thead style ="text-align:center;">
    <tr><th>근무형태</th>
       <td>
          <span class="worktype">${con.worktype}</span>
      </td>
  </tr></thead><tbody>

    <thead style ="text-align:center;">
    <tr><th>근무환경</th>
       <td>
          <span class="workcondition">${con.workcondition}</span>
       </td>
  </tr></thead><tbody>
    <thead>
  </tbody>
</table>
    </td>
    <td style="padding-left:10px"><button class="big ui orange button" name="apply" >지원하기</button>
       <hr width="185%"  color="lightgrey">
       <h3>채용자 정보</h3>
       등록날짜 : <span class="regdate">${con.regdate}</span><br/><br/>
       채용자 : <span class="representative">${con.representative}</span><br/><br/>    
       이메일 : <span class="email">${con.email}</span><br/><br/>
       사업자번호 : <span class="company_num">${con.company_num}</span><br/><br/>
       <hr width="185%"  color="lightgrey">
       ! 구직이 아닌 광고등의 목적으로 연락처를 <br/>
       이용할 경우 법적 처벌을 받을 수 있습니다.
    </td>
     
  </tr>
  
</table>
<hr/>
<h3 class="ui header">${con.content}</h3>

