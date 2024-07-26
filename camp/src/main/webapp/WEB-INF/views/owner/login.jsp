<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">

				<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
				<jsp:include page="/resources/commonLib.jsp"></jsp:include>

				<title>사업자 로그인</title>


				<link rel="stylesheet" href="/resources/css/login.css">

			</head>

			<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
				<main>
					<div class="page-loader">
						<div class="loader">Loading...</div>
					</div>
					<jsp:include page="../common/ownerHeader.jsp"></jsp:include>
					<div class="main">
						<!-- <section class="module bg-dark-30 about-page-header"
						data-background="../../resources/images/addGeneralUserImg.png"> -->
						<div class="container" style="padding-top: 72px;">
							<img src="../../resources/images/ownerLogin.png" alt="">
						</div>
						<!-- </section> -->
						<section class="module" style="padding-top:0;">
							<div class="container">
								<div class="row">
									<div class="col-sm-8 col-sm-offset-2">
										<hr class="divider-w mt-10 mb-20">



										<form  action="/owner/login" method="post">
										<input type="text" name="id" placeholder="아이디를 입력하세여">
										<br>
										<br>
										<input type="password" name="pwd" placeholder="비밀번호를 입력하세여">
										<br>
										<br>
										<input type="submit" value="로그인">
										<li style="list-style: none;"><a href="/owner/join">회원가입</a></li>
										</form>


									</div>
								</div>
								<br>
								<div class="col-sm-3 col-sm-offset-2"></div>
								<div class="col-sm-3 col-sm-offset-2">

								</div>
							</div>
						</section>
					</div>
				</main>


			</body>

			</html>