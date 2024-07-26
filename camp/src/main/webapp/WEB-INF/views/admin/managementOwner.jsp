<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <!DOCTYPE html>
      <html lang="en-US" dir="ltr">

      <head>
         <meta charset="utf-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1">
         <!--
    Document Title
    =============================================
    -->
         <title>캠팟의 FAQ</title>

         <jsp:include page="/resources/commonLib.jsp" />

         <style>
            .mb-0 {
               color: #333064;
               font-weight: 400;
               font-size: 14px;
               color: #333064;
            }


            * {
               font-family:
                  'Noto Sans KR', sans-serif;
            }

            .table>tbody>tr>td,
            .table>tbody>tr>th,
            .table>tfoot>tr>td,
            .table>tfoot>tr>th,
            .table>thead>tr>td,
            .table>thead>tr>th {
               padding: 18px;
            }




            .layertwo {
               display: none;
            }

            .search-btn {
               position: absolute;
               background: transparent;
               border: none;
               overflow: hidden;
               top: 50%;
               right: 1px;
               width: 23px;
               height: 40px;
               line-height: 38px;
               font-size: 14px;
               outline: none;
               color: #999;
               margin-top: -20px;
            }
         </style>

         <!-- <link id="color-scheme" href="../../../resources/css/serviceCenter.css" rel="stylesheet"> -->
      </head>

      <body data-spy="scroll" data-target=".onpage-navigation" data-offset="60" class="myReport">
         <main>
            <!--             <div class="page-loader"> -->
            <!--                <div class="loader">Loading...</div> -->
            <!--             </div> -->


            <!-- start: header -->

            			<jsp:include page="../common/adminHeader.jsp"/>
            			<!-- end: header -->

            			<div class="inner-wrapper">
            				<!-- start: sidebar -->
            				<jsp:include page="../common/adminSidebar.jsp"/>
            				<!-- end: sidebar -->

            				<section role="main" class="content-body" style="padding-top: 0px;">
               <section class="module" style="padding:20px">
                  <div class="container">

                     <section class="panel">


                        <div class="panel-body transferlist">
                           <div class="table-responsive">
                              <table class="table table-hover mb-none">
                                 <thead>
                                    <tr>
                                       <th class="col-md-1" style="text-align: center;">번호</th>
                                       <th class="col-md-1" style="text-align: center;">아이디</th>
                                       <th class="col-md-1" style="text-align: center;">비밀번호</th>
                                       <th class="col-md-1" style="text-align: center;">닉네임</th>
                                       <th class="col-md-1" style="text-align: center;">핸드폰번호</th>
                                       <th class="col-md-1" style="text-align: center;">이름</th>
                                       <th class="col-md-1" style="text-align: center;">이메일</th>
                                       <th class="col-md-1" style="text-align: center;">사업자 번호</th>
                                       <th class="col-md-1" style="text-align: center;">가입여부</th>
                                       <th class="col-md-1" style="text-align: center;">가입승인하기</th>
                                    </tr>
                                 </thead>
                                 <tbody>
                                    

                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </section>
                  </div>
               </section>
         </main>
      </body>
      </html>
     <script src="/resources/js/admin/management.js"></script>