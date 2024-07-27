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
        <link rel="stylesheet" href="/resources/css/ownerNoticeDetail.css">
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
        <h3><strong>공지사항 상세보기</strong></h3>

			<hr>
            <section class="module" style="padding:20px">
                <div class="container">
                    <section class="panel">
                        <div class="panel-body transferlist">
                            <div class="table-responsive">
                                제목 : <input type="text" name="title" value="${vo.title}" >  조회수 : <input type="text" value="${vo.hit}" readonly>
                                <br>
                                <br>
                                내용 : <br>
                                <textarea name="content" id="" >${vo.content}</textarea>
                                <button onclick="editNotice(${vo.no});">수정하기</button>
                                <button onclick="deleteNotice(${vo.no});">삭제하기</button>

                            </div>

                        </div>
                    </section>
                </div>
            </section>

         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>
<script>


function editNotice(no) {

    const title = document.querySelector('input[name="title"]').value;
    const content = document.querySelector('textarea[name="content"]').value;
    

    $.ajax({
        url: "/owner/api/notice/update",
        method: "post",
        data: {
            no: no,
            title: title,
            content: content
        },
        success: (response) => {
            alert(response);
            window.location.replace("/owner/notice/list");


        },
        error: (error) => {
            console.error("Error updating notice", error);
        }
    });
}
    function deleteNotice(no){
      
      $.ajax({
         url : "/owner/api/notice",
         method : "delete",
         data : {
         no : no
         },
         success : function(x){
            alert(x);
            location.href="/owner/notice/list"
         },
         error : function(error){
            console.log(error);
         }
         
      });
   }
</script>