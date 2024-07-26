<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
			<!DOCTYPE html>
			<html>

			<head>
				<meta charset="UTF-8">

				<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
				<jsp:include page="/resources/commonLib.jsp"></jsp:include>

				<title>일반 회원가입</title>

				<style>
					.form-group .btn {
						height: 26px;
						padding-top: 0;
						padding-bottom: 0;
						margin: auto 10px;
						color: blue;
					}

					.form-group label {
						width: 170px;
					}

					#checkMailAuth {
						margin-left: 232px;
						margin-top: 10px;

					}

					.img_business {
						border: 2px solid #A8A8A8;
						margin-top: 30px;
						margin-bottom: 30px;
						padding-top: 10px;
						padding-bottom: 10px;
					}

					.checkFont {
						font-size: 12px;
						padding-left: 57px;
					}
				</style>

				<script src="https://oss.maxcdn.com/libs/html5shiv/  /html5shiv.js"></script>
				<script src="https://oss.maxcdn.com/libs/respond.js/ /respond.min.js"></script>
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>


			</head>

			<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
				<main>
					<div class="page-loader">
						<div class="loader">Loading...</div>
					</div>
					<jsp:include page="../common/header.jsp"></jsp:include>
					<div class="main">
						<!-- <section class="module bg-dark-30 about-page-header"
						data-background="../../resources/images/addGeneralUserImg.png"> -->
						<div class="container" style="padding-top: 72px;">
							<img src="../../resources/images/memberJoin.png" alt="">
						</div>
						<!-- </section> -->
						<section class="module" style="padding-top:0;">
							<div class="container">
								<div class="row">
									<div class="col-sm-8 col-sm-offset-2">
										<hr class="divider-w mt-10 mb-20">



										<form  action="/member/join" method="post">
											<div id="add_b_email" class="form-group row">
												<div><input id="role" name="role" value="BUSINESS" hidden="hidden">
												</div>
												<label for="add_b_id"
													class="col-sm-offset-1 col-sm-3 control-label"><strong>아이디</strong></label>
												<div class="col-sm-6">
													<input id="add_b_id" name="id" class="form-control " type="text" placeholder="아이디를 입력하세요." />
												</div>

											</div>

											<div class="form-group row">
												<label for="add_b_password"
													class="col-sm-offset-1 col-sm-3 control-label"><strong>비밀번호</strong></label>
												<div class="col-sm-6">
													<input id="add_b_password" name="pwd" class="form-control " type="password"
														placeholder="비밀번호는 8~15자까지 입력 가능합니다." maxlength="15" />
												</div>
												<div id="add_b_check-pwd-exp" class='col-sm-offset-3 col-sm-6 checkFont'></div>
											</div>

											<div class="form-group row">
												<label for="add_b_confirmPassword" class="col-sm-offset-1 col-sm-3 control-label"><strong>비밀번호
														재확인</strong></label>
												<div class="col-sm-6">
													<input id="add_b_confirmPassword" name="pwd2" class="form-control" type="password"
														placeholder="비밀번호를 입력해 주세요." />
												</div>
												<div id="add_b_check-pwd" class='col-sm-offset-3 col-sm-6 checkFont'>
												</div>
											</div>

											<div class="form-group row">
												<label for="add_b_name" class="col-sm-offset-1 col-sm-3 control-label"><strong>
														이름</strong></label>
												<div class="col-sm-6">
													<input id="add_b_name" name="name" class="form-control" type="text" placeholder="이름을 입력하세요" />
												</div>
											</div>

											<div class="form-group row">
												<label for="add_b_name" class="col-sm-offset-1 col-sm-3 control-label"><strong>휴대폰
														번호</strong></label>
												<div class="col-sm-6">
													<input id="add_b_phone" name="phone" class="form-control" type="text"
														placeholder="휴대폰 번호를 입력하세요" />
												</div>
											</div>


											<div class="form-group row">
												<label for="add_b_nick"
													class="col-sm-offset-1 col-sm-3 control-label"><strong>사용할 닉네임</strong></label>
												<div class="col-sm-6">
													<input id="add_b_nick" name="nick" class="form-control" type="text" placeholder="닉네임을 입력하세요" />
												</div>
											</div>

											<div class="form-group row">
												<label for="add_b_email"
													class="col-sm-offset-1 col-sm-3 control-label"><strong>이메일</strong></label>
												<div class="col-sm-6">
													<input id="add_b_email" name="email" class="form-control" type="text"
														placeholder="이메일을 입력하세요" />
												</div>
											</div>

											<div class="form-group row">
                                                <label for="add_b_address" class="col-sm-offset-1 col-sm-3 control-label"><strong>
                                                        주소</strong></label>
                                                <div class="col-sm-6">
                                                   <input type="text" name="zipCode" id="sample4_postcode" class="form-control" placeholder="우편번호">
                                                   <input type="button" onclick="sample4_execDaumPostcode()" class="form-control"  value="우편번호 찾기"><br>
                                                   <input type="text" name="address" id="sample4_roadAddress" class="form-control" placeholder="도로명주소">

                                                   <span id="guide" style="color:#999;display:none"></span>
                                                   <input type="text" name="detailAddress" id="sample4_detailAddress" class="form-control" placeholder="상세주소">
                                                </div>

                                            </div>

											<input id="add_b_joinAddUser" class="btn btn-border-d btn-circle" type="submit" value="회원가입">

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

				<script type="text/javascript">

					$(function () {
						const space = /\s/; //공백입력불가
						const regExp = /[ㄱ-ㅎㅏ-ㅣ가-힣]/g; //한글입력 불가
						let auth_check = 0;

						//아이디 유효성 및 중복체크
						$("#add_b_id").on("keyup", function () {
							// console.log("가나다");
							var email = $("#add_b_id").val();
							console.log(email);
							$.ajax({
								url: '/user/rest/checkDuplication',
								headers: {
									"Accept": "application/json",
									"Content-Type": "application/json"
								},
								method: 'POST',
								dataType: 'json',
								data: JSON.stringify({ "id": email }),
								success: function (result) {

									console.log('성공: ' + result);

									if (result == 0) {
										if (space.exec(email) || regExp.exec(email)) {
											$("#add_b_check-email").html("공백과 한글은 입력 불가합니다");
											$("#add_b_id").val("");
											$("#add_b_mailAuthNum").hide();
										} else if (email != "") {
											if (email.indexOf('@') < 1 || email.indexOf('.') == -1) {
												$("#add_b_check-email").html("Email형식이 아닙니다.");
											} else {
												$("#add_b_check-email").html('사용 가능한 아이디입니다.');
												$("#add_b_check-email").css('color', 'green');
												$("#add_b_mailAuthNum").show();
											}
										} else {
											$("#add_b_check-email").html("");
										}

									} else {
										$("#add_b_check-email").html('이미 사용중이거나 중복된 아이디 입니다.');
										$("#add_b_check-email").css('color', 'red');
									}

								} /* ,error :  function(request,status,error){// 에러발생시 실행할 함수
alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
}*/
							});
						});



						//비밀번호
						$('#add_b_password').on("keyup", function () {
							var pwd = $('#add_b_password').val();

							if (pwd.length > 0) {
								$(this).val($(this).val().replace(/ /g, ''));
								// $("#add_b_check-pwd-exp").html("공백은 입력 불가합니다.");
							} else {
								$("#add_b_check-pwd-exp").html("");
							}

						});


						//비밀번호 확인
						$('#add_b_confirmPassword').on("keyup", function () {

							console.log($("#add_b_password").val());
							console.log($("#add_b_confirmPassword").val());

							if ($('#add_b_confirmPassword').val().length < 1) {
								$("#add_b_check-pwd").html("");
							} else if ($('#add_b_password').val() == $('#add_b_confirmPassword').val()) {
								$(this).val($(this).val().replace(/ /g, ''));
								$("#add_b_check-pwd").html('비밀번호가 일치합니다.');
								$("#add_b_check-pwd").css('color', 'green');
							} else if ($('#add_b_password').val() != $('#add_b_confirmPassword').val() || $('#add_b_confirmPassword').val() != '') {
								$("#add_b_check-pwd").html('비밀번호가 일치하지 않습니다.');
								$("#add_b_check-pwd").css('color', 'red');
								$('#add_b_confirmPassword').focus();
							}
						});

						//휴대폰번호 중복체크
						$("#add_b_phone").on("keyup", function () {

							var regExp = /^[0-9]*$/;
							var phone = $("#add_b_phone").val();

							$.ajax({
								url: '/user/rest/checkDuplication',
								headers: {
									"Accept": "application/json",
									"Content-Type": "application/json"
								},
								method: 'POST',
								dataType: 'json',
								data: JSON.stringify({ "phone": phone }),
								success: function (result) {
									console.log('성공: ' + result);

									if (result == 0) {
										if (phone != "") {
											if (!(regExp.test(phone))) {
												$("#add_b_phone").val("");
												$("#add_b_check-phone").html("휴대폰번호는 숫자로만 입력 가능합니다.");
											} else if (phone.length == 11) {
												$("#add_b_check-phone").html('사용 가능한 번호입니다.');
												$("#add_b_check-phone").css('color', 'green');
											} else if (phone.length > 11) {
												$("#add_b_phone").val("");
												$("#add_b_check-phone").html("휴대폰번호는 11자리만 가능합니다.");
											} else {
												$("#add_b_check-phone").html("");
											}

										}
									} else {
										$("#add_b_check-phone").html('이미 사용중이거나 중복된 휴대폰번호 입니다.');
										$("#add_b_check-phone").css('color', 'red');
									}
								}
							});

						});


						//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
						$("#add_b_joinAddUser").on("click", function () {

							fncAddUser();
						});

						$("#add_b_cancel").on("click", function () {

							self.location = "/.jsp";
						});

						function fncAddUser() {

							var id = $("#add_b_id").val();
							var pw = $("#add_b_password").val();
							var pw_confirm = $("#add_b_confirmPassword").val();
							var name = $("#add_b_name").val();
							var campName = $("input#add_b_campName").val();
							var phone = $("#add_b_phone").val();
							var campBusinessNum = $("#add_b_campBusinessNum").val();
							var mainlConfirm = $("#add_b_checkMailAuth").val();

							console.log(campName);

							if (id == null || id.length < 1) {
								alert("아이디는 반드시 입력하셔야 합니다.");
								return;
							}

							if (pw == null || pw.length < 1) {
								alert("패스워드는  반드시 입력하셔야 합니다.");
								return;
							}

							if (pw.length < 8) {
								alert("패스워드는 8자 이상이어야 합니다.");
								return;
							}

							if (pw_confirm == null || pw_confirm.length < 1) {
								alert("패스워드 확인은  반드시 입력하셔야 합니다.");
								return;
							}

							if (name == null || name.length < 1) {
								alert("이름은  반드시 입력하셔야 합니다.");
								return;
							}

							if (pw != pw_confirm) {
								alert("비밀번호 확인이 일치하지 않습니다.");
								$("input:text[name='confirmPassword']").focus();
								return;
							}

							if (campName == "" || campName.length < 1 || campName == undefined) {
								alert("캠핑장명은 반드시 입력하셔야 합니다.");
								return;
							}

							if (phone == null || phone.length < 1) {
								alert("휴대폰번호는 반드시 입력하셔야 합니다.");
								return;
							}



							var address = "";
							if ($("#add_b_addr").val() != "" && $("#add_b_userAddr").val() != "") {
								var value = $("#add_b_addr").val() + ""
									+ $("#add_b_userAddr").val();
							}

							$("#add_b_allAddr").val(value);

							Swal.fire({
								icon: 'success',
								title: '가입신청 완료',
								html: '회원가입이 신청이 완료되었습니다. :)'
							}).then(() => {



							});
						}


					});
				</script>
				<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
                       <script>
                           //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
                           function sample4_execDaumPostcode() {
                               new daum.Postcode({
                                   oncomplete: function(data) {
                                       // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                                       // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                                       // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                                       var roadAddr = data.roadAddress; // 도로명 주소 변수
                                       var extraRoadAddr = ''; // 참고 항목 변수

                                       // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                                       // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                                       if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                                           extraRoadAddr += data.bname;
                                       }
                                       // 건물명이 있고, 공동주택일 경우 추가한다.
                                       if(data.buildingName !== '' && data.apartment === 'Y'){
                                          extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                                       }
                                       // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                                       if(extraRoadAddr !== ''){
                                           extraRoadAddr = ' (' + extraRoadAddr + ')';
                                       }

                                       // 우편번호와 주소 정보를 해당 필드에 넣는다.
                                       document.getElementById('sample4_postcode').value = data.zonecode;
                                       document.getElementById("sample4_roadAddress").value = roadAddr;
                                       document.getElementById("sample4_jibunAddress").value = data.jibunAddress;

                                       // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                                       if(roadAddr !== ''){
                                           document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                                       } else {
                                           document.getElementById("sample4_extraAddress").value = '';
                                       }

                                       var guideTextBox = document.getElementById("guide");
                                       // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                                       if(data.autoRoadAddress) {
                                           var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                                           guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                                           guideTextBox.style.display = 'block';

                                       } else if(data.autoJibunAddress) {
                                           var expJibunAddr = data.autoJibunAddress;
                                           guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                                           guideTextBox.style.display = 'block';
                                       } else {
                                           guideTextBox.innerHTML = '';
                                           guideTextBox.style.display = 'none';
                                       }

                                       var themeObj = {
                                       searchBgColor: "#0B65C8",
                                       queryTextColor: "#FFFFFF"
                                       };
                                   }
                               }).open();
                           }

                       </script>
			</body>

			</html>