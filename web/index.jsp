<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/views/common/header.jsp"%>

<!-- Slider start -->
<section id="home" class="no-padding">

	<div id="main-slide" class="ts-flex-slider">

		<div class="flexSlideshow flexslider">
			<ul class="slides">
				<li>
					<div class="overlay2">
						<img class=""
							src="<%=request.getContextPath()%>/images/slider/bg1.jpg"
							alt="slider">
					</div>
					<div class="flex-caption slider-content">
						<div class="col-md-12 text-center">
							<h2 class="animated2">Need To Invent The Future!</h2>
							<h3 class="animated3">We Making Difference To Great Things
								Possible</h3>
							<p class="animated4">
								<a href="<%=request.getContextPath()%>/#"
									class="slider btn btn-primary white">Check Now</a>
							</p>
						</div>
					</div>
				</li>
				<li>
					<div class="overlay2">
						<img class=""
							src="<%=request.getContextPath()%>/images/slider/bg2.jpg"
							alt="slider">
					</div>
					<div class="flex-caption slider-content">
						<div class="col-md-12 text-center">
							<h2 class="animated4">How Big Can You Dream?</h2>
							<h3 class="animated5">We are here to make it happen</h3>
							<p class="animated6">
								<a href="<%=request.getContextPath()%>/#"
									class="slider btn btn-primary white">Buy Now</a>
							</p>
						</div>
					</div>
				</li>
				<li>
					<div class="overlay2">
						<img class=""
							src="<%=request.getContextPath()%>/images/slider/bg3.jpg"
							alt="slider">
					</div>
					<div class="flex-caption slider-content">
						<div class="col-md-12 text-center">
							<h2 class="animated7">Your Challenge is Our Progress</h2>
							<h3 class="animated8">So, You Don't Need to Go Anywhere
								Today</h3>
							<div class="">
								<a class="animated4 slider btn btn-primary btn-min-block white"
									href="<%=request.getContextPath()%>/#">Get Now</a><a
									class="animated4 slider btn btn-primary btn-min-block solid"
									href="<%=request.getContextPath()%>/#">Live Demo</a>
							</div>
						</div>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<!--/ Main slider end -->
</section>
<!--/ Slider end -->


