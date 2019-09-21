<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>

	<section id="main-container">
	<h2>회원가입 - 이메일 인증단계(1/3)</h2>
		<div class="container">
			<div class="form-group has-feedback">
				<div class = "email-auto frm">
					<div class="form-group has-feedback col-md-8">
						<label class="control-label" for="email">이메일</label>
						<input class="form-control" type="text" name="email" id="email" placeholder="withpet@withpet.com" required/>
						<span id="emailErr" class="help-block">올바른 이메일 형식이 아닙니다. 다시 입력해 주세요.</span>
					</div>
					<div class="form-group has-feedback col-md-4">
						</br>
							<input type="button" class="btn btn-primary" name="sendMail" id="sendMail" value="이메일중복확인" onclick="checkDupleEmail();"/>
					</div>
				</div>
			</div>
		</div>
	</section>
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script>
		function checkDupleEmail(){
			if($('#email').val()==""){
				alert("이메일을 입력하세요.");
			} else {
				var userMail = $('#email').val();
				var auth = window.open("<%=request.getContextPath()%>/emailcheck?userMail="+userMail, "_blank", "width=500, height= 500");
			}	
		}
	
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
			// 성공 상태로 바꾸는 함수
			function successState(id){
				$(id)
				.parent()
				.removeClass("has-error")
				.addClass("has-success")
				.show();
		 
				$("#enroll_form button[type=submit]")
							.removeAttr("disabled");
			};
			// 에러 상태로 바꾸는 함수
			function errorState(id){
				$(id)
				.parent()
				.removeClass("has-success")
				.addClass("has-error")
				.show();
		 
				$("#enroll_form button[type=submit]")
							.attr("disabled","disabled");
			};
			// 입력하지 않았을 때는 안보이게 하는 함수
			$(function(){
				if($("form-control").val()==null){
					$(".help-block").hide();
					$("#enroll_form button[type=submit]").attr("disabled","disabled");
				}
			});
	</script>
<%@ include file="/views/common/footer.jsp"%>