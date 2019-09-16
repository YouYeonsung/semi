<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
<section id="main-container">
	<div class="container">
		<div class="login-frm">
			<!-- <div class="col-sm-3"> -->
			<div class="login-box well">
				<form role="form" method="post" action="">
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span>
						<input type="text" id="userid" value='' placeholder="아이디를 입력하세요" class="form-control" />
					</div>
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input type="password" id="password" value='' placeholder="비밀번호를 입력하세요" class="form-control" />
					</div>
					<button type="submit" id="login-submit" class="btn btn-default btn-block"/>로그인</button> 
					<div class="wrapper-container">
						<span class="text-center">
							<ul class="member_login_select">
								<li>
									<a href="" class="text-sm">
										아이디찾기
									</a>
								</li>
								<li>
									<a href="" class="text-sm">
										비밀번호찾기
									</a>
								</li>
								<li>
									<a href="" class="text-sm">
										회원가입
									</a>
								</li>
							</ul>
						</span>
					</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</section><!--/ Main container end -->
<%@ include file="/views/common/footer.jsp"%>