<!-- About tab start -->
<section id="about" class="about angle">
	<div class="container">
		<div class="row">
			<div class="landing-tab clearfix">
				<ul class="nav nav-tabs nav-stacked col-md-3 col-sm-5">
					<li class="active"><a class="animated fadeIn"
						href="<%=request.getContextPath()%>/#tab_a" data-toggle="tab">
							<span class="tab-icon"><i class="fas fa-home"></i></span>
							<div class="tab-info">
								<h3>방문 서비스</h3>
							</div>
					</a></li>
					<li><a class="animated fadeIn"
						href="<%=request.getContextPath()%>/#tab_b" data-toggle="tab">
							<span class="tab-icon"><i class="fas fa-baby-carriage"></i></span>
							<div class="tab-info">
								<h3>위탁 서비스</h3>
							</div>
					</a></li>
					<li><a class="animated fadeIn"
						href="<%=request.getContextPath()%>/#tab_c" data-toggle="tab">
							<span class="tab-icon"><i class="fas fa-binoculars"></i></span>
							<div class="tab-info">
								<h3>펫시터 검색</h3>
							</div>
					</a></li>
					<li><a class="animated fadeIn"
						href="<%=request.getContextPath()%>/#tab_d" data-toggle="tab">
							<span class="tab-icon"><i class="fas fa-capsules"></i></span>
							<div class="tab-info">
								<h3>건강 케어 서비스</h3>
							</div>
					</a></li>
					<li><a class="animated fadeIn"
						href="<%=request.getContextPath()%>/#tab_e" data-toggle="tab">
							<span class="tab-icon"><i class="fa fa-support"></i></span>
							<div class="tab-info">
								<h3>Dedicated Support</h3>
							</div>
					</a></li>
				</ul>
				<div class="tab-content col-md-9 col-sm-7">
					<div class="tab-pane active animated fadeInRight" id="tab_a">
						<i class="fa fa-home big"></i>
						<h3>도그메이트 펫시터가 집으로 찾아와 반려동물을 돌봐드려요.</h3>
						<p>
							<span id="infomation">배변처리와 깔끔한 환경정리</span> <br> - 매주 내가 원하는
							날, 원하는 시간을 정하기만 하면 s펫시터가 집으로 방문합니다. <br> <span
								id="infomation">즐겁고 안전한 산책시간</span> <br> - 장시간 혼자있을 우리 아이를
							위해 자주가던 공원을 펫시터와 함께 산책해요. <br> <span id="infomation">혼자서도
								잘 챙겨 먹어요, 밥주기</span> <br> - 식사시간에 맞춰 준비해두신 깨끗한 그릇에 신선한 물과 사료를
							급여해줘요. <span id="infomation">우리 아이를 위한 맞춤 케어</span> <br>노견이나
							치료견과 같이 특별 돌봄이 필요하다면 전문 펫시터의 맞춤 케어를 경험해보세요.
						</p>
					</div>
					<div class="tab-pane animated fadeInLeft" id="tab_b">
						<i class="fas fa-baby-carriage big"></i>
						<h3>펫시터 집에 맡기기</h3>
						<p>
							<span id="infomation">펫시터 집에 방문하기 </span> <br> - 펫시터 집에 맡기기
							전, 사전만남을 진행하세요. 돌봄 환경 확인과 우리 아이 적응을 위한 시간이 될거에요. <br> <span
								id="infomation">안전한 산책을 약속드려요!</span> <br> - 보호자의 하네스와
							도그메이트 이중 산책줄을 사용해 더욱 안전하고 즐겁게 산책을 진행합니다 <br> <span
								id="infomation">즐거운 식사시간</span> <br> - 식사시간에 맞춰 사료를 챙겨주는건
							기본! 위생과 건강을 철저히 지킨 식사시간을 위해 노력합니다
						</p>
					</div>
					<div class="tab-pane animated fadeIn" id="tab_c">
						<i class="fas fa-binoculars big"></i>
						<h3>우리 아이에게 맞는 펫시터를 찾아보세요</h3>
						<p>
							<span id="infomation">쉬운 검색 서비스</span>] <br> - 단계별로 차근차근 원하는
							펫시터를 찾아보세요. 정말 쉬워요! <br> <span id="infomation">상세 검색
								서비스</span> <br> - 각종 조건을 세밀하게 선택해 아이를 위한 최고의 펫시터를 찾아보세요. <span
								id="infomation">펫시터별 리뷰 확인</span> <br> 실제 서비스를 이용한 다른 고객들의
							펫시터별 이용 후기를 보실 수 있어요
						</p>
					</div>
					<div class="tab-pane animated fadeIn" id="tab_d">
						<i class="fas fa-capsules big"></i>
						<h3>반려동물의 건강을 위한 전문 펫시터</h3>
						<p>Over the year we have lots of experience in our field. In
							sit amet massa sapien. Vestibulum diam turpis, gravida in
							lobortis id, ornare a eros. Lorem ipsum dolor sit amet,
							consectetur adipiscing elit. Aliquam sagittis nulla non elit
							dignissim suscipit. Duis lorem nulla, eleifend.</p>
					</div>
					<div class="tab-pane animated fadeIn" id="tab_e">
						<i class="fa fa-support big"></i>
						<h3>24/7 Dedicated Support</h3>
						<p>Occupy selfies Tonx, +1 Truffaut beard organic normcore
							tilde flannel artisan squid cray single-origin coffee. Master
							cleanse vinyl Austin kogi, semiotics skateboard fap wayfarers
							health goth. Helvetica cray church-key hashtag Carles. Four
							dollar toast meggings seitan, Tonx pork belly VHS Bushwick.
							Chambray banh mi cornhole. Locavore messenger bag seitan.</p>
					</div>
				</div>
				<!-- tab content -->
			</div>
			<!-- Overview tab end -->
		</div>
		<!--/ Content row end -->
	</div>
	<!-- Container end -->
</section>
<!-- About end -->

