<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GamsungCamp</title>
    <jsp:include page="/resources/commonLib.jsp"></jsp:include>
    <link rel="stylesheet" href="/resources/css/home.css">
</head>

<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
        <br>
        <br>
        <br>

        <div id="mainHead">
            <img src="/resources/images/campHead.jpg" alt=""></img>
        </div>


        <div class="main showcase-page">
            <section class="module-medium" id="demos">
                <div class="container">
                    <div class="row">
                        <div style="padding-left: 30px;">
                            <h2 class="module-title font-alt font-jua main-color" style="text-align: left;font-size: 34px; margin: 0;">추천 캠핑장</h2>
                            <p class="">캠팟의 잘나가는 캠핑장을 소개합니다.</p>
                        </div>
                    </div>

                <c:forEach items="${voList}" var="vo">
                    <div class="col-sm-6 col-md-4 col-lg-4">
                        <div class="post">
                            <div class="post-thumbnail" onclick="location.href='/campdetail/${vo.no}'">
                                <img class="campImg" style="cursor: pointer;" src="/resources/images/campsiteImg/${vo.zoneLayoutImg}" alt="">
                            </div>
                            <div class="post-header font-alt">
                                <h3 class="post-title">${vo.name}</h3>
                                <p class="post-category">${vo.campsiteCategory}</p>
                                <p class="post-info">숙박 15:00~</p>
                                <p class="post-price">99,000원~</p>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </section>
        </div>



            
            <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        </main>

    </body>
</html>
