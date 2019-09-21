<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userMail = (String)request.getAttribute("userMail");
	String authCode = (String)request.getAttribute("authCode");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<header>
		<h3>인증코드입력</h3>
	</header>
	<section>
		<div>
			<input type="text" name="inputCode" id="inputCode" placeholder="인증코드입력">
			<button onclick="checkCode();">이메일인증</button>
		</div>
	</section>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script>
    // 타이머
    // var mins = 3; 
    // var secs = mins * 60;
    // var currentSeconds = 0;
    // var currentMinutes = 0;

    // setTimeout('Decrement()',1000); 

    // function Decrement() {
    //     currentMinutes = Math.floor(secs / 60);
    //     currentSeconds = secs % 60;
    //     if(currentSeconds <= 2) currentSeconds = "0" + currentSeconds;
    //     secs--;
    //     document.getElementById("timer").innerHTML = currentMinutes + ":" + currentSeconds; //Set the element id you need the time put into.
    //     if(secs !== -1) setTimeout('Decrement()',1000);
    // }
    
    function checkCode(){
    	var userCode = $('#inputCode').val();
    	var serverCode = <%=authCode%>;
    		if(userCode == serverCode){
    			alert('인증성공');
    			opener.document.location.href='<%=request.getContextPath()%>/memberEnroll?userMail=<%=userMail%>';
    			window.close();
    		} else {
    			alert('인증코드를 잘 못 입력하셨습니다.');
    			$('#inputCode').val("");
    			$("#inputCode").focus();
    		}	
    }
	</script>
</body>
</html>