<section id="image-block" class="image-block no-padding">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-6 ts-padding"
				style="height: 650px; background: url(images/image-block-bg.jpg) 50% 50%/cover no-repeat;">
			</div>
			<div class="col-md-6 ts-padding img-block-right">
				<div class="img-block-head text-center">
					<h2>Know More About Our Company</h2>
					<h3>Why Choose Us</h3>
					<p>Aenean sollicitudin, lorem quis bibendum auctor, nisi elit
						consequat ipsum, nec sagittis sem nibh id elit. Proin gravida nibh
						vel velit auctor Aenean sollicitudin, adipisicing elit sed lorem
						quis bibendum auctor.</p>
				</div>

				<div class="gap-30"></div>

				<div class="image-block-content">
					<span class="feature-icon pull-left"><i
						class="fa fa-bicycle"></i></span>
					<div class="feature-content">
						<h3>Tons of Features</h3>
						<p>Consectetur adipisicing elit sed do eiusmod tempor
							incididunt ut</p>
					</div>
				</div>
				<!--/ End 1st block -->

				<div class="image-block-content">
					<span class="feature-icon pull-left"><i
						class="fa fa-diamond"></i></span>
					<div class="feature-content">
						<h3>PowerPack Theme</h3>
						<p>Proin gravida nibh vel velit auctor Aenean sollicitudin
							adipisicing</p>
					</div>
				</div>
				<!--/ End 1st block -->

				<div class="image-block-content">
					<span class="feature-icon pull-left"><i
						class="fa fa-street-view"></i></span>
					<div class="feature-content">
						<h3>Day Night Support</h3>
						<p>Simply dummy text and typesettings industry has been the
							industry</p>
					</div>
				</div>
				<!--/ End 1st block -->


			</div>
		</div>
	</div>
</section>

<!-- Counter Strat -->
<section class="ts_counter no-padding">
	<div class="container-fluid">
		<div class="row facts-wrapper wow fadeInLeft text-center">
			<div class="facts one col-md-3 col-sm-6">
				<span class="facts-icon"><i class="fa fa-user"></i></span>
				<div class="facts-num">
					<span class="counter">1200</span>
				</div>
				<h3>Clients</h3>
			</div>

			<div class="facts two col-md-3 col-sm-6">
				<span class="facts-icon"><i class="fa fa-institution"></i></span>
				<div class="facts-num">
					<span class="counter">1277</span>
				</div>
				<h3>Completed Services</h3>
			</div>

			<div class="facts three col-md-3 col-sm-6">
				<span class="facts-icon"><i class="fa fa-suitcase"></i></span>
				<div class="facts-num">
					<span class="counter">869</span>
				</div>
				<h3>in Progress</h3>
			</div>

			<div class="facts four col-md-3 col-sm-6">
				<span class="facts-icon"><i class="fa fa-trophy"></i></span>
				<div class="facts-num">
					<span class="counter">4.75</span><span style="font-size: 43px">
						<span style="font-size: 15px">pts</span> /
					</span> <span class="counter">12,838</span>
				</div>
				<h3>Avg Pts/ Works</h3>
			</div>

		</div>
	</div>
	<!--/ Container end -->
</section>
<!--/ Counter end -->


