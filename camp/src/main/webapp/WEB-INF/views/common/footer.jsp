<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="module-small bg-dark">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<div class="widget">
					<h5 class="widget-title font-alt">About CamPot</h5>
					<p>© 2024 KH ACADEMY</p>
					<p>Team : camping</p>
					
					<p>address : 서울특별시 강남구 테해란로 14길 6 YMCA 6층</p>
					<p>tel : 070 - 4827 - 0567</p>
				</div>
			</div>
			
			<div class="col-sm-6">
				<div class="widget">
					<h5 class="widget-title font-alt">Project member</h5>
					<div class="col-sm-6"style="padding-left: 0;">
						<ul>
							<li>박진동&nbsp;-&nbsp;<a href="#">dmosier1@naver.com</a></li>
							<li>[일반회원 캠핑, 결제]</li>
							<li>최우성&nbsp;-&nbsp;<a href="#">icecool2040@naver.com</a></li>
							<li>[사업자회원 캠핑]</li>
							<li>이재화&nbsp;-&nbsp;<a href="#">c2495906@naver.com</a></li>
							<li>[캠핑리스트, 예약]</li>
						</ul>
					</div>
					<div class="col-sm-6">

					</div>
				</div>
			</div>
			
		</div>
	</div>
</div>
<hr class="divider-d" style="height: 0px !important; border-top: 1px solid #fff !important;">
<footer class="footer bg-dark">
	<div class="container">
		<div class="row">
			<div class="col-sm-6">
				<p class="copyright font-alt">
					&copy;2024&nbsp;<a href="https://goai.co.kr/">KH ACADEMY</a>, All Rights Reserved
				</p>
			</div>
			<div class="col-sm-6">
				<div class="footer-social-links">
					<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i
						class="fa fa-twitter"></i></a><a href="#"><i
						class="fa fa-dribbble"></i></a><a href="#"><i class="fa fa-skype"></i></a>
				</div>
			</div>
		</div>
	</div>
</footer>
<div class="scroll-up">
	<a href="#totop"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-up" viewBox="0 0 16 16">
		<path fill-rule="evenodd" d="M8 15a.5.5 0 0 0 .5-.5V2.707l3.146 3.147a.5.5 0 0 0 .708-.708l-4-4a.5.5 0 0 0-.708 0l-4 4a.5.5 0 1 0 .708.708L7.5 2.707V14.5a.5.5 0 0 0 .5.5z"/>
	  </svg></a>
</div>

<c:if test="${!empty user.id}">
	<!-- chatting -->
	<div id="messenger-btn" class="chatting-btn"><i class="fa fa-fw"></i></div>
	<div id="messenger-iframe" class="ch-messenger-hidden">
	<iframe src="/chat/chatlist" frameborder="1"
		style="position:relative!important;height:100%;width:100%!important;border:none!important;"></iframe>
	</div>

</c:if>