<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1>채용 공고 등록</h1>
<br>
<br>
<div id="divCenter">
   <form action="/views/components" method="GET">
      <!--공고 제목 입력-->
      <div>
         <h3 class="ui horizontal divider header">공고 제목</h3>
         <div class="ui input focus">
            <input type="text" name="title" size="74" id="title"
               placeholder="공고 제목을 입력해주세요.">
         </div>
      </div>

      <br> <br> <br>

      <!--공고 입력사항-->
      <div>
         <h3 class="ui horizontal divider header">기업 정보</h3>
         <table class="ui celled padded table">
            <thead>
               <tr>
                  <th>기업명</th>
                  <td><input type="text" name="company_name" size="25"></td>
               </tr>
               <tr>
                  <th>기업주소</th>
                  <td><input type="text" name="corploc" size="25"></td>
               </tr>
            <tbody id="tbody1">
               <tr id="tr1"></tr>
               <tr id="tr2"></tr>
               <tr id="tr3"></tr>
            </tbody>
            </thead>
         </table>
      </div>

      <br> <br> <br>

      <!--이력서 희망근무조건 입력-->
      <div>
         <h3 class="ui horizontal divider header">근무조건</h3>
         <table class="ui celled padded table">
            <thead>
               <tr>
                  <th>업직종</th>
                  <td><select class='ui search dropdown' name="job" id="job">
                        <option value=''>업종을 선택하세요</option>
                        <option value='서빙'>서빙</option>
                        <option value='음료'>음료</option>
                        <option value='의류'>의류</option>
                        <option value='판매'>판매</option>
                        <option value='문구'>문구</option>
                        <option value='놀이'>놀이</option>
                        <option value='영화'>영화</option>
                        <option value='유통'>유통</option>
                  </select></td>
               </tr>
               <tr>
                  <th>성별</th>
                  <td><select class='ui search dropdown' name="gender" id="gender">
                        <option value=''>성별을 선택하세요</option>
                        <option value='0'>무관</option>
                        <option value='1'>여성</option>
                        <option value='2'>남성</option>
                  </select></td>
               </tr>
               <tr>
                  <th>나이</th>
                  <td><select class='ui search dropdown' name="age" id="age">
                        <option value=''>나이를 선택하세요</option>
                        <option value='20'>20세 이상 가능</option>
                        <option value='no20'>무관</option>
                  </select></td>
               </tr>
               <tr>
                  <th>근무기간</th>
                  <td><select class='ui search dropdown' name="workdate" id="workdate">
                        <option value="">--근무기간--</option>
                        <option value="12">1년 이상</option>
                        <option value="6">6개월 ~ 1년</option>
                        <option value="3">3개월 ~ 6개월</option>
                        <option value="1">1개월 ~ 3개월</option>
                        <option value="0">1개월 이하</option>
                  </select></td>
               </tr>
               <tr>
                  <th>근무일시</th>
                  <td><select class='ui search dropdown' name=workday id="workday">
                        <option value="">-근무요일--</option>
                        <option value="무관">무관</option>
                        <option value="평일">평일</option>
                        <option value="주말">주말</option>
                  </select> &nbsp; <select class='ui search dropdown' name="worktime" id="worktime">
                        <option value="">-근무시간--</option>
                        <option value="오전">오전</option>
                        <option value="오후">오후</option>
                        <option value="저녁">저녁</option>
                        <option value="새벽">새벽</option>
                  </select></td>
               </tr>
               <tr>
                  <th>급여</th>
                  <td><select class='ui search dropdown' name="sal" id="sal">
                        <option value="">--급여--</option>
                        <option value="일급">일급</option>
                        <option value="주급">주급</option>
                        <option value="월급">월급</option>
                        <option value="연봉">연봉</option>
                        <option value="건별">건별</option>
                  </select> &nbsp;
                     <div class="ui input focus">
                        <input type="text" name="salvalue" size="10" id="salvalue" placeholder="금액">
                     </div>원 &nbsp; &nbsp;</td>
               </tr>
               <tr>
                        <th>근무형태</th>
                        <td>
                            <input type="checkbox" name="worktype" value="alba">알바 &nbsp; &nbsp;
                            <input type="checkbox" name="worktype" value="fullTime">정규직 &nbsp; &nbsp;
                            <input type="checkbox" name="worktype" value="partTime">계약직 &nbsp; &nbsp;
                            <input type="checkbox" name="worktype" value="dispatch">파견직 &nbsp; &nbsp;
                            <input type="checkbox" name="worktype" value="intern">인턴 &nbsp; &nbsp;
                        </td>
                    </tr>
               <tr>
                  <th>근무환경</th>
                     <td>
                         <input type='checkbox' name='workconditon' value='weekfee'> 주휴수당 별도 &nbsp;&nbsp;
                         <input type='checkbox' name='workconditon' value='nightfee'> 야간수당 별도 &nbsp;&nbsp;
                         <input type='checkbox' name='workconditon' value='holidayfee'> 휴일수당 별도 &nbsp;&nbsp;
                         <input type='checkbox' name='workconditon' value='4bo'> 4대보험 &nbsp;&nbsp;
                         <input type='checkbox' name='workconditon' value='gobo'> 고용보험 &nbsp;&nbsp;
                         <input type='checkbox' name='workconditon' value='food'> 식사제공 &nbsp;&nbsp;
                     </td>
            </tr>
            <tbody id="tbody1">

            </tbody>
            </thead>
         </table>
      </div>

      <br> <br> <br>
      <!--사장님 한마디-->
      <div>
         <h3 class="ui horizontal divider header">사장님 한마디</h3>
         <textarea name="content" id="" cols="111" rows="10"
            style="overflow: scroll;" placeholder="자유롭게 기입해주세요."></textarea>
      </div>
      <br> <br> <br>
      <div style="text-align: center;">
         <button  class="ui red button">공고 저장✔</button>
         <button type="reset" class="ui primary button">취소하기↩</button>
      </div>
   </form>
</div>
<br>
<br>
<br>

</body>
</html>