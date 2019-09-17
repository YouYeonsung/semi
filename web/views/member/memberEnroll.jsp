<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<section id="main-container">
	<div class="container">
			<div class="container">
				<h3>회원 정보 입력(1/2)</h3>
				<form action="#" method="post" id="enroll_form">
					<div class="form-group has-feedback">
						<label class="control-label" for="id">아이디</label>
						<input class="form-control" type="text" name="id" id="id"/>
						<span id="overlapErr" class="help-block">사용할 수 없는 아이디 입니다.</span>
					</div>
					<div class="form-group has-feedback">
						<label class="control-label" for="pwd">비밀번호</label>
						<input class="form-control" type="password" name="pwd" id="pwd"/>
						<span id="pwdRegErr" class="help-block">8글자 이상 입력하세요.</span>
					</div>
					<div class="form-group has-feedback">
						<label class="control-label" for="rePwd">비밀번호 재확인</label>
						<input class="form-control" type="password" name="rePwd" id="rePwd"/>
						<span id="rePwdErr" class="help-block">비밀번호와 일치하지 않습니다. 다시 입력해 주세요.</span>
					</div>
					<div class="form-group has-feedback">
						<div class = "email-auto frm">
							<div class="form-group has-feedback col-md-8">
								<label class="control-label" for="email">이메일</label>
								<input class="form-control" type="text" name="email" id="email" placeholder="withpet@withpet.com"/>
								<span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
							</div>
							<div class="form-group has-feedback col-md-4">
							</br>
								<input type="button" class="btn btn-primary" name="" id="" value="메일전송" onclick=""/>
							</div>
						</div>
						<div class="form-group has-feedback col-md-8">
							<label class="control-label" for="authEmail">인증번호입력</label>
							<input class="form-control" type="text" name="authEmail" id="authEmail"/>
							</div>
							<div class="form-group has-feedback col-md-4">
							</br>
								<input type="button" class="btn btn-primary" name="" id="" value="인증하기" onclick=""/>
							</br>
								</div>
							</div>
					</div>
					<div class="form-group has-feedback">
						<label class="control-label" for="phone">연락처</label>
						<input class="form-control" type="phone" name="phone" id="phone" placeholder="(-없이)01012345678"/>
						<span id="phoneErr" class="help-block">올바른 연락처 형식이 아닙니다. 다시 입력해 주세요.</span>
					</div>
					<div class="form-group has-feedback">
						<label class="control-label" for="address">주소</label>
						<input type="text" class="form-control" name="zonecode" id="zonecode" placeholder="우편번호">
						<input type="button" onclick="excuteSearchPostCode();" value="우편번호 찾기"/><br/>
						<input type="text" class="form-control" name="roadaddress" id="roadaddress" placeholder="도로명주소">
						<span id="guide" style="color:#999;display:none"></span>
						<input class="form-control" type="text" name="address_etc" id="address_etc" placeholder="상세주소"/>
					</div>
					<button class="btn btn-success" type="reset">취소</button>
					<button class="btn btn-success" type="submit">가입</button>
				</form>
			</div>
		</div>
	</section>
	<!--다음주소 api-->
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<!-- FontAwesome 아이콘 사용 script-->
		<script src="https://kit.fontawesome.com/dcff5cba12.js"></script>
		<script>
			function excuteSearchPostCode() {
				new daum.Postcode({
					oncomplete:function(data) {
						$("#zonecode").val(data.zonecode);
						$("#roadaddress").val(data.roadAddress);
						$("#jibunaddress").val(data.jibunAddress);
						$("#address_etc").focus();
						console.log(data);
					}

				}).open();

				}

			///////////////////회원가입 정규표현식/////////////////
			//아이디 입력란에 keyup 이벤트가 일어 났을때 실행할 함수 등록 
			$("#id").keyup(function(){
				//입력한 문자열을 읽어온다.
				var id=$(this).val();
				//ajax 요청을 해서 서버에 전송한다.
				$.ajax({
					method:"post",
					url:"/idCheck",
					data:{inputId:id},
					success:function(data){
						var obj=JSON.parse(data);
						if(obj.canUse){//사용 가능한 아이디 라면 
							$("#overlapErr").hide();
							// 성공한 상태로 바꾸는 함수 호출
							successState("#id");
							
						}else{//사용 가능한 아이디가 아니라면 
							$("#overlapErr").show();
							errorState("#id");
						}
					}
				});
			});
			$("#pwd").keyup(function(){
				var pwd=$(this).val();
				// 비밀번호 검증할 정규 표현식
				var reg=/^.{8,}$/;
				if(reg.test(pwd)){//정규표현식을 통과 한다면
							$("#pwdRegErr").hide();
							successState("#pwd");
				}else{//정규표현식을 통과하지 못하면
							$("#pwdRegErr").show();
							errorState("#pwd");
				}
			});
			$("#rePwd").keyup(function(){
				var rePwd=$(this).val();
				var pwd=$("#pwd").val();
				// 비밀번호 같은지 확인
				if(rePwd == ""){
					$("#rePwdErr").hide();
					if(rePwd==pwd){//비밀번호 같다면
						$("#rePwdErr").hide();
						successState("#rePwd");
					}else{//비밀번호 다르다면
						$("#rePwdErr").show();
						errorState("#rePwd");
					}
				}
			});
			$("#email").keyup(function(){
				var email=$(this).val();
				// 이메일 검증할 정규 표현식
				var regExp=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
				if(regExp.test(email)){//정규표현식을 통과 한다면
							$("#emailErr").hide();
							successState("#email");
				}else{//정규표현식을 통과하지 못하면
							$("#emailErr").show();
							errorState("#email");
				}
			});
			$("#phone").keyup(function(){
				var phone = $(this).val();
				// 핸드폰 검증할 정규 표현식
				var regExp = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;
				if(regExp.test(phone)){
					$("#phoneErr").hide();
					successState("#phone");
				}else{
					$("#phoneErr").show();
					errorState("#phone");
				}
			});
			// 성공 상태로 바꾸는 함수
			function successState(sel){
				$(sel)
				.parent()
				.removeClass("has-error")
				.addClass("has-success")
				.show();
		 
				$("#enroll_form button[type=submit]")
							.removeAttr("disabled");
			};
			// 에러 상태로 바꾸는 함수
			function errorState(sel){
				$(sel)
				.parent()
				.removeClass("has-success")
				.addClass("has-error")
				.show();
		 
				$("#enroll_form button[type=submit]")
							.attr("disabled","disabled");
			};
			// 입력하지 않았을 때는 안보이게 하는 함수
			function vacantState(sel){
				if($(".form-control").trim().val() == null){
					$(".help-block").hide();
					$("#enroll_form button[type=submit]")
								.attr("disabled","disabled");
				}
			};
		</script> 
<%@ include file="/views/common/footer.jsp"%>