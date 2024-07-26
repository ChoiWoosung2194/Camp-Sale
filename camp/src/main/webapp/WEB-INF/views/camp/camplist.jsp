<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="ko" dir="ltr">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>ListCamp</title>

    <jsp:include page="/resources/commonLib.jsp"></jsp:include>

    <style>
           .container {
               padding: 20px;
               margin: 0 auto;
           }

           .card {
               display: inline-block;
               width: calc(50% - 20px);
               margin: 10px;
               border: 1px solid #ddd;
               border-radius: 10px;
               padding: 10px;
               text-align: center;
               box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
               cursor: pointer;
               transition: transform 0.2s;
           }

           .card:hover {
               transform: scale(1.05);
           }

           .card img {
               width: 100%;
               height: auto;
               max-width: 200px;
               max-height: 150px;
               border-radius: 10px;
               margin-bottom: 10px;
           }

           .card h2 {
               font-size: 18px;
               font-weight: bold;
               color: #333;
               margin: 10px 0;
           }

           .card p {
               font-size: 14px;
               color: #555;
           }

           .row {
               display: flex;
               flex-wrap: wrap;
               justify-content: space-between;
           }
       </style>
</head>
<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
    <main>
        <jsp:include page="/WEB-INF/views/common/header.jsp" />
        <br>
        <br>
        <br>



        <div class="main showcase-page">
            <section class="module-medium" id="demos">
                <div class="container">
                    <div class="row">
                        <div style="padding-left: 30px;">
                            <h2 class="module-title font-alt font-jua main-color" style="text-align: left;font-size: 34px; margin: 0;">캠팟의 잘나가는 캠핑장을 소개합니다.</h2>
                            <p class=""></p>
                        </div>
                    </div>

                <div class="row">
                    <c:forEach items="${voList}" var="camp">
                        <div class="card" onclick="location.href='/campdetail/${camp.no}'">
                            <img src="/resources/images/campsiteImg/${camp.zoneLayoutImg}" alt="${camp.name}">
                            <h2>${camp.name}</h2>
                            <p>${camp.address}</p>
                        </div>
                    </c:forEach>
                </div>
            </section>
        </div>




            <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        </main>

    </body>
</html>
