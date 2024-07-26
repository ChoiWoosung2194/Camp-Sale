<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
    <title>결제 완료</title>
 <jsp:include page="/resources/commonLib.jsp"></jsp:include>
                <link rel="stylesheet" href="/resources/css/home.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f7f7f7;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            text-align: center;
            background-color: white;
            padding: 20px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        .content h1 {
            color: #4CAF50;
        }

        .order-info {
            text-align: left;
            margin-top: 20px;
        }

        .order-info h2, .order-info h3 {
            margin-bottom: 10px;
        }

        .order-info p, .order-info ul {
            margin: 5px 0;
        }

        #product-list {
            list-style-type: none;
            padding: 0;
        }

        #product-list li {
            margin-bottom: 5px;
        }

        .button {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 4px;
        }

        .button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

 <div class="container">
        <div class="content">
            <h1>결제가 완료되었습니다!</h1>
            <p>고객님의 결제가 성공적으로 처리되었습니다.</p>
            <div class="order-info">
                <h2>주문 정보</h2>
                <p>주문 번호: <span id="order-number">${tid}</span></p>
                <h3>상품 정보</h3>
                <ul id="product-list">
                    <!-- JavaScript를 통해 동적으로 상품 정보가 추가될 것입니다. -->
                </ul>
                <p>총 결제 금액: <span id="total-amount">${vo.totalPrice} 원</span></p>
            </div>
            <a href="/home" class="button">홈으로 돌아가기</a>
        </div>
    </div>

</body>
</html>

