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
		<link rel="stylesheet" href="/resources/css/campNotice.css">
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
        <h3><strong>공지사항 등록하기</strong></h3>

			<hr>
			<div class="insertArea">
				<input type="text" name="title" placeholder="제목">
				<br>
				<br>
				<textarea name="content" placeholder="공지사항 내용"></textarea>
				<br>
				<br>
				<button onclick="insertNotice();">작성하기</button>
			</div>	
         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

<script>
	function insertNotice(){

		const title = document.querySelector("input[name = title]").value;
		const content = document.querySelector("textarea[name = content]").value;
	
		$.ajax({
			url : "http://127.0.0.1:8080/owner/api/notice",
			method : "post",
			data : {
				title : title ,
				content : content
			},
			success : function(x){
				alert(x);
	
				location.href="/owner/main";
			},
			error : function(error){
					console.log(error);
			},
		});
	}

</script>

