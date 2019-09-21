<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>
	<section>
	<div>
		<form action="<%=request.getContextPath()%>/memberFindPw" method="post">
			<input type="text" name="name" id="name" placeholder="이름입력">
			<input type="text" name="id" id="id" placeholder="아이디입력">
			<input type="email" name="email" id="email" placeholder="이메일입력">
			<input type="submit" value="아이디찾기">
		</form>
	</div>
	</section>
<%@ include file="/views/common/footer.jsp"%>