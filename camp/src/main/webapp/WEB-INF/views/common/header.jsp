<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

         <!-- 상단해더 Start -->
         <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
            <div class="container">

               <!-- 로고 Start -->
               <div class="navbar-header">
                  <button class="navbar-toggle" type="button" data-toggle="collapse"
                     data-target="#custom-collapse">
                     <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span
                        class="icon-bar"></span> <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="/home">Campot</a>
               </div>
               <!-- 로고 End -->


               <!-- 메뉴 Start -->
               <div class="collapse navbar-collapse" id="custom-collapse">
                  <ul class="nav navbar-nav navbar-right">


                  <!-- 고객센터 Start -->
                  <li class="dropdown"><a class="dropdown-toggle" href="/servicecenter/home"
                        data-toggle="dropdown">고객센터</a>
                     <ul class="dropdown-menu">
                        <li><a href="/notice/list">공지사항</a></li>
                        <li><a href="/faq/list"> FAQ </a></li>
                     </ul>
                  </li>
                  <!-- 고객센터 End -->

                  <!-- 캠핑장 Start -->
                     <li class="dropdown"><a class="dropdown-toggle" href="/camplist" data-toggle="dropdown">캠핑장 찾기</a>
                         <ul class="dropdown-menu">
                            <li><a href="/">오토캠핑장</a></li>
                            <li><a href="/"> 글램핑장</a></li>
                         </ul>
                     </li>
                  <!-- 캠핑장 End -->


                     <li>
                        <a class="modal-basic" href="/owner/login" id="header-login"><button
                                                         class="btn btn-border-w btn-round btn-xs main-login-btn"
                                                         type="button">사업자 로그인</button></a>
                      </li>

                     <!-- 로그인/로그아웃 Start -->
                     <li>
                           <c:if test="${loginVo != null}">
                               <a class="modal-basic" href="/member/edit" id="header-login"><button
                                     class="btn btn-border-w btn-round btn-xs main-login-btn"
                                     type="button">마이페이지</button></a>
                           </c:if>
                           <c:if test="${loginVo == null}">
                              <a class="modal-basic" href="/member/login" id="header-login"><button
                                    class="btn btn-border-w btn-round btn-xs main-login-btn"
                                    type="button">LOGIN</button></a>
                           </c:if>
                     </li>
                     <!-- 로그인/로그아웃 End -->


                  </ul>
               </div>
               <!-- 메뉴 End -->

            </div>
         </nav>
         <!-- 상단해더 End -->


      