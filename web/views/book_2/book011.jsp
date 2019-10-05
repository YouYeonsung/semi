<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!--
        CDN방식으로 파일 불러오기
    -->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <!-- 카카오 주소 찾기 API -->
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

    <title>펫시터 예약</title>
</head>

<body>
    <!-- <div class="fixedHeader">
        <div class="col">
            <h3>예약 화면입니다. step 1/4 (고정됨)</h3>
        </div>
    </div> -->
    <div class="container-fluid">
        <div class="row empty1"></div>
        <div class="row middle">
            <div class="col-3 row-2">
                <!-- left -->
            </div>
            
            <div class="col-6" id='middle_border'>
                
                <form action="<%=request.getContextPath()%>/book/book02" method="post">
                   <!--  방문펫시터 예약을 위해 고객님의 주소를 알려주세요 -->
                    <div class="row empty5">
                        <div class="col-3"><span class='xbutton' onclick="location.href='<%=request.getContextPath()%>/service.jsp'"><i class="far fa-times-circle"></i></span></div>
                        <div class="col-6" id="printPetsitterType">

                        
                          <h5>방문펫시터 예약</h5>  
                        </div>
                        <div class="row empty2"></div>
                        <div class="col-3"></div>
                    </div>
                    <div class="row empty5" id='topPenRe'></div>
                    <div class="row empty4" id='topPen'> </div>
                    <div class="row">
                    
                        <div class="col-2"></div>
                        <div class="col-8 centerClass">
                        	<div id='textRd'> 방문펫시터 예약을 위해 고객님의 주소를 알려주세요</div>
                        	<br>
                            <!-- 카카오 주소 검색 연동됨 -->
                            <input type="button" class="btn btn-info btn1" id="searchAddressBtn" 
                            onclick="execDaumPostcode();" value="주소 검색">
                        </div>
                        <div class="col-2"></div>
                    </div>
                    <div class="row empty3"></div>
                    
                    
                    <div class="row" id="addressContainer" style="display: none;">
                        <div class="col centerClass" id="address">
                            <div class='row'><!-- <label for="" class="addressLabel">우편번호</label> -->
                            <div class='col-1'></div>
                           	<div class='col-8'>우편번호 <input type="text" name="addrInput1" id="postcode"
                                placeholder="우편번호" class="readonlyInput" style=width:500px;height:35px; readonly>
                            <br><br>
                            <!-- <label for="" class="addressLabel">주소</label> -->
                            <input type="text" name="addrInput2" id="roadAddress"
                                placeholder="도로명주소" class="readonlyInput" style=width:500px;height:35px; readonly>
                         	</div>
                         	</div>
                         	<div class='col-3'></div>
                            <!-- <label for="" class="addressLabel">지번주소</label><input type="text" name="jibunAddress" id="jibunAddress"
                                placeholder="지번주소" class="readonlyInput" readonly> -->
                            <br>
                            <div class='row'>
                            <div class='col-1'></div>
                            <div class='col-8'>
                            <span id="guide" name="addrInput3" style="color:#999; display:none"></span>
                            </div>
                            <div class='col-3'></div>
                            </div>
                            <br><br>
                            <div class='row'>
                            <div class='col-1'></div>
                            <div class='col-8'>상세주소
                            <!-- <label for="" class="addressLabel"></label> -->
                            <input type="text" name="addrInput4" id="detailAddress" style=width:500px;height:35px;>
                            </div>
                            <div class='col-3'></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="row empty4"></div>
				        <div class="row centerClass" id="loginMsgContainer">
				        	<div class="col-12" style="font-size:10px;">회원이신가요?<br>로그인 후 빠르게 예약을 진행해보세요</div>
				        </div>
				        <div class="row" id="loginBtnContainer">
				            <div class="col-12"><input type='button' class='btn-primary form-control joonsoonBtn' value='로그인' id="loginBtn"></div>
				        </div>
				        <div class="row empty3"></div>
				                    <div class="row" id="nextBtnContainer" style="display: none;">
                        	<div class="col-12">
                       		 <input type='submit' class='btn-info form-control joonsoonBtn'
                       		  value='다음' id="nextBtn">
                        	</div>
                    </div>
                </form>
            </div>
        </div>
     </div>
    
