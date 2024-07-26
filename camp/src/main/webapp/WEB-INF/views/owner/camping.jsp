<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>캠핑장 등록</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
		<meta name="author" content="JSOFT.net">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<jsp:include page="/resources/commonCssAdmin.jsp"/>
		<link rel="stylesheet" href="/resources/css/campsite.css">

	</head>
	<body >
		<section class="body">
		<!-- start: header -->

        			<jsp:include page="../common/ownerHeader.jsp"/>
        			<!-- end: header -->

        			<div class="inner-wrapper">
        				<!-- start: sidebar -->
        				<jsp:include page="../common/ownerSidebar.jsp"/>
        				<!-- end: sidebar -->
        <section role="main" class="content-body" style="padding-top: 0px;">

        <!---------------------------------------------------------------------------------->
        <h3><strong>내 캠핑장</strong></h3>

			<hr>
			<div id="campsite">
				<img src="/resources/images/campsiteImg/${voList.zoneLayoutImg}" style="height: 300px; width: 300px;">
				
				<div class="form-group">
						<label for="area">지역</label>
						<input type="text" id="area" name="area" value="${voList.area}" readonly>
				</div>
				
				<div class="form-group">
						<label for="campsiteCategory">캠핑장 타입</label>
						<input type="text" id="campsiteCategory" name="campsiteCategory" value="${voList.campsiteCategory}" readonly>
				</div>
				
				<div class="form-group">
						<label for="name">캠핑장 이름</label>
						<input type="text" id="name" name="name" value="${voList.name}" readonly>
				</div>
				
				<div class="form-group">
						<label for="tel">캠핑장 전화번호</label>
						<input type="text" id="tel" name="tel" value="${voList.tel}" readonly>
				</div>
				
				<div class="form-group">
						<label for="address">캠핑장 주소</label>
						<input type="text" id="address" name="address" value="${voList.address}" readonly>
				</div>
				
				<div class="form-group">
						<label for="basicInfo">캠핑장 한줄 소개</label>
						<input type="text" id="basicInfo" name="basicInfo" value="${voList.basicInfo}" readonly>
				</div>
				
				<div class="form-group">
						<label for="introduction">캠핑장 소개</label>
						<textarea id="introduction" name="introduction" readonly>${voList.introduction}</textarea>
				</div>
		</div>
		
         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>