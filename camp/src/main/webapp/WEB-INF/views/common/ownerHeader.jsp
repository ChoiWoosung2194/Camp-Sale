<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <header class="header">
        <div class="logo-container">
            <a href="/admin" class="logo">
                <!-- <img src="" height="35" alt="JSOFT Admin" /> -->
            </a>
            <div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html"
                data-fire-event="sidebar-left-opened">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>

        <!-- start: search & user box -->
        <div class="header-right">
            <!-- 로그인/로그아웃 Start -->
            <ul style="list-style: none;">
                     <li>
                        
                            <c:if test="${loginOwnerVo != null}">
                                <a class="modal-basic" href="/owner/edit" id="header-login">
                                    <button class="btn btn-border-w btn-round btn-xs main-login-btn"
                                          type="button">마이페이지</button></a>
                            </c:if>
                            
                            <c:if test="${loginOwnerVo == null}">
                               <a class="modal-basic" href="/member/login" id="header-login"><button
                                     class="btn btn-border-w btn-round btn-xs main-login-btn"
                                     type="button">LOGIN</button></a>
                            </c:if>
                     </li>
                     <li>
                         <c:if test="${loginOwnerVo != null}">
                              <a class="modal-basic" href="" id="header-login"><button
                               class="btn btn-border-w btn-round btn-xs main-login-btn"
                               type="button" onclick="logout();">로그아웃</button></a>
                         </c:if>
                     </li>
            </ul>
            <!-- 로그인/로그아웃 End -->



        </div>
        <!-- end: search & user box -->
    </header>
    <script>
        function logout(){
           $.ajax({
              url : "/member/logout",
              method : "get",
              data : {},
              success : function(x){
                 alert(x);
                 location.href="/home";
              },
              error : function(error){
                 console.log(error);
              }
           });
        }
    </script>