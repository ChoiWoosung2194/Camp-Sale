<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>고객센터</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
		<meta name="author" content="JSOFT.net">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<jsp:include page="/resources/commonCssAdmin.jsp"/>
<style>


        /* 업로드된 이미지와 유사한 스타일 */
        .panel {
            border: 1px solid #ccc !important;
            border-radius: 4px !important;
            padding: 20px !important;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1) !important;
        }

        .panel-body {
            padding: 15px !important;
            background-color: #f9f9f9 !important;
        }

        .panel-body input[type="text"],
        .panel-body textarea {
            width: 100% !important;
            padding: 10px !important;
            border: 1px solid #ddd !important;
            border-radius: 4px !important;
            margin-bottom: 10px !important;
        }

        .panel-body textarea {
            height: 200px !important;
        }
    </style>
	</head>
	<body >
		<section class="body">
		<!-- start: header -->

        			<jsp:include page="../common/ownerHeader.jsp"/>
        			<!-- end: header -->

        			<div class="inner-wrapper">
        				<!-- start: sidebar -->
        				<jsp:include page="../common/adminSidebar.jsp"/>
        				<!-- end: sidebar -->
        <section role="main" class="content-body" style="padding-top: 0px;">

            <!---------------------------------------------------------------------------------->
            <h3><strong>FAQ 상세보기</strong></h3>

			<hr>
			<div class="panel-body transferlist">
                <div class="table-responsive">
                    작성자 :: <input type="text" name="title" value="${vo.writer}" readonly>
                    제목 ::
                    <input type="text" name="title" value="${vo.title}" readonly> <input type="text" name="hit" value="${vo.hit}" readonly>
                    <br>
                    <br>
                    내용 ::
                    <br>
                    <br>
                    <textarea style="width: 500px; height: 300px;" name="content" readonly>${vo.content}</textarea>
                </div>

            </div>


            <!---------------------------------------------------------------------------------->
        </section>

    </section>


	</body>
</html>