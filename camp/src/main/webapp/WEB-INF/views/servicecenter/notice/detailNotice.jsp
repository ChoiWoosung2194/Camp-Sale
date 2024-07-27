<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko" dir="ltr">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--
    Document Title
    =============================================
    -->
    <title>캠팟의 공지사항</title>

    <jsp:include page="/resources/commonLib.jsp" />
<link rel="stylesheet" href="/resources/css/noticeDetail.css">
</head>

<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60" class="myReport">
    <main>
        <!--             <div class="page-loader"> -->
        <!--                <div class="loader">Loading...</div> -->
        <!--             </div> -->

        <!-- header -->
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
        <!-- header End -->

        <div class="main sc-main">
            <section class="module bg-dark-30 about-page-header" data-background="/resources/images/servicecenter.png"
                style="  padding-top: 370px;  padding-bottom: 390px;">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-6 col-sm-offset-3">
                            <h1 class="module-title font-alt mb-0"></h1>
                        </div>
                    </div>
                </div>
            </section>
            <section class="module" style="padding:20px">
                <div class="container">
                    <section class="panel">
                        <div class="panel-body transferlist">
                            <div class="table-responsive">
                                제목 : <input type="text" name="title" value="${vo.title}" readonly>
                                조회수 : <input type="text" value="${vo.hit}" readonly>
                                <br>
                                <br>
                                내용 : <br>
                                <textarea name="content" id="" readonly>${vo.content}</textarea>
                            </div>

                        </div>
                    </section>
                </div>
            </section>
            <jsp:include page="/WEB-INF/views/common/footer.jsp" />
    </main>
    <!-- <script src="../../../resources/js/servicecenter/report.js"></script> -->
</body>

</html>
