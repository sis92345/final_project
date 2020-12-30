<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<h1>이력서 작성하기</h1>
<br>
<br>
<div id="divCenter">
    <form action="">
        <!--이력서 제목 입력-->
        <div>
            <h3 class="ui horizontal divider header">이력서 제목</h3>
            <div class="ui input focus">
                <input type="text" name="resumeName" size="74" id="resumeName" placeholder="내 이력서를 돋보이게 하는 PR 한마디">
            </div>
        </div>

        <br><br><br>

        <!--이력서 학력사항 입력-->
        <div>
            <h3 class="ui horizontal divider header" >학력사항</h3>
            <table class="ui celled padded table">
                <thead>
                    <tr>
                        <th>최종학력</th>
                        <td>
                            <select class='ui search dropdown' name="selSchool" id="selSchool">
                                <option value="">--최종학력--</option>
                                <option value="대학(4년제)" selected>대학(4년제)</option>
                                <option value="대학(2,3학년제)">대학(2,3학년제)</option>
                                <option value="고등학교">고등학교</option>
                                <option value="중학교">중학교</option>
                                <option value="초등학교">초등학교</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>학력상세</th>
                        <td>
                            <input type="checkbox" id="checkHighSch">고등학교 &nbsp; &nbsp;
                            <input type="checkbox" id="checkCollage">대학(2,3학년제) &nbsp; &nbsp;
                            <input type="checkbox" id="checkUniversity">대학(4년제) &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tbody id="tbody1">
                        <tr id="tr1"></tr>
                        <tr id="tr2"></tr>
                        <tr id="tr3"></tr>
                    </tbody>
                </thead>
            </table>
        </div>

        <br><br><br>

        <!--이력서 희망근무조건 입력-->
        <div>
            <h3 class="ui horizontal divider header">희망근무조건</h3>
            <table class="ui celled padded table">
                <thead>
                    <tr>
                        <th>근무지</th>
                        <td>
                        <!--Json으로 값 불러오기-->
                        <select class='ui search dropdown' name="selSchool" id="selSchool">
                            <option value="">-시/도--</option>
                            &nbsp;&nbsp;
                        </select>
                        <select class='ui search dropdown' name="selSchool" id="selSchool">
                            <option value="">-시/군/구--</option>
                        </select>
                        <p>이 부분은 추후 협의해서 구현해야 할 듯, JSON 파일은 있습니다.</p>
                        </td>
                    </tr>
                    <tr>
                        <th>업직종</th>
                        <td>
                            <div class="ui input focus" >
                                <input type="text" name="resumeName" size="30" id="resumeName" placeholder="원하는 업직종을 입력하세요">
                            </div>
                            <p>이 부분도 마찬가지로 어떤 업직종을 정할것인지 회의를 한번 하고 구현해야 할 것 같습니다.</p>
                        </td>
                    </tr>
                    <tr>
                        <th>근무형태</th>
                        <td>
                            <input type="radio" id="alba">알바 &nbsp; &nbsp;
                            <input type="radio" id="fullTime">정규직 &nbsp; &nbsp;
                            <input type="radio" id="partTime">계약직 &nbsp; &nbsp;
                            <input type="radio" id="dispatch">파견직 &nbsp; &nbsp;
                            <input type="radio" id="intern">인턴 &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <th>근무기간</th>
                        <td>
                            <select class='ui search dropdown' name="selDate" id="selDate">
                                <option value="">--근무기간--</option>
                                <option value="12">1년 이상</option>
                                <option value="6">6개월 ~ 1년</option>
                                <option value="3">3개월 ~ 6개월</option>
                                <option value="1">1개월 ~ 3개월</option>
                                <option value="0">1개월 이하</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>근무일시</th>
                        <td>
                            <select class='ui search dropdown' name="selSchedule" id="selSchedule">
                                <option value="">-근무일시--</option>
                                <option value="무관">무관</option>
                                <option value="평일">평일</option>
                                <option value="주말">주말</option>
                            </select>
                            &nbsp;
                            <select class='ui search dropdown' name="selSchedule1" id="selSchedule1">
                                <option value="">-근무일시--</option>
                                <option value="오전">오전</option>
                                <option value="오후">오후</option>
                                <option value="저녁">저녁</option>
                                <option value="새벽">새벽</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>희망급여</th>
                        <td>
                            <select class='ui search dropdown' name="selSelary" id="selSelary">
                                <option value="">--급여--</option>
                                <option value="일급">일급</option>
                                <option value="주급">주급</option>
                                <option value="월급">월급</option>
                                <option value="연봉">연봉</option>
                                <option value="건별">건별</option>
                            </select> &nbsp;
                            <div class="ui input focus" >
                                <input type="text" name="resumeName" size="10" id="resumeName" placeholder="금액">
                            </div>원
                            <input type="checkbox" id="">추후협의 &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tbody id="tbody1">

                    </tbody>
                </thead>
            </table>
    </div>

    <br><br><br>
    <!--이력서 자기소개서 입력-->
    <div>
        <h3 class="ui horizontal divider header">자기소개서</h3>
        <textarea name="textResume" id="" cols="111" rows="10" style="overflow:scroll;" placeholder="자기소개서를 입력해 주세요."></textarea>
    </div>
    <br><br><br>
    <div style="text-align: center;">
        <button class="ui red button">이력서 저장</button>
        <button type="reset" class="ui primary button">이력서 취소</button> 
    </div>
    </form>
</div>
<br><br><br>

</body>
</html>