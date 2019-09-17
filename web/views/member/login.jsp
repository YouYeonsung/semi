<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<section id="main-container">
	<div class="container">
		<div class="login-frm">
			<!-- <div class="col-sm-3"> -->
			<div class="login-box well">
				<form role="form" method="post" action="<%=request.getContextPath()%>/loginexec">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" id="userId" name="userId" placeholder="아이디를 입력하세요"
							class="form-control" />
					</div>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input type="password" id="userPw" name="userPw" value=''
							placeholder="비밀번호를 입력하세요" class="form-control" />
					</div>
					<button type="submit" id="login-submit"
						class="btn btn-default btn-block" onclick=return validate() />
					로그인
					</button>
					<div id="saveId">
						<input type="checkbox" name="saveId" id="saveId"/>아이디저장
					</div>
					<div class="wrapper-container">
						<span class="text-center">
							<ul class="member_login_select">
								<li><a href="" class="text-sm"> 아이디찾기 </a></li>
								<li><a href="" class="text-sm"> 비밀번호찾기 </a></li>
								<li><a href="<%=request.getContextPath() %>/member/memberEnroll" class="text-sm"> 회원가입 </a></li>
							</ul>
						</span>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
</section>
<!--/ Main container end -->
<%@ include file="/views/common/footer.jsp"%>