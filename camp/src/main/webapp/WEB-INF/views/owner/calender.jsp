<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

<!-- Basic -->
<meta charset="UTF-8">

<title>캠핑장 등록</title>
<meta name="keywords" content="HTML5 Admin Template" />
<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
<meta name="author" content="JSOFT.net">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>




    <jsp:include page="/resources/commonCssAdmin.jsp"/>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/resources/css/calender.css">
    <script defer src="/resources/js/calender.js"></script>

	</head>
    <body>
        <section class="body">
        		<!-- start: header -->

                			<jsp:include page="../common/ownerHeader.jsp"/>
                			<!-- end: header -->

                			<div class="inner-wrapper">
                				<!-- start: sidebar -->
                				<jsp:include page="../common/ownerSidebar.jsp"/>
                				<!-- end: sidebar -->
                <section role="main" class="content-body" style="padding-top: 0px;">

        
        <main id="content">
            <div id="calendar"></div>
        </main>

        <div class="new-calendar-form" id="newEventForm">
            <div class="form-header">
                <h2>일정 등록</h2>
                <button class="cancel-button" onclick="closeFormEvent()">✖</button>
            </div>

            <div class="form-body">
                <div class="form-group">
                    <label for="eventTitle">일정 제목</label>
                    <input type="text" id="eventTitle" name="title" required>
                </div>
               
                <div class="form-group">
                    <label for="startDate">시작일</label>
                    <input type="date" id="startDate" name="startDate" required>
                </div>
                <div class="form-group">
                    <label for="endDate">종료일</label>
                    <input type="date" id="endDate" name="endDate" required>
                </div>
               
                <div class="form-footer">
                    <button id="submitBtn" type="submit" onclick="createCalendar();">일정 등록</button>
                </div>
            </div>
        </div>

        <div class="view-calendar-form" id="viewEventDetailsForm">
            <div class="view-form-header">
                <div><span class="view-calendar-title">일정 제목</span> <span
                        class="view-calendar-enroll-date">2024.06.21</span></div>
                <button class="view-cancel-button" onclick="closeViewEvent()">✖</button>
            </div>

            <div class="view-form-body">
                <div class="view-form-group view-calendar-name">
                    <span class="view-calendar-writer">작성자</span>
                </div>
               
                <div class="view-form-group">
                    <label for="viewStartDate">시작일</label>
                    <input type="date" id="viewStartDate" name="startDate" readonly required>
                </div>
                <div class="view-form-group">
                    <label for="viewEndDate">종료일</label>
                    <input type="date" id="viewEndDate" name="endDate" readonly required>
                </div>
                <div class="view-form-footer">
                    <button class="view-edit-button">수정</button>
                    <button class="view-delete-button">삭제</button>
                </div>
            </div>
        </div>

        </main>

    </body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>



