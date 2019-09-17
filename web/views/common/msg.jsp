<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>알림페이지</title>
</head>
<body>
<%
/* msg와 loc을 받아서 msg는 alert 창안에, loc은 getContextPath()뒤에 넣어줌 */
String msg = (String)request.getAttribute("msg");
String loc = (String)request.getAttribute("loc");
String script = (String)request.getAttribute("script");
session.setAttribute("isLogin", true);
%>
	<script>
		alert('<%=msg %>');
		<%=script != null? script : "" %>
		location.href="<%=request.getContextPath()%><%=loc%>"; // 서버주소 입력부분
	</script>
	
</body>
</html>