<!-- Portfolio start -->
<section id="portfolio" class="portfolio portfolio-box">
	<div class="container">
		<div class="row">
			<div class="col-md-12 heading text-center">
				<span class="icon-pentagon wow bounceIn"><i
					class="fa fa-suitcase"></i></span>
				<h2 class="title2">
					Project Completed <span class="title-desc">A Quality
						Experience Team with 4 years experience</span>
				</h2>
			</div>
		</div>
		<!-- Title row end -->

		<!--Isotope filter start -->
		<div class="row text-center">
			<div class="isotope-nav" data-isotope-nav="isotope">
				<ul>
					<li><a href="<%=request.getContextPath()%>/#" class="active"
						data-filter="*">All</a></li>
					<li><a href="<%=request.getContextPath()%>/#"
						data-filter=".web-design">Web Design</a></li>
					<li><a href="<%=request.getContextPath()%>/#"
						data-filter=".development">Development</a></li>
					<li><a href="<%=request.getContextPath()%>/#"
						data-filter=".joomla">Joomla</a></li>
					<li><a href="<%=request.getContextPath()%>/#"
						data-filter=".wordpress">Wordpress</a></li>
				</ul>
			</div>
		</div>
		<!-- Isotope filter end -->

		<div class="row">
			<div id="isotope" class="isotope">
				<div class="col-sm-3 web-design isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/<%=request.getContextPath()%>/images/portfolio/portfolio1.jpg"
								alt="">
							<figcaption>
								<h3>Startup Business</h3>
								<a class="link icon-pentagon" href="portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 development isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio2.jpg"
								alt="">
							<figcaption>
								<h3>Easy to Lanunch</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 joomla isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio3.jpg"
								alt="">
							<figcaption>
								<h3>Your Business</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg3.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 wordpress isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio4.jpg"
								alt="">
							<figcaption>
								<h3>Prego Match</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg4.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 joomla isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio5.jpg"
								alt="">
							<figcaption>
								<h3>Fashion Brand</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg5.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 development isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio6.jpg"
								alt="">
							<figcaption>
								<h3>The Insidage</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg1.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 development isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio7.jpg"
								alt="">
							<figcaption>
								<h3>Light Carpet</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg2.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->

				<div class="col-sm-3 development isotope-item">
					<div class="grid">
						<figure class="effect-oscar">
							<img
								src="<%=request.getContextPath()%>/images/portfolio/portfolio8.jpg"
								alt="">
							<figcaption>
								<h3>Amazing Keyboard</h3>
								<a class="link icon-pentagon"
									href="<%=request.getContextPath()%>/portfolio-item.html"><i
									class="fa fa-link"></i></a> <a class="view icon-pentagon"
									data-rel="prettyPhoto"
									href="<%=request.getContextPath()%>/images/portfolio/portfolio-bg3.jpg"><i
									class="fa fa-search"></i></a>
							</figcaption>
						</figure>
					</div>
				</div>
				<!-- Isotope item end -->
			</div>
			<!-- Isotope content end -->
		</div>
		<!-- Content row end -->
	</div>
	<!-- Container end -->
</section>
<!-- Portfolio end -->





<!-- Service box start -->
<section id="feature" class="feature">
	<div class="container">

		<div class="row">
			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i class="fa fa-heart-o"></i></span>
				<div class="feature-content">
					<h3>Clean &amp; Modern Design</h3>
					<p>Bras urna felis accumsan at ultrde cesid posuere masa socis
						nautoque penat</p>
				</div>
			</div>
			<!--/ End first featurebox -->

			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i class="fa fa-codepen"></i></span>
				<div class="feature-content">
					<h3>Useful Shortcodes</h3>
					<p>High Life narwhal, banh mi PBR single-origin coffee Odd
						Future actually aliqua</p>
				</div>
			</div>
			<!--/ End first featurebox -->

			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i class="fa fa-film"></i></span>
				<div class="feature-content">
					<h3>Parallax Section</h3>
					<p>Consectetur adipisicing elit sed do eiusmod tempor
						incididunt ut</p>
				</div>
			</div>
			<!--/ End first featurebox -->
		</div>
		<!-- Content row end -->

		<div class="gap-40"></div>

		<div class="row">
			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i
					class="fa fa-newspaper-o"></i></span>
				<div class="feature-content">
					<h3>Multipurpose Concept</h3>
					<p>Consectetur adipisicing elit sed do eiusmod tempor
						incididunt ut</p>
				</div>
			</div>
			<!--/ End first featurebox -->

			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i class="fa fa-desktop"></i></span>
				<div class="feature-content">
					<h3>Responsive Layout</h3>
					<p>Consectetur adipisicing elit sed do eiusmod tempor
						incididunt ut</p>
				</div>
			</div>
			<!--/ End first featurebox -->

			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i
					class="fa fa-pagelines"></i></span>
				<div class="feature-content">
					<h3>Light wight Performance</h3>
					<p>High Life narwhal, banh mi PBR single-origin coffee Odd
						Future actually aliqua</p>
				</div>
			</div>
			<!--/ End first featurebox -->

		</div>
		<!-- Content row end -->

		<div class="gap-40"></div>

		<div class="row">
			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i class="fa fa-recycle"></i></span>
				<div class="feature-content">
					<h3>Free Lifetime Updates</h3>
					<p>Bras urna felis accumsan at ultrde cesid posuere masa socis
						nautoque penat</p>
				</div>
			</div>
			<!--/ End first featurebox -->

			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i class="fa fa-diamond"></i></span>
				<div class="feature-content">
					<h3>Endless Possibilites</h3>
					<p>High Life narwhal, banh mi PBR single-origin coffee Odd
						Future actually aliqua</p>
				</div>
			</div>
			<!--/ End first featurebox -->

			<div class="feature-box col-sm-4 wow fadeInDown" data-wow-delay=".5s">
				<span class="feature-icon pull-left"><i
					class="fa fa-whatsapp"></i></span>
				<div class="feature-content">
					<h3>24/7 Live Support</h3>
					<p>Consectetur adipisicing elit sed do eiusmod tempor
						incididunt ut</p>
				</div>
			</div>
			<!--/ End first featurebox -->
		</div>
		<!-- Content row end -->

	</div>
	<!--/ Container end -->
