<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>캠핑존 등록</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
		<meta name="author" content="JSOFT.net">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<jsp:include page="/resources/commonCssAdmin.jsp"/>
		<link rel="stylesheet" href="/resources/css/zoneInsert.css">

		<script>
			   const msg = "${sessionScope.msg}";
    if (msg) {
        alert("메시지: " + msg);
       session.removeAttribute("msg"); 
    }
		</script>

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
        <h3><strong>캠핑존 등록하기</strong></h3>
				<div id="zoneInsert">
					<hr>
					<form action="/owner/zone/insert" method="post" enctype="multipart/form-data">
					<input type="text" name="seasonNo" value="1" hidden>
					<input type="text" name="name" placeholder="존 이름">
					<input type="number" name="maxPeople" placeholder="최대인원"> 명
					<input type="number" name="price" placeholder="가격"> 원
							<label for="imgPath">사진 업로드</label>
							 <input type="file" name="imgPath">
							<input type="submit" value="사진 올리기">
					</form>
			</div>
         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>


