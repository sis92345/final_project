<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>기업회원정보</title>

    <script>
      $(document).ready(function () {
        //정보변경하기 누르면 수정화면 뜸
        $("#btnUpdate").click(function () {
          if ($(this).text() == "정보변경") {
            //비밀번호 변경
            let password = $("#password").text();
            $("#password").replaceWith(
              "<input id='txtPassword' type='password' value='" +
                password +
                "'/>"
            );
            //대표자명 변경
            let representative = $("#representative").text();
            $("#representative").replaceWith(
              "<input id='txtRepresentative' type='representative' value='" +
                representative +
                "'/>"
            );
            //사업자번호 변경
            let company_num = $("#company_num").text();
            $("#company_num").replaceWith(
              "<input id='txtCompany_num' type='company_num' value='" +
                company_num +
                "'/>"
            );
            //이메일 변경
            let email = $("#email").text();
            $("#email").replaceWith(
              "<input id='txtEmail' type='email' value='" + email + "'/>"
            );
            //전화번호 변경
            let tel = $("#tel").text();
            $("#tel").replaceWith(
              "<input id='txtTel' type='tel' value='" + tel + "'/>"
            );
            //기업명 변경
            let company_name = $("#company_name").text();
            $("#company_name").replaceWith(
              "<input id='txtCompany_name' type='company_name' value='" +
                company_name +
                "'/>"
            );
            //회사주소 변경
            let address = $("#address").text();
            $("#address").replaceWith(
              "<input id='txtAddress' type='address' value='" + address + "'/>"
            );

            $("#btnUpdate").text("변경완료하기");
            $("#btnUpdate").removeClass();
            $("#btnUpdate").addClass("btn btn-success");
          } else if ($(this).text() == "변경완료") {
            let password = $("#txtPassword").val();
            let company_name = $("#txtCompany_name").val();
            let representative = $("#txtRepresentative").val();
            let company_num = $("#txtCompany_num").val();
            let email = $("#txtEmail").val();
            let tel = $("#txtTel").val();
            let address = $("#txtAddress").val();
            location.href =
              "update.jsp?password=" +
              password +
              "&representative=" +
              representative +
              "&company_num=" +
              company_num +
              "&email=" +
              email +
              "&tel=" +
              tel +
              "&company_name=" +
              company_name +
              "&address=" +
              address;
          }
        });
      });
      $("#btnResume").on("click", function () {
        window.location.href = "MyGongo.jsp";
      });
    </script>
  </head>
  <body>
    <h2 class="text-center">기업회원정보</h2>
    <div class="container">
      <div class="row">
        <table id="signupTable" class="text-center">
          <tr>
            <th>아이디 &nbsp; &nbsp;</th>
            <!-- <td>${id}</td>-->
            <td>sajang1</td>
          </tr>
          <tr>
            <th>비밀번호</th>
            <!-- <td><span id="password">${password}</span></td>-->
            <td><span id="password">1234</span></td>
          </tr>
          <tr>
            <th>기업명</th>
            <!-- <td><span id="company_name">${company_name}</span></td>-->
            <td><span id="company_name">주식회사 알바구니</span></td>
          </tr>
          <tr>
            <th>대표자명</th>
            <!-- <td><span id="representative">${representative}</span></td>-->
            <td><span id="representative">김사장</span></td>
          </tr>
          <tr>
            <th>사업자번호</th>
            <!-- <td><span id="company_num">${company_num}</span></td>-->
            <td><span id="company_num">123-45</span></td>
          </tr>
          <tr>
            <th>이메일</th>
            <!-- <td><span id="email">${email}</span></td>-->
            <td><span id="email">aaa@aaa.com</span></td>
          </tr>
          <tr>
            <th>전화번호</th>
            <!-- <td><span id="tel">${tel}</span></td>-->
            <td><span id="tel">010-1111-1111</span></td>
          </tr>

          <tr>
            <th>회사주소</th>
            <!-- <td><span id="address">${address}</span></td>-->
            <td><span id="address">서울시 강남구 역삼동</span></td>
          </tr>
        </table>
      </div>
    </div>
    <div class="container">
      <div class="row">
        <div id="btnSignup" class="text-center">
          <button type="button" class="btn btn-warning" id="btnUpdate">
            정보변경하기
          </button>
          <button type="button" class="btn btn-warning" id="btnResume">
            내 공고 확인
          </button>
        </div>
      </div>
    </div>
  </body>
</html>