</section>
<!--/ Service box end -->


<!-- Parallax 2 start -->
<section class="parallax parallax2">
	<div class="parallax-overlay"></div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h2>Are You Ready to Buy This Template!</h2>
				<h3>Just Click Button and Use Your Own</h3>
				<p>
					<a href="<%=request.getContextPath()%>/#"
						class="btn btn-primary white">Purchase Now</a> <a
						href="<%=request.getContextPath()%>/#"
						class="btn btn-primary solid">Get In Touch</a>
				</p>
			</div>
		</div>
	</div>
	<!-- Container end -->
</section>
<!-- Parallax 2 end -->



<!-- Team start -->
<section id="team" class="team">
	<div class="container">
		<div class="row">
			<div class="col-md-12 heading">
				<span class="title-icon pull-left"><i class="fa fa-weixin"></i></span>
				<h2 class="title">
					Meet with our Team <span class="title-desc">A Quality
						Experience Team with 4 years experience</span>
				</h2>
			</div>
		</div>
		<!-- Title row end -->

		<div class="row text-center">
			<div class="col-md-3 col-sm-6">
				<div class="team wow slideInLeft">
					<div class="img-hexagon">
						<img src="<%=request.getContextPath()%>/images/team/team1.jpg"
							alt=""> <span class="img-top"></span> <span
							class="img-bottom"></span>
					</div>
					<div class="team-content">
						<h3>Vosgi Varduhi</h3>
						<p>Web Designer</p>
						<div class="team-social">
							<a class="fb" href="<%=request.getContextPath()%>/#"><i
								class="fab fa-facebook"></i></a> <a class="twt"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-twitter"></i></a> <a class="gplus"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-google-plus"></i></a> <a class="linkdin"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-linkedin"></i></a> <a class="dribble"
								href="<%=request.getContextPath()%>/#"><i
								class="fas fa-phone"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!--/ Team 1 end -->
			<div class="col-md-3 col-sm-6">
				<div class="team wow slideInLeft">
					<div class="img-hexagon">
						<img src="<%=request.getContextPath()%>/images/team/team2.jpg"
							alt=""> <span class="img-top"></span> <span
							class="img-bottom"></span>
					</div>
					<div class="team-content">
						<h3>Robert Aleska</h3>
						<p>Web Designer</p>
						<div class="team-social">
							<a class="fb" href="<%=request.getContextPath()%>/#"><i
								class="fab fa-facebook"></i></a> <a class="twt"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-twitter"></i></a> <a class="gplus"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-google-plus"></i></a> <a class="linkdin"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-linkedin"></i></a> <a class="dribble"
								href="<%=request.getContextPath()%>/#"><i
								class="fas fa-phone"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!--/ Team 2 end -->
			<div class="col-md-3 col-sm-6">
				<div class="team wow slideInRight">
					<div class="img-hexagon">
						<img src="<%=request.getContextPath()%>/images/team/team3.jpg"
							alt=""> <span class="img-top"></span> <span
							class="img-bottom"></span>
					</div>
					<div class="team-content">
						<h3>Taline Voski</h3>
						<p>Web Designer</p>
						<div class="team-social">
							<a class="fb" href="<%=request.getContextPath()%>/#"><i
								class="fab fa-facebook"></i></a> <a class="twt"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-twitter"></i></a> <a class="gplus"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-google-plus"></i></a> <a class="linkdin"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-linkedin"></i></a> <a class="dribble"
								href="<%=request.getContextPath()%>/#"><i
								class="fas fa-phone"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!--/ Team 3 end -->
			<div class="col-md-3 col-sm-6">
				<div class="team animate wow slideInRight">
					<div class="img-hexagon">
						<img src="<%=request.getContextPath()%>/images/team/team4.jpg"
							alt=""> <span class="img-top"></span> <span
							class="img-bottom"></span>
					</div>
					<div class="team-content">
						<h3>Alban Spencer</h3>
						<p>Web Designer</p>
						<div class="team-social">
							<a class="fb" href="<%=request.getContextPath()%>/#"><i
								class="fab fa-facebook"></i></a> <a class="twt"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-twitter"></i></a> <a class="gplus"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-google-plus"></i></a> <a class="linkdin"
								href="<%=request.getContextPath()%>/#"><i
								class="fab fa-linkedin"></i></a> <a class="dribble"
								href="<%=request.getContextPath()%>/#"><i
								class="fas fa-phone"></i></a>
						</div>
					</div>
				</div>
			</div>
			<!--/ Team 4 end -->
		</div>
		<!--/ Content row end -->
	</div>
	<!--/ Container end -->
