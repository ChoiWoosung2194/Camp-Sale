<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>GamsungCamp</title>
    <jsp:include page="/resources/commonLib.jsp"></jsp:include>

    <script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
    <style>
        .map_wrap,
        .map_wrap * {
            margin: 0;
            padding: 0;
            font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
            font-size: 12px;
        }

        .map_wrap {
            position: relative;
            width: 100%;
            height: 350px;
        }

        img {
            display: block;
            margin: auto;
        }

        .tab-pane iframe {
            width: 100%;
            height: 100%;
            border: 0;
        }
        .zone-box {
            border: 1px solid #ddd;
            padding: 15px;
            margin-bottom: 20px;
            text-align: center;
        }
        .zone-box img {
            max-width: 100%;
            height: auto;
        }
    </style>
</head>

<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
<main>
    <!-- header -->
    <jsp:include page="/WEB-INF/views/common/header.jsp" />
    <!-- header End -->

    <div class="main">
        <section class="module">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="row">
                            <div class="col-sm-12">
                                <h1 class="product-title font-alt" style="margin-bottom: 0px;">${campDetail.name}</h1>
                            </div>
                        </div>
                        <hr>

                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <div class="price"><span style="font-size: medium;">${campDetail.address}</span></div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-sm-12">
                                <div><span style="font-size: small;" id="phone_format" value="${campDetail.tel}">전화번호&nbsp;:&nbsp;${campDetail.tel}</span></div>
                            </div>
                        </div>
                        <hr>
                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <div class="description">
                                    <p style="margin-bottom: 0px;">주요시설&nbsp;:&nbsp;
                                        <c:if test="${campDetail.market}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/market.png" alt="시장"> 매점,
                                        </c:if>
                                        <c:if test="${campDetail.shower}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/shower.png" alt="샤워시설"> 샤워시설,
                                        </c:if>
                                        <c:if test="${campDetail.toilet}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/toilet.png" alt="화장실"> 화장실,
                                        </c:if>
                                        <c:if test="${campDetail.electricStation}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/electricStation.png" alt="전기시설"> 전기시설,
                                        </c:if>
                                        <c:if test="${campDetail.bbq}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/bbq.png" alt="BBQ"> BBQ,
                                        </c:if>
                                        <c:if test="${campDetail.cafe}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/cafe.png" alt="카페"> 카페,
                                        </c:if>
                                        <c:if test="${campDetail.pool}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/pool.png" alt="수영장"> 수영장,
                                        </c:if>
                                        <c:if test="${campDetail.activity}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/activity.png" alt="활동공간"> 활동공간,
                                        </c:if>
                                        <c:if test="${campDetail.playground}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/playground.png" alt="놀이터"> 놀이터,
                                        </c:if>
                                        <c:if test="${campDetail.pet}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/pet.png" alt="반려동물"> 반려동물,
                                        </c:if>
                                        <c:if test="${campDetail.trailer}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/trailer.png" alt="트레일러"> 트레일러,
                                        </c:if>
                                        <c:if test="${campDetail.caravan}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/caravan.png" alt="카라반"> 카라반,
                                        </c:if>
                                        <c:if test="${campDetail.tracking}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/tracking.png" alt="트래킹"> 트래킹,
                                        </c:if>
                                        <c:if test="${campDetail.trampoline}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/trampoline.png" alt="트램펄린"> 트램펄린,
                                        </c:if>
                                        <c:if test="${campDetail.sleigh}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/sleigh.png" alt="썰매장"> 썰매장,
                                        </c:if>
                                        <c:if test="${campDetail.campingTool}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/campingTool.png" alt="캠핑도구"> 캠핑도구,
                                        </c:if>
                                        <c:if test="${campDetail.waterPlay}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/waterPlay.png" alt="물놀이"> 물놀이,
                                        </c:if>
                                        <c:if test="${campDetail.fishing}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/fishing.png" alt="낚시"> 낚시,
                                        </c:if>
                                        <c:if test="${campDetail.waterActivity}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/waterActivity.png" alt="수상활동"> 수상활동,
                                        </c:if>
                                        <c:if test="${campDetail.mtb}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/mtb.png" alt="MTB"> MTB,
                                        </c:if>
                                        <c:if test="${campDetail.hiking}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/hiking.png" alt="등산"> 등산,
                                        </c:if>
                                        <c:if test="${campDetail.golf}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/golf.png" alt="골프"> 골프,
                                        </c:if>
                                        <c:if test="${campDetail.beach}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/beach.png" alt="해변"> 해변,
                                        </c:if>
                                        <c:if test="${campDetail.ski}">
                                            <img src="${pageContext.request.contextPath}/resources/images/facility/ski.png" alt="스키"> 스키
                                        </c:if>
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <button class="btn btn-round btn-b"><a href="https://map.kakao.com/link/map/${campDetail.address}" style="color: white;">길찾기</a></button>
                            </div>
                        </div>
                        <div class="row mb-20">
                            <div class="col-sm-12">
                                <button class="btn btn-round btn-b" id="select-zone-btn" style="color: white;">존 선택</button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6">
                        <img src="/resources/images/campsiteImg/${campDetail.zoneLayoutImg}" alt="캠핑장 레이아웃" class="img-responsive" style="width:100%; height:auto;"/>
                    </div>
                </div>
                <div class="row mt-40">
                    <div class="col-sm-12">
                        <h2 class="section-title font-alt">캠핑존 목록</h2>
                        <div class="row">

                            <c:forEach var="zone" items="${zones}">
                                <div class="col-sm-4 mb-20">
                                    <div class="zone-box">
                                        <img src="/resources/images/zoneImg/${zone.filePath}" alt="${zone.name}" class="img-responsive">
                                        <h3 class="zone-name">${zone.name}</h3>
                                        <p>가격: <fmt:formatNumber value="${zone.price}" type="currency"/> / 최대 인원: ${zone.maxPeople}명</p>
                                        <a href="/reservation?zoneNo=${zone.no}">예약하기</a>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                </div>
                <div class="row mt-40">
                    <div class="col-sm-12">
                        <h2 class="section-title font-alt">공지사항</h2>
                        <div class="row">
                            <div class="col-sm-12">
                                <c:forEach items="${noticeList}" var="notice">
                                    <div class="card">
                                    <ul style="list-style: none;">
                                        <li>
                                            <label>${notice.title}</label>
                                        </li>
                                        <li>
                                            <span>${notice.content}</span>
                                        </li>
                                    </ul>
                                    
                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>

    <jsp:include page="/WEB-INF/views/common/footer.jsp" />

</main>

</body>
</html>
