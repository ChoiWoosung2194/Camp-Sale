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

    <style>
        /* 기본 글꼴 설정 */
        * {
            font-family: 'Noto Sans KR', sans-serif !important;
        }

        /* 제목 스타일 */
        .module-title {
            color: #333064 !important;
            font-weight: 400 !important;
            font-size: 14px !important;
        }

        /* 테이블 패딩 조정 */
        .table>tbody>tr>td,
        .table>tbody>tr>th,
        .table>tfoot>tr>td,
        .table>tfoot>tr>th,
        .table>thead>tr>td,
        .table>thead>tr>th {
            padding: 18px !important;
        }

        /* 레이어 숨김 */
        .layertwo {
            display: none !important;
        }

        /* 검색 버튼 스타일 */
        .search-btn {
            position: absolute !important;
            background: transparent !important;
            border: none !important;
            overflow: hidden !important;
            top: 50% !important;
            right: 1px !important;
            width: 23px !important;
            height: 40px !important;
            line-height: 38px !important;
            font-size: 14px !important;
            outline: none !important;
            color: #999 !important;
            margin-top: -20px !important;
        }

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
