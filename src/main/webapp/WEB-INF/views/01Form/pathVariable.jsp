<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>pathVariable.jsp</title>
<link rel="stylesheet" href="../common/bootstrap4.5.3/css/bootstrap.css" />
<script src="../common/jquery/jquery-3.5.1.js"></script>
</head>
<body>
<div class="container">
	<h2>form 데이터 받기</h2>
	
	<h3>@PathVariable 어노테이션으로 폼값 받기</h3>
	
	<ul>
		<li>회원아이디 : ${memberId }</li>
		<li>회원이름 : ${memberName }</li>
	</ul>
	
	<!-- 
	웹브라우저는 /로 구분되는 요청명을 디렉토리(경로)로 인식하므로
	현재 "/form/gildong/코스모"에서는 ../를 추가하여 상위 디렉토리로
	이동한 후 image경로를 찾아야 한다.
	 -->
	<!-- 요청명: 우리입장에서는 명령어, 웹브라우저 입장에서는 그냥 경로라서!
		http://localhost:9999/k10spring/form/gildong99/%EC%BD%94%EC%8A%A4%EB%AA%A8 -->
	<div class="row mt-5">
		<h3>이미지 경로 확인</h3>
		<!-- 이 경로는 사용할수 없다! -->
<!-- 		<img src="../images/4.png" alt="졸귀 강아지" /> -->
		<img src="../../images/4.png" alt="졸귀 강아지" />
	</div>
</div>
</body>
</html>