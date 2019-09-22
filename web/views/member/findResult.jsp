<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.filter.EncryptPasswordWrapper" %>
<%
	String target = (String)request.getAttribute("target");
	String purpose = (String)request.getAttribute("purpose");
	String email = (String)request.getAttribute("email");
%>
<%@ include file="/views/common/header.jsp"%>
	<section>
	<div>
		<h3><%=purpose %> 안내</h3>
		<p><%=purpose%>가 <%=email %>로 전송되었습니다.</p>
		<%if(purpose.equals("새로운 비밀번호")){ %>
			<p> 임시비밀번호는 반드시 로그인 후 변경하여 사용하세요.</p>
		<%} %>
	</div>
	<button onClick="moveToLogin();">로그인페이지로 이동</button>
	</section>
	<script>
		function moveToLogin(){
			location.href="<%=request.getContextPath()%>/login";
		}
	</script>
<%@ include file="/views/common/footer.jsp"%>