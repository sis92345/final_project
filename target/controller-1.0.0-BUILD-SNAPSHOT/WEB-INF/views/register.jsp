<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:import url="common/menubar.jsp" var="menubar" />
<c:import url="common/info.jsp" var="info" />
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>회원가입 페이지 입니다</title>
    <script src="static/js/jquery-3.5.1.js"></script>
    <link rel="stylesheet" href="static/css/Semantic/semantic.css" />
    <link rel="stylesheet" href="static/css/page_styles/register_page/register.css" />
    <script src="static/js/common/commons.js"></script>
    <script src="static/css/Semantic/semantic.js"></script>
<link rel="stylesheet"href="static/css/common/common.css" />
  </head>
  <body>
  ${menubar} ${info}
    <div class="ui center aligned container" id="container">
      <div class="ui grid">
        <div class="doubling one column row">
          <div class="column">
            <h2 class="ui horizontal divider header die">회원가입</h2>
            <br />
          </div>
        </div>

        <div class="doubling two column row">
          <div class="column">
            <div class="ui items">
              <div class="item">
                <div class="image">
                  <img
                    class="ui tiny rounded image"
                    src="images/docs.png"
                    
                  /><br />
                </div>
                <div class="middle aligned content">
                  <a class="header" href="register_alba">개인회원</a>
                  <div class="description">
                    <span>나에게 딱 맞는 알바 정보를 찾는 분</span>
                  </div>
                </div>
              </div>
              <a class="fluid ui blue button" href="register_alba">
                <br />가입하기<br /><br />
              </a>
            </div>
          </div>

          <div class="column">
            <div class="ui items">
              <div class="item">
                <div class="image">
                  <img
                    class="ui tiny rounded image"
                    src="images/Corp.png"
                    
                  /><br />
                </div>
                <div class="middle aligned content">
                  <a class="header" href="register_sajang">기업회원</a>
                  <div class="description">
                    <span>알바생을 찾는 분(사업자등록번호 필수 입력)</span>
                  </div>
                </div>
              </div>
              <a class="fluid ui orange button" href="register_sajang">
                <br />가입하기<br /><br />
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>