<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String userEmail = (String)request.getAttribute("userMail");
    boolean checkEmail = (boolean)request.getAttribute("checkEmail");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이메일 인증</title>
</head>
<body>
	<header>
		
	</header>
	<section>
		<div>
	<%if(checkEmail == false) { %>
		<span id="duplicated"><%=userEmail %>은 이미 사용 중입니다</span>
			<form action="<%=request.getContextPath() %>/emailcheck" name="checkEmail" method="post">
			<input type="email" name="userEmail" placeholder="withpet@withpet.com">
		</form>
	<%} else {%>
		<span><%=userEmail %></span>해당 이메일은 사용가능합니다.
		<button onclick="authCode();">메일인증하기</button>
	<%} %>
		</div>
	</section>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
        function authCode(){
			location.href="<%=request.getContextPath()%>/member/sendMail?userMail=<%=userEmail%>";
        }
        
        function checkEmail(){
        	var email = $("#userMail").val();
        	console.log(email);
        	var regExp=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
			if(!regExp.test(email)){
				alert("이메일 형식이 다릅니다. 다시 작성해주세요");
			} else {
				$("#emailAuth").submit();
			}
        }
    </script>
</body>
</html>