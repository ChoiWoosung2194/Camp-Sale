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
   <style>
           .campImg {
               display: block;
               margin: auto;
               width: 100%;
               height: 250px;
           }
           #findIdModal {
               z-index: 1041;
               position: fixed;
               width: 100%;
               height: 100vh;
           }
           .find {
               position: absolute;
               top: 50%;
               left: 50%;
               transform: translateY(-50%) translateX(-50%);
           }
           .shop-item-title {
               text-decoration: none;
               color: #333;
               text-overflow: ellipsis;
           }
           #mainHead {
               display: flex !important;
               align-items: center !important;
               justify-content: center !important;
           }
           #mainHead img {
               max-width: 100% !important;
               height: auto !important;
           }
       </style>
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
            <h3><strong>개인정보 확인 및 변경</strong></h3>

                <hr>

                    아이디 :: <input type="text" name="id" value="${loginVo.id}" readonly>
                    <br>
                    <br>
                    현재 비밀번호 :: <input type="text" name="pwd" value="${loginVo.pwd}" readonly>
                    <br>
                    변경할 비밀번호 :: <input type="password" name="changePwd" value="" placeholder="변경할 비밀번호 입력"><button onclick="changePwd();">변경하기</button>
                    <br>
                    <br>
                    현재 닉네임 :: <input type="text" name="nick" value="${loginVo.nick}" readonly>
                    <br>
                    변경할 닉네임 :: <input type="text" name="changeNick" value="" placeholder="변경할 닉네임 입력"><button onclick="changeNick();">변경하기</button>
                    <br>
                    <br>
                    이름 :: <input type="text" name="name" value="${loginVo.name}" readonly>
                    <br>
                    <br>
                    Email :: <input type="text" name="email" value="${loginVo.email}" readonly>
                    <br>
                    <br>
                  현재 핸드폰 번호 :: <input type="text" name="phone" value="${loginVo.phone}" readonly >
                    <br>
                  변경할 핸드폰 번호 :: <input type="text" name="changeNick" value="" placeholder="변경할 핸드폰 번호 입력" ><button onclick="changePhone();">변경하기</button>
                    <br>
                    <br>
                  주소 :: <input type="text" name="address" value="${loginVo.address}" readonly>
                <hr>


        </div>




            <jsp:include page="/WEB-INF/views/common/footer.jsp" />
        </main>

    </body>
</html>
