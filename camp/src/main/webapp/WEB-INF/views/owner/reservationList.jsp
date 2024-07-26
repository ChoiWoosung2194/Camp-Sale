<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>예약자 확인</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
		<meta name="author" content="JSOFT.net">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<jsp:include page="/resources/commonCssAdmin.jsp"/>

	</head>
	<body >
		<section class="body">
		<!-- start: header -->

        			<jsp:include page="../common/ownerHeader.jsp"/>
        			<!-- end: header -->

        			<div class="inner-wrapper">
        				<!-- start: sidebar -->
        				<jsp:include page="../common/ownerSidebar.jsp"/>
        				<!-- end: sidebar -->
        <section role="main" class="content-body" style="padding-top: 0px;">

        <!---------------------------------------------------------------------------------->
        <h3><strong> 예약자 </strong></h3>

			<hr>
			 <div class="table-responsive">
    <table class="table table-hover mb-none">
        <thead>
           <tr>
              <th class="col-md-1">예약번호</th>
              <th class="col-md-1">예약자</th>
              <th class="col-md-1">인원수</th>
              <th class="col-md-1">체크인</th>
              <th class="col-md-1">체크아웃</th>
              <th class="col-md-1">존 이름</th>
              <th class="col-md-1">가격</th>
           </tr>
        </thead>
        <tbody>

        </tbody>
     </table>
      </div>
         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>

   $.ajax({
      url : "http://127.0.0.1:8080/owner/api/reservation",
      method : "get",
      data : {},
      success : (x) => {

         const voList = x;

         const tbody = document.querySelector("tbody")
         let str = "";

         for(let i = 0; i < voList.length ; i++){
               str += "<tr>"
               str += "<td>" + voList[i].reservationNo +"</td>";
               str += "<td>" + voList[i].memberName +"</td>";
               str += "<td>" + voList[i].count +"</td>";
               str += "<td>" + voList[i].startDate +"</td>";
               str += "<td>" + voList[i].endDate +"</td>";
               str += "<td>" + voList[i].zoneName +"</td>";
               str += "<td>" + voList[i].price +"</td>";
               str += "</tr>"
         }
         tbody.innerHTML = str;
      },
      error : (error) => {
         console.log(error);
      },
   });

</script>