</section>
<!--/ Team end -->


<!-- Testimonial start-->
<section class="testimonial parallax parallax3">
	<div class="parallax-overlay"></div>
	<div class="container">
		<div class="row">
			<div id="testimonial-carousel"
				class="owl-carousel owl-theme text-center testimonial-slide">
				<div class="item">
					<div class="testimonial-thumb">
						<img
							src="<%=request.getContextPath()%>/images/team/testimonial1.jpg"
							alt="testimonial">
					</div>
					<div class="testimonial-content">
						<p class="testimonial-text">Lorem Ipsum as their default model
							text, and a search for ‘lorem ipsum’ will uncover many web sites
							still in their infancy. Various versions have evolved over the
							years, sometimes by accident, sometimes on purpose. Lorem Ipsum
							is that it as opposed to using.</p>
						<h3 class="name">
							Sarah Arevik<span>Chief Executive</span>
						</h3>
					</div>
				</div>
				<div class="item">
					<div class="testimonial-thumb">
						<img
							src="<%=request.getContextPath()%>/images/team/testimonial2.jpg"
							alt="testimonial">
					</div>
					<div class="testimonial-content">
						<p class="testimonial-text">Lorem Ipsum as their default model
							text, and a search for ‘lorem ipsum’ will uncover many web sites
							still in their infancy. Various versions have evolved over the
							years, sometimes by accident, sometimes on purpose. Lorem Ipsum
							is that it as opposed to using.</p>
						<h3 class="name">
							Narek Bedros<span>Sr. Manager</span>
						</h3>
					</div>
				</div>
				<div class="item">
					<div class="testimonial-thumb">
						<img
							src="<%=request.getContextPath()%>/images/team/testimonial3.jpg"
							alt="testimonial">
					</div>
					<div class="testimonial-content">
						<p class="testimonial-text">Lorem Ipsum as their default model
							text, and a search for ‘lorem ipsum’ will uncover many web sites
							still in their infancy. Various versions have evolved over the
							years, sometimes by accident, sometimes on purpose. Lorem Ipsum
							is that it as opposed to using.</p>
						<h3 class="name">
							Taline Lucine<span>Sales Manager</span>
						</h3>
					</div>
				</div>
			</div>
			<!--/ Testimonial carousel end-->
		</div>
		<!--/ Row end-->
	</div>
	<!--/  Container end-->
</section>
<!--/ Testimonial end-->


<!-- Newsletter start -->
<section id="newsletter" class="newsletter">
	<div class="container">
		<div class="row">
			<div class="col-md-12 heading text-center">
				<span class="icon-pentagon wow bounceIn animated"><i
					class="fa fa-envelope"></i></span>
				<h2 class="title2">
					Subscribe With Us <span class="title-desc">We Love to Work
						with Passion</span>
				</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<form action="#" method="post" id="newsletter-form"
					class="newsletter-form wow bounceIn" data-wow-duration=".8s">
					<div class="form-group">
						<input type="email" name="email" id="newsletter-form-email"
							class="form-control form-control-lg"
							placeholder="Enter your email address" autocomplete="off">
						<button class="btn btn-primary solid">Subscribe</button>
					</div>
				</form>
			</div>
		</div>
		<!--/ Content row end -->
	</div>
	<!--/ Container end -->
</section>
<!-- Newsletter end -->
<%@ include file="/views/common/footer.jsp"%>