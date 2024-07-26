<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="KR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>예약 페이지</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>


        <script src="/resources/js/reservatioin.js"></script>
         <jsp:include page="/resources/commonLib.jsp"></jsp:include>
            <link rel="stylesheet" href="/resources/css/home.css">
   <link rel="stylesheet" href="/resources/css/reservation.css">
</head>

<body>
<jsp:include page="/WEB-INF/views/common/header.jsp" />
    <div class="bg">
        <div class="container reservation-main">
            <section class="page-container">
                <section class="zone-content">
                    <section class="zone-container">
                        <div class="zone-image">
                           <img src="/resources/images/zoneImg/${vo.filePath}" alt="">
                        </div>

                        <div class="zone-info">
                            <div class="zone-name">존 이름 : ${vo.name}</div>
                            <div id="zone-price">${vo.price} 원</div>
                            <input type="text" name="zoneNo" value="${vo.no}" hidden>
                            <div class="zone-car">기준 차량 1대</div>
                        </div>
                    </section>
                </section>

                <section class="customer-content">
                        <div class="customer-total section-title">체크인 / 체크아웃</div>
                        <section class="customer-count-result customer-container">
                            <div>
                                <span>체크인</span>
                                <input type="date" id="startDate" name="startDate">
                            </div>
                            <div>
                                <span>체크아웃</span>
                                <input type="date" id="endDate" name="endDate">
                            </div>
                            <div>
                                <span>총 숙박일:</span>
                                <span id="result">0 박</span>
                            </div>
                        </section>
                    </section>

                <section class="customer-content">
                        <div class="customer-total section-title">전체인원정보</div>
                         <section class="customer-count-result customer-container">
                            <div>
                                <span>기준인원</span>
                                <span id="basic-count">2</span>명
                            </div>
                            <div>
                                <span>추가 가능인원</span>
                                <span>2명</span>
                            </div>
                            <div>
                                <span>인원 수</span>
                                <select style="margin-left: 450px;" name="" id="">
                                  <option value="1">1</option>
                                  <option value="2">2</option>
                                  <option value="3">3</option>
                                  <option value="4">4</option>
                                </select> 명

                            </div>
                </section>
              </section>
                <section>
                    <section>
                        <div>*잠시 방문하는 게스트도 인원 정보에 포함해야 합니다.</div>
                    </section>
                </section>

                <section class="reservation-total-cost-content">
                    <section class="reservation-cost-container-total">
                        <div class="total-result-container">
                            <h2>총 금액</h2>
                            <div style="margin-left: 500px; font-size: xx-large; font-weight: bolder;" >
                                <label for="" id="totalPrice"></label>
                                <span>원</span></div>
                        </div>
                    </section>
                </section>
                <section class="pay-content">
                    <button onclick="reserv();" class="pay-go btn btn-outline-success">결제하기</button>
                </section>
            </section>
        </div>
    </div>


  <jsp:include page="/WEB-INF/views/common/footer.jsp" />
</body>

</html>