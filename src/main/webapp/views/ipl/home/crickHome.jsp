<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>	IPL 2015 </title>
	<meta name="description" content="Kite Coming Soon HTML Template by Jewel Theme" >
	<meta name="author" content="Jewel Theme">

	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->

	<!-- Bootstrap  -->
	<link href="http://flowers.myrisha.in/ipl/assets/css/bootstrap.min.css" rel="stylesheet">

	<!-- icon fonts font Awesome -->
	<link href="http://flowers.myrisha.in/ipl/assets/css/font-awesome.min.css" rel="stylesheet">

	<!-- Custom Styles -->
	<link href="http://flowers.myrisha.in/ipl/assets/css/style.css" rel="stylesheet">

	<!--Color Style -->
	<link rel="stylesheet" type="text/css" id="color" href="http://flowers.myrisha.in/ipl/assets/css/colors/default.css"/>

	<!--[if lt IE 9]>
	<script src="http://flowers.myrisha.in/ipl/assets/js/html5shiv.js"></script>
	<![endif]-->

</head>
<body>


	<!-- Preloader -->
	<div id="preloader">
		<div id="loader">
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="dot"></div>
			 <div class="lading"></div>
		</div>
	</div><!-- /#preloader -->
	<!-- Preloader End-->

	<!-- Main Menu -->
	<div id="main-menu" class="navbar navbar-default navbar-fixed-top" role="navigation">
				
		<div class="navbar-header">
			<!-- responsive navigation -->
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<i class="fa fa-bars"></i>
			</button> <!-- /.navbar-toggle -->
				
		</div> <!-- /.navbar-header -->

		<nav class="collapse navbar-collapse">
			<!-- Main navigation -->
			<ul id="headernavigation" class="nav navbar-nav">
				<li class="active"><a href="#page-top">Home</a></li>	
				<li><a href="#about">About</a></li>	
				<li><a href="#subscribe">Subscribe</a></li>	
				<li><a href="#contact">Contact</a></li>		
			</ul> <!-- /.nav .navbar-nav -->
		</nav> <!-- /.navbar-collapse  -->
	</div><!-- /#main-menu -->
	<!-- Main Menu End -->
	

	<!-- Page Top Section -->
	<c:forEach items="${nextM }" var="nextMatch">
	
	<section id="page-top" class="section-style parallax-bg" data-background-image="${nextMatch.team1Logo}"></c:forEach>
		<div class="pattern height-resize">
			<div class="container">
				<h1 class="site-title">
					IPL 2015
				</h1><!-- /.site-title -->
				<h3 class="section-name">
					<span>
						Indian Premier League 2015
					</span>
				</h3><!-- /.section-name -->
				<c:forEach items="${nextM }" var="nextMatch">
				<c:if test="${nextMatch.status=='fut' }">
				<h2 class="section-title">
					Next match is @
				</h2><!-- /.Section-title  -->
				<div id="time_countdown" class="time-count-container">

					<div class="col-sm-3">
						<div class="time-box">
							<div class="time-box-inner dash days_dash animated" data-animation="rollIn" data-animation-delay="1">
								<span class="time-number">
									<span class="digit">${nextMatch.matchDay}</span>
								</span>
								<span class="time-name">Days</span>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="time-box">
							<div class="time-box-inner dash hours_dash animated" data-animation="rollIn" data-animation-delay="600">
								<span class="time-number">
									<span class="digit">${nextMatch.matchHour}</span>	
								</span>
								<span class="time-name">Hours</span>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="time-box">
							<div class="time-box-inner dash minutes_dash animated" data-animation="rollIn" data-animation-delay="900">
								<span class="time-number">
									<span class="digit">${nextMatch.matchMin}</span>
								</span>
								<span class="time-name">Minutes</span>
							</div>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="time-box">
							<div class="time-box-inner dash seconds_dash animated" data-animation="rollIn" data-animation-delay="1200">
								<span class="time-number">
									<span class="digit">0</span>
									<span class="digit">0</span>
								</span>
								<span class="time-name">Seconds</span>
							</div>
						</div>
					</div>
					
				</div><!-- /.time-count-container -->
				</c:if>
				
				</c:forEach>
				
				<c:forEach items="${nextM }" var="nextMatch">
				<%-- ${nextMatch.score } --%>
				${nextMatch.status }
				<c:if test="${nextMatch.status=='live' }">
				<h2 class="section-title">
					Next match is @
				</h2><!-- /.Section-title  -->
				<div class="time-count-container">
					${nextMatch.team1 }
					${nextMatch.team2 }
					${nextMatch.score }
					
					
				</div><!-- /.time-count-container -->
				</c:if>
				
				</c:forEach>
				

				<p class="time-until">
					<span>Lets start here...</span>
				</p><!-- /.time-until -->



				<div class="next-section">
					<a class="go-to-about"><span></span></a>
				</div><!-- /.next-section -->
				
			</div><!-- /.container -->
		</div><!-- /.pattern -->		
	</section><!-- /#page-top -->
	<!-- Page Top Section  End -->


	<!-- About Us Section -->
	<section id="about" class="section-style no-parallax-bg" data-background-image="images/background/about-us.jpg">
		<div class="pattern height-resize"> 
			<div class="container">
				<h3 class="section-name">
					<span>
						Teams
					</span>
				</h3><!-- /.section-name -->
				<h2 class="section-title">
					We Are dedicated
				</h2><!-- /.Section-title  -->
				<p class="section-description">
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
				</p><!-- /.section-description -->

				<div class="team-container">
					<div class="row">
						<div class="col-sm-4">
							<div class="team-member">
								<figure>
									<img src="images/team/team-member-1.jpg" alt="Team Member">
									<figcaption>
										<p class="member-name">John Doe</p>
										<p class="designation">
											CEO
										</p><!-- /.designation -->

									</figcaption>
								</figure>
								<div class="social-btn-container">
									<div class="team-socail-btn">
										<span class="social-btn-box facebook-btn-container">
											<a href="#" class="facebook-btn">
												<i class="fa fa-facebook"></i>
											</a><!-- /.facebook-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box twitter-btn-container">
											<a href="#" class="twitter-btn">
												<i class="fa fa-twitter"></i>
											</a><!-- /.twitter-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box linkedin-btn-container">
											<a href="#" class="linkedin-btn">
												<i class="fa fa-linkedin"></i>
											</a><!-- /.linkedin-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box github-btn-container">
											<a href="#" class="github-btn">
												<i class="fa fa-github-alt"></i>
											</a><!-- /.github-btn -->
										</span><!-- /.social-btn-box -->
									</div><!-- /.team-socail-btn -->
								</div><!-- /.social-btn-container -->
							</div><!-- /.team-member -->
						</div><!-- /.col-sm-4 -->


						<div class="col-sm-4">
							<div class="team-member">
								<figure>
									<img src="images/team/team-member-2.jpg" alt="Team Member">
									<figcaption>
										<p class="member-name">
											Claudia Springer
										</p><!-- /.member-name -->
										<p class="designation">
											Designer 
										</p><!-- /.designation -->

									</figcaption>
								</figure>
								<div class="social-btn-container">
									<div class="team-socail-btn">
										<span class="social-btn-box facebook-btn-container">
											<a href="#" class="facebook-btn">
												<i class="fa fa-facebook"></i>
											</a><!-- /.facebook-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box twitter-btn-container">
											<a href="#" class="twitter-btn">
												<i class="fa fa-twitter"></i>
											</a><!-- /.twitter-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box linkedin-btn-container">
											<a href="#" class="linkedin-btn">
												<i class="fa fa-linkedin"></i>
											</a><!-- /.linkedin-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box github-btn-container">
											<a href="#" class="github-btn">
												<i class="fa fa-github-alt"></i>
											</a><!-- /.github-btn -->
										</span><!-- /.social-btn-box -->
									</div><!-- /.team-socail-btn -->
								</div><!-- /.social-btn-container -->
							</div><!-- /.team-member -->
						</div><!-- /.col-sm-4 -->


						<div class="col-sm-4">
							<div class="team-member">
								<figure>
									<img src="images/team/team-member-3.jpg" alt="Team Member">
									<figcaption>
										<p class="member-name">
											Max Anthony
										</p><!-- /.member-name -->
										<p class="designation">
											Developer 
										</p><!-- /.designation -->

									</figcaption>
								</figure>
								<div class="social-btn-container">
									<div class="team-socail-btn">
										<span class="social-btn-box facebook-btn-container">
											<a href="#" class="facebook-btn">
												<i class="fa fa-facebook"></i>
											</a><!-- /.facebook-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box twitter-btn-container">
											<a href="#" class="twitter-btn">
												<i class="fa fa-twitter"></i>
											</a><!-- /.twitter-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box linkedin-btn-container">
											<a href="#" class="linkedin-btn">
												<i class="fa fa-linkedin"></i>
											</a><!-- /.linkedin-btn -->
										</span><!-- /.social-btn-box -->

										<span class="social-btn-box github-btn-container">
											<a href="#" class="github-btn">
												<i class="fa fa-github-alt"></i>
											</a><!-- /.github-btn -->
										</span><!-- /.social-btn-box -->
									</div><!-- /.team-socail-btn -->
								</div><!-- /.social-btn-container -->
							</div><!-- /.team-member -->
						</div><!-- /.col-sm-4 -->
					</div><!-- /.row -->
					
				</div><!-- /.team-container -->

				<div class="next-section">
					<a class="go-to-subscribe"><span></span></a>
				</div><!-- /.next-section -->

			</div><!-- /.container -->
		</div><!-- /.pattern -->
		
		
	</section><!-- /#about -->
	<!-- About Us Section End -->



	<!-- Subscribe Section -->
	<section id="subscribe" class="section-style parallax-bg" data-background-image="images/background/newsletter.jpg">
		<div class="pattern height-resize">
			<div class="container">
				<h3 class="section-name">
					<span>
						Subscribe
					</span>
				</h3><!-- /.section-name -->
				<h2 class="section-title">
					Our Newsletter 
				</h2><!-- /.Section-title  -->
				<p class="section-description">
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
				</p><!-- /.section-description -->

				<form class="news-letter" action="php/subscribe.php" method="post">
					<div class="subscribe-hide">
						<input class="form-control" type="email" id="subscribe-email" name="subscribe-email" placeholder="Email Address"  required>
						<button  type="submit" id="subscribe-submit" class="btn"><i class="fa fa-envelope"></i></button>
						<span id="subscribe-loading" class="btn"> <i class="fa fa-refresh fa-spin"></i> </span>
						<div class="subscribe-error"></div>
					</div><!-- /.subscribe-hide -->
					<div class="subscribe-message"></div>
				</form><!-- /.news-letter -->

				<div class="social-btn-container">
					<span class="social-btn-box">
						<a href="#" class="facebook-btn">
						<i class="fa fa-facebook"></i></a>
					</span><!-- /.social-btn-box -->

					<span class="social-btn-box">
						<a href="#" class="twitter-btn"><i class="fa fa-twitter"></i></a>
					</span><!-- /.social-btn-box -->

					<span class="social-btn-box">
						<a href="#" class="linkedin-btn"><i class="fa fa-linkedin"></i></a>
					</span><!-- /.social-btn-box -->

					<span class="social-btn-box">
						<a href="#" class="google-plus-btn"><i class="fa fa-google-plus"></i></a>
					</span><!-- /.social-btn-box -->


					<span class="social-btn-box">
						<a href="#" class="youtube-btn"><i class="fa fa-youtube"></i></a>
					</span><!-- /.social-btn-box -->


					
				</div><!-- /.social-btn-container -->

				<div class="next-section">
					<a class="go-to-contact"><span></span></a>
				</div><!-- /.next-section -->

			</div><!-- /.container -->
		</div><!-- /.pattern -->

	</section><!-- /#subscribe -->
	<!-- Subscribe Section End -->



	<!-- Contact Section -->
	<section id="contact" class="section-style no-parallax-bg" data-background-image="images/background/contact.jpg">
		<div class="pattern height-resize">
			<div class="container">
				<h3 class="section-name">
					<span>
						Contact
					</span>
				</h3><!-- /.section-name -->
				<h2 class="section-title">
					Get in Touch 
				</h2><!-- /.Section-title  -->
				<p class="section-description">
					Proin gravida nibh vel velit auctor aliquet. Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris.
				</p><!-- /.section-description -->

				<form id="contact-form" action="#" method="post" class="clearfix">
					<div class="contact-box-hide">
						<div class="col-sm-6">
							<input type="text"  class="form-control" id="first_name" name="first_name" required placeholder="First Name">
							<span class="first-name-error"></span>
						</div>
						<div class="col-sm-6">
							<input type="text"  class="form-control" id="last_name" name="last_name" required placeholder="Last Name">
							<span class="last-name-error"></span>
						</div>
						<div class="col-sm-6">
							<input type="email" class="form-control"  id="contact_email" name="contact_email" required placeholder="Email Address">
							<span class="contact-email-error"></span>
						</div>
						<div class="col-sm-6">
							<input type="text"  class="form-control" id="subject" name="contact_subject" required placeholder="Subject">
							<span class="contact-subject-error"></span>
						</div>
						<div class="col-sm-10">
							<textarea class="form-control" rows="5" id="message" name="message" required placeholder="Message"></textarea>
							<span class="contact-message-error"></span>
						</div>
						<div class="col-sm-2">
							<button id="contact-submit" class="btn custom-btn col-xs-12" type="submit" name="submit"><i class="fa fa-rocket"></i></button>
							<span id="contact-loading" class="btn custom-btn col-xs-12"> <i class="fa fa-refresh fa-spin"></i> </span>
						</div>
					</div><!-- /.contact-box-hide -->
					<div class="contact-message"></div>

				</form><!-- /#contact-form -->

				

				<div class="next-section">
					<a class="go-to-page-top"><span></span></a>
				</div><!-- /.next-section -->

			</div><!-- /.container -->
		</div><!-- /.pattern -->

	</section><!-- /#contact -->
	<!-- Contact Section End -->



	<!-- Footer Section -->
	<footer id="footer-section">
		<p class="copyright">
			&copy; <a href="http://jeweltheme.com/html/kite/">Kite</a> 2014 -2015 , All Rights Reserved. Designed by & Developed by <a href="http://jeweltheme.com">Jewel Theme</a>
		</p>
	</footer>
	<!-- Footer Section End -->


	<!-- Color Variation Switcher  -->
	<div id="color-style-switcher">
	  <div>
		<h3>Color palette</h3>
		<ul class="colors">
			<li><a class="color1 active" href="#"></a></li>
			<li><a class="color2" href="#"></a></li>
			<li><a class="color3" href="#"></a></li>
			<li><a class="color4" href="#"></a></li>
			<li><a class="color5" href="#"></a></li>
			<li><a class="color6" href="#"></a></li>
			<li><a class="color7" href="#"></a></li>
			<li><a class="color8" href="#"></a></li>
		</ul>
	  </div>	  
	  <div class="bottom">
		<a href="#" class="settings"><i class="fa fa-cogs icon-2x"></i></a>
	  </div>
	</div>
	<!-- Color Variation Switcher End -->


	<!-- jQuery Library -->
	<script type="text/javascript" src="http://flowers.myrisha.in/ipl/assets/js/jquery-2.1.0.min.js"></script>
	<!-- Modernizr js -->
	<script type="text/javascript" src="http://flowers.myrisha.in/ipl/assets/js/modernizr-2.8.0.min.js"></script>
	<!-- Plugins -->
	<script type="text/javascript" src="http://flowers.myrisha.in/ipl/assets/js/plugins.js"></script>
	<!-- Custom JavaScript Functions -->
	<script type="text/javascript" src="http://flowers.myrisha.in/ipl/assets/js/functions.js"></script>
	<!-- jquery.parallax.js -->
	<script type="text/javascript" src="http://flowers.myrisha.in/ipl/assets/js/jquery.parallax.js"></script>
	<!-- Color Style Switcher -->
	<script type="text/javascript" src="http://flowers.myrisha.in/ipl/assets/js/switcher.js"></script>

	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(window).load(function(){
				$("#page-top").parallax("50%", 0.2);
				$("#subscribe").parallax("50%", 0.2);
			})
		})
	</script>

	
</body>
</html>