</body>
<style>
	/* .centerClass{
    	height:20px;
    	margin:30px;
        text-align: left;
    } */
	input[name=addrInput1]{
		border:none;
		border-bottom:1px solid gray;
		background:transparent;
	}
	input[name=addrInput2]{
		border:none;
		border-bottom:1px solid gray;
		background:transparent;
	}
	input[name=addrInput3]{
		border:none;
		border-bottom:1px solid gray;
		background:transparent;
	}
	input[name=addrInput4]{
		border:none;
		border-bottom:1px solid gray;
		background:transparent;
	}
	
	input[id=searchAddressBtn]{
		width:500px;
		position: relative;
        right: 9px;
	}
	i{
		 font-size:20px;
	}
	
    html,
    body {
        font-size: 100%;
    }

    /* html{
        font-size:15px;
    } */
    .fixedHeader {
        border: 1px solid black;
        background-color: aqua;
        position: fixed;
        width: 100%;
        height: 30.5px;
        align-content: center;
        text-align: center;
        z-index: 10;
    }

    .fixedHeader>div>h3 {
        font-size: 1rem;
    }

    .empty1 {
        height: 30.5px;
    }

    .empty2 {
        height: 50px;
    }

    .empty3 {
        height: 25px;
    }
    .empty4 {
    	height: 280px;
    }
    /* 헤더 흰색변경 및 위치조정 */
    .empty5 {
    	height: 30px;
    	background: white;
    }
    .empty6 {
    	height: 10px;
    }

    .middle {
        /* border: 1px solid black; */
        background-color: white;
        height: 750px;
    }

    .footer {
        /* border: 2px solid red; */
        background-color: greenyellow;
        height: 50px;
        text-align: center;
        align-content: center;
    }

    /* div 나누는 거 확인하기 위해 필요한 스타일, 지우지 말 것 */
    /* div[class|=col] {
        border: 2px solid blue;
    }

    .select {
        text-align: center;
    }

    .btn2 {
        width: 45%;
        font-size: 1.7vw;
        padding-left: 0px;
        padding-right: 0px;
        margin-right: 10px;
    }

    .submitBtn {
        width: 100%;
        font-size: 1.2vw;
    }

    div[class|=col] {
        font-size: 1rem;
    }
    /* 중앙 예약화면 크기조정 및 색상변경 */
    div[id=middle_border]{
    	/* border:1px solid gray; */
    	background-color :snow;
    }
    /* 밑줄용 */
    /* div[id=topPen]{
        border-top:1px solid gray;
    } */
    /* 밑줄용 */
    div[id=topPenRe]{
    	border-bottom:1px solid gray;
    }
    div[name=radius_]{
        border-radius: 50px;
    }

    #printPetsitterType {
        text-align: center;
    }
    input::placeholder {
        font-size: 1.2vw;
    }
    .centerClass{
        text-align: left;
    }
</style>

<script>
    // jQeury 코드
    // $('#commissionBtn').click(function onclick() {   // 가정집펫시터 버튼 클릭 시
    //     $('#printPetsitterType').html('<h1>가정집펫시터를 선택하셨습니다.</h1>').css('color', 'white').css('fontFamily', 'stylish');
    // });
    // $('#visitBtn').click(function onclick() {   // 방문펫시터 버튼 클릭 시
    //     $('#printPetsitterType').html('<h1>방문펫시터를 선택하셨습니다.</h1>').css('color', 'white').css('fontFamily', 'stylish');
    // });


    // $('#nextBtn').click(function onclick() {
    //     // location.href='/book_02.html';
    //     document.id.action='book_02.html';
    //     document.id.submit();
    // });


    // 카카오 주소검색 서비스
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function (data) {
                // 팝업에서 검색결과 항목을 클릭했을 때 실행할 코드를 작성하는 부분.

                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수

                var buildingName = data.buildingName; // 빌딩 이름 받기
                var extraRoadAddr = ''; // 참고 항목 변수

                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) { // 정규표현식으로 확인
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if (data.buildingName !== '' && data.apartment === 'Y') {
                    extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if (extraRoadAddr !== '') {
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }

                // 주소창과 다음 버튼을 보이게 한다.
                document.getElementById('addressContainer').style.display="block";
                document.getElementById('nextBtnContainer').style.display="block";
                document.getElementById('loginBtnContainer').style.display="none";
                document.getElementById('loginMsgContainer').style.display="none";
                document.getElementById("searchAddressBtn").value="주소 검색";
                document.getElementById("searchAddressBtn").style.top="85px";
                document.getElementById("searchAddressBtn").style.width="110px";
                document.getElementById("searchAddressBtn").style.left="460px";
                document.getElementById("textRd").style.display="none";
                document.getElementById("topPen").style.display="none";
                document.getElementById("nextBtn").style.top="500px";

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('postcode').value = data.zonecode;
                document.getElementById("roadAddress").value = roadAddr+" "+buildingName;

                // 상세주소 입력창에 커서를 옮겨준다.
                document.getElementById('detailAddress').focus();
                // document.getElementById("jibunAddress").value = data.jibunAddress;


                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if (data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if (data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
</script>

<!-- FontAwesome 아이콘 사용 script-->
		<script src="https://kit.fontawesome.com/dcff5cba12.js"></script>

</html>