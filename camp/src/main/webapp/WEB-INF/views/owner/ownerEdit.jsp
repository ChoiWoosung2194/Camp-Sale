<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title>사업자 개인정보</title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="JSOFT Admin - Responsive HTML5 Template">
		<meta name="author" content="JSOFT.net">
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>

		<jsp:include page="/resources/commonCssAdmin.jsp"/>

 <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }
        .header, .sidebar {
            background-color: #fff;
            padding: 10px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
        }
        .content-body {
            background-color: #fff;
            margin: 20px;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0,0,0,0.1);
            border-radius: 10px;
        }
        h3 {
            color: #333;
        }
        input[type="text"], input[type="password"] {
            width: 300px;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #45a049;
        }
    </style>
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
        <h3><strong>개인정보 확인 및 변경</strong></h3>

			<hr>

				아이디 :: <input type="text" name="id" value="${loginOwnerVo.id}" readonly>
				<br>
				<br>
				현재 비밀번호 :: <input type="text" name="pwd" value="${loginOwnerVo.pwd}" readonly>
				<br>
				변경할 비밀번호 :: <input type="password" name="changePwd" value="" placeholder="변경할 비밀번호 입력"><button onclick="changePwd();">변경하기</button>
				<br>
				<br>
				현재 닉네임 :: <input type="text" name="nick" value="${loginOwnerVo.nick}" readonly>
				<br>
				변경할 닉네임 :: <input type="text" name="changeNick" value="" placeholder="변경할 닉네임 입력"><button onclick="changeNick();">변경하기</button>
				<br>
        <br>
				이름 :: <input type="text" name="name" value="${loginOwnerVo.name}" readonly>
				<br>
				<br>
				Email :: <input type="text" name="email" value="${loginOwnerVo.email}" readonly>
				<br>
				<br>
			  현재 핸드폰 번호 :: <input type="text" name="phone" value="${loginOwnerVo.phone}" readonly >
				<br>
			  변경할 핸드폰 번호 :: <input type="text" name="changeNick" value="" placeholder="변경할 핸드폰 번호 입력" ><button onclick="changePhone();">변경하기</button>
				<br>
				<br>
			  주소 :: <input type="text" name="address" value="${loginOwnerVo.address}" readonly>
			<hr>


         <!---------------------------------------------------------------------------------->
</section>

    </section>


	</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
	function changePwd(){
		const pwdValue = document.querySelector("input[name=changePwd]").value;

		$.ajax({
			url : "http://127.0.0.1:8080/owner/edit",
			method : "post",
			data : {
				pwd : pwdValue
			},
			success :function(msg){
				alert(msg)
				location.href="/owner/login"
			} ,
			error :function(error){
				console.log(error);
			} 
		});
	};

	function changeNick(){
		const nickValue = document.querySelector("input[name=changeNick]").value;

		$.ajax({
			url : "http://127.0.0.1:8080/owner/edit",
			method : "post",
			data : {
				nick : nickValue
			},
			success :function(msg){
				alert(msg)
				location.href="/owner/main"
			} ,
			error :function(error){
				console.log(error);
			} 
		});
	};

	function changePhone(){
		const phoneValue = document.querySelector("input[name=changePhone]").value;

		$.ajax({
			url : "http://127.0.0.1:8080/owner/edit",
			method : "post",
			data : {
				phone : phoneValue
			},
			success :function(msg){
				alert(msg)
				location.href="/owner/main"
			} ,
			error :function(error){
				console.log(error);
			} 
		});
	}


</script>