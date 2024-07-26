<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">

				<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
				<jsp:include page="/resources/commonLib.jsp"></jsp:include>

				<title>관리자 로그인</title>

			<link rel="stylesheet" href="/resources/css/login.css">

				<script src="https://oss.maxcdn.com/libs/html5shiv/  /html5shiv.js"></script>
				<script src="https://oss.maxcdn.com/libs/respond.js/ /respond.min.js"></script>
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


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
							<img src="../../resources/images/admin.png" alt="">
						</div>
						<!-- </section> -->
						<section class="module" style="padding-top:0;">
							<div class="container">
								<div class="row">
									<div class="col-sm-8 col-sm-offset-2">
										<hr class="divider-w mt-10 mb-20">

                                    <form action="/admin/login" method="post">
                                        <div>
                                            <label for="id">아이디 : </label>
                                            <input type="text" id="id" name="id">
                                        </div>
                                        <div>
                                            <label for="password">패스워드 : </label>
                                            <input type="password" id="pwd" name="pwd">
                                        </div>
                                        <div>
                                            <button type="submit">Login</button>
                                        </div>
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