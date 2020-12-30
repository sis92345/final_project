<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<c:import url="common/menubar.jsp" var="menubar"/>
	<c:import url="common/info.jsp" var="info"/>
	<c:import url="components/communitywrite_page/community_write_form.jsp"
	var="form" />
<!DOCTYPE html>
<html>
<head>
<style>
.ck-editor__editable {
    min-height: 800px;
}
</style>

<meta charset="UTF-8" />
<title>Insert title here</title>
<script src="static/js/jquery-3.5.1.js"></script>
<link rel="stylesheet" href="static/css/Semantic/semantic.css" />
<link rel="stylesheet" href="static/css/slick/slick.css" />
<link rel="stylesheet" href="static/css/slick/slick-theme.css" />
<link rel="stylesheet"
	href="static/css/page_styles/community_page/community.css" />

<script src="static/css/styles/visibility.js"></script>
<script src="static/css/styles/sidebar.js"></script>
<script src="static/css/styles/transition.js"></script>
<script src="static/css/Semantic/semantic.js"></script>
<script src="static/js/jquery.twbsPagination.js"></script>

<script src="//unpkg.com/jscroll/dist/jquery.jscroll.min.js"></script>
<script src="static/js/bindWithDelay.js"></script>

<script src="static/js/communitywrite_page/communitywrite.js"></script>
<script src="static/js/common/commons.js"></script>
<link rel="stylesheet"href="static/css/common/common.css" />
<script>
	
</script>
</head>
<body>
	${menubar}
	${info}
	${form}
</body>
 <script src="https://cdn.ckeditor.com/ckeditor5/24.0.0/classic/ckeditor.js"></script>
 <script>
//3. CKEditor5를 생성할 textarea 지정
 ClassicEditor
     .create( document.querySelector( '#cont' ) ,{
    	 removePlugins: [ 'ImageUpload' ]
         })
     .catch( error => {
         console.error( error );
     } );
  </script>
</html>
