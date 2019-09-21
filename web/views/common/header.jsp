<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="semi_withPet.member.model.vo.Member" %>
<%
	// 아이디 저장 관련 프로세스
	Member loginMember = (Member)session.getAttribute("loginMember");


%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Basic Page Needs
	================================================== -->
<meta charset="utf-8">
<title>With Pet</title>
<meta name="description" content="">
<meta name="author" content="">

<!-- Mobile Specific Metas
	================================================== -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- Favicons
	================================================== -->
<link rel="icon"
	href="<%=request.getContextPath()%>/images/favicon/favicon-32x32.png"
	type="image/x-icon" />
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="<%=request.getContextPath()%>/images/favicon/favicon-144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="<%=request.getContextPath()%>/images/favicon/favicon-72x72.png">
<link rel="apple-touch-icon-precomposed"
	href="<%=request.getContextPath()%>/images/favicon/favicon-54x54.png">

<!-- CSS
	================================================== -->

<!-- Bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css">
<!-- Template styles-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/style.css">
<!-- Responsive styles-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/responsive.css">
<!-- FontAwesome -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.min.css">
<!--기본 icon CSS-->
<!-- Animation -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/animate.css">
<!-- Prettyphoto -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/prettyPhoto.css">
<!-- Owl Carousel -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/owl.carousel.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/owl.theme.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/flexslider.css">
<!-- Flexslider -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/cd-hero.css">
<!-- Style Swicther -->
<link id="style-switch"
	href="<%=request.getContextPath()%>/css/presets/preset1.css"
	media="screen" rel="stylesheet" type="text/css">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements. All other JS at the end of file. -->
<!--[if lt IE 9]>
      <script src="js/html5shiv.js"></script>
      <script src="js/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<!-- Style switcher start -->
	<div class="style-switch-wrapper">
		<div class="style-switch-button">
			<i class="fa fa-sliders"></i>
		</div>
		<h3>Style Options</h3>
		<!--퀵 메뉴바로 변경 예정 or Calender표시-->
		<button id="preset1" class="btn btn-sm btn-primary"></button>
		<button id="preset2" class="btn btn-sm btn-primary"></button>
		<button id="preset3" class="btn btn-sm btn-primary"></button>
		<button id="preset4" class="btn btn-sm btn-primary"></button>
		<button id="preset5" class="btn btn-sm btn-primary"></button>
		<button id="preset6" class="btn btn-sm btn-primary"></button>
		<br /> <br /> <a
			class="btn btn-sm btn-primary close-styler pull-right">Close X</a>
	</div>
	<!-- Style switcher end -->

	<div class="body-inner">
		<!-- Header start -->
		<header id="header" class="navbar-fixed-top header2" role="banner">
			<div class="container">
				<div class="row">
					<!-- Logo start -->

					<div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse"
							data-target=".navbar-collapse">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
						<div class="navbar-brand">
							<a href="<%=request.getContextPath()%>/index.html"> <img
								class="img-responsive"
								src="<%=request.getContextPath()%>/images/logo3.png" alt="logo">
							</a>
						</div>
					</div>

					<!--/ Logo end -->

					<nav class="collapse navbar-collapse clearfix" role="navigation">
						<ul class="nav navbar-nav navbar-right">
							<li><a href="<%=request.getContextPath()%>/index.html">Home</a></li>
							<li class="dropdown"><a
								href="<%=request.getContextPath()%>/#" class="dropdown-toggle"
								data-toggle="dropdown">Matching <i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="<%=request.getContextPath()%>/service.html">Easy
												Matching</a></li>
										<!--매칭 시작-->
										<li><a
											href="<%=request.getContextPath()%>/portfolio-classic.html">Searching
												Petsitter</a></li>
										<!--펫시터만 검색-->
										<li><a href="<%=request.getContextPath()%>/about.html">Insurance
												policy</a></li>
										<!--보험 서비스 설명.-->
										<li><a href="<%=request.getContextPath()%>/pricing.html">Pricing</a></li>
										<!--가격정보-->
										<!-- "testimonial.html" -->
										<!-- <li><a href="faq.html">FAQ</a></li> -->
									</ul>
								</div></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">펫시터<i class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="team.html">Our Team</a></li>
										<li><a
											href="<%=request.getContextPath()%>/views/petsitter/petsitterInfo.jsp">일반펫시터</a></li>
										<li><a href="<%=request.getContextPath()%>/service2.html">전문펫시터</a></li>
										<li><a
											href="<%=request.getContextPath()%>/service-single.html">Customers
												Services</a></li>
										<!-- <li><a href="pricing.html">Pricing Table</a></li>
										<li><a href="404.html">404 Page</a></li> -->
									</ul>
								</div></li>

							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Recruitment <i
									class="fa fa-angle-down"></i></a>`
								<div class="dropdown-menu">
									<ul>
										<li><a href="career.html">Recruitment guide </a></li>
										<li><a href="blog-item.html">Applying</a></li>
									</ul>
								</div></li>
							<li class="dropdown"><a href="#" class="dropdown-toggle"
								data-toggle="dropdown">Help Center<i
									class="fa fa-angle-down"></i></a>
								<div class="dropdown-menu">
									<ul>
										<li><a href="typography.html">Q & A</a></li>
										<li><a href="elements.html">Report complaints</a></li>
									</ul>
								</div></li>
								<%if(loginMember != null) {%>
									<li><%=((Member)session.getAttribute("loginMember")).getUserName() %>님 안녕하세요</li>
									<li><a href="#">마이페이지</a></li>
									<li><a href="<%=request.getContextPath() %>/logout">로그아웃</a>
									<%if(loginMember.getUserId().equals("admin1")){ %>
									<li><a href="#">관리자페이지</a></li>
								<%}} else { %>
									<li><a href="<%=request.getContextPath()%>/login">로그인</a></li>
									<li><a href="<%=request.getContextPath()%>/member/checkEmail">회원가입</a>
								<%} %>
								
						</ul>
					</nav>
					<!--/ Navigation end -->
				</div>
				<!--/ Row end -->
			</div>
			<!--/ Container end -->
		</header>
		<!--/ Header end -->
		<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
		<script>
		// 창 닫혔을 때 logout 서블릿 실행
			window.onunload = function(){
				$.get("${request.getContextPath()}/logout");
			}
		</script>