<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>

<!-- Meta Tags -->

<title>ICC cricket world cup 2015 ScoreIt Cricket 2014 Live Scores</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description"
	content="ICC cricket world cup 2015, ScoreIt Cricket, cricket,cricket news,live cricket,cricket scores,ipl,ashes cricket,ball by ball commentary " />
<meta name="keywords"
	content="ICC cricket world cup 2015, ScoreIt Cricket, cricket,cricket news,live cricket,cricket scores,ipl,ashes cricket,sachin tendulkar,ball by ball commentary  " />
<meta name="news_keywords"
	content="ICC cricket world cup 2015, ScoreIt Cricket, cricket,cricket news,live cricket,cricket scores,ipl,ashes cricket,sachin tendulkar,ball by ball commentary " />

<!-- main JS libs -->
<script src="/resources/wc/js/libs/jquery-1.11.0.min.js"></script>
<script src="/resources/wc/js/libs/jquery-ui.min.js"></script>
<script src="/resources/wc/js/libs/bootstrap.min.js"></script>

<!-- Style CSS -->
<link href="/resources/wc/css/bootstrap.css" media="screen" rel="stylesheet">
<link href="/resources/wc/style.css" media="screen" rel="stylesheet">

<!-- General Scripts -->
<script src="/resources/wc/js/general.js"></script>

<!-- CarouFredSel  -->
<script src="/resources/wc/js/jquery.carouFredSel-6.2.1-packed.js"></script>
<script src="/resources/wc/js/jquery.touchSwipe.min.js"></script>

<!-- Lightbox prettyPhoto -->
<link href="/resources/wc/css/prettyPhoto.css" rel="stylesheet">
<script src="/resources/wc/js/jquery.prettyPhoto.js"></script>

<!-- Responsive Menu -->
<link rel="stylesheet" href="/resources/wc/css/slicknav.css">
<script src="/resources/wc/js/jquery.slicknav.min.js"></script>
<script>
    $(document).ready(function(){
        $('.menu').slicknav();
    });
</script>

<!-- Scroll Bars -->
<script src="/resources/wc/js/jquery.mousewheel.js"></script>
<script src="/resources/wc/js/jquery.jscrollpane.min.js"></script>
<script>
    jQuery(function() {
        jQuery('.scrollbar').jScrollPane({
            autoReinitialise: true,
            verticalGutter: 0
        });
    });
	 
        $(document).ready(function () {
		var comm="";
	        
	        var mailComm="";
	        var mailShm="";
	        var img1="";
	        
	        var isLatest="N";
	        var isMail1="N";
	        var isMail2="N";
	        var img="";
			var yahooURL = "https://query.yahooapis.com/v1/public/yql";
			var comentQuery="select * from cricket.commentary where match_id="+"186837";
			var pastMatchQ="select * from cricket.past_matches";
			var futureMatchesQ="select * from cricket.upcoming_matches";
			var playerProfileQ="select * from cricket.player.profile where player_id="+"2962";
			var scorecardQ="select * from cricket.scorecard where match_id="+"11985";
			var teamProfileQ="select * from cricket.team.profile where team_id in"+"(1188,1,2,3,4,13,5,6,7,16,21,9,10)";
			
				
		
            $("#startBtn").on('click', function (e) {
                debugger;
                //var u1 = new SpeechSynthesisUtterance(mailComm);
                //u1.lang = 'en-US';
                //u1.pitch = 100;
                //u1.rate = 2;
                //u1.voice = voices[10];
                //u1.voiceURI = 'native';
                //u1.volume = 1;
                //speechSynthesis.speak(u1);

            });
        });
		 
    

</script>

<!-- Video Player -->
<link href="/resources/wc/css/video-js.css" rel="stylesheet">
<script src="/resources/wc/js/video.js"></script>
<script>
    videojs.options.flash.swf = "/resources/wc/js/video-js.swf";
</script>

<!-- Audio Player -->
<link href="/resources/wc/css/jplayer.css" rel="stylesheet">
<script src="/resources/wc/js/jplayer/jquery.jplayer.min.js"></script>
<script src="/resources/wc/js/jplayer/jplayer.playlist.min.js"></script>
<script src="/resources/wc/js/jplayer/jquery.transform2d.js"></script>
<script src="/resources/wc/js/jplayer/jquery.grab.js"></script>
<script src="/resources/wc/js/jplayer/mod.csstransforms.min.js"></script>
<script src="/resources/wc/js/jplayer/circle.player.js"></script>

<!-- Graph Builder -->
<script src="https://www.google.com/jsapi"></script>

<!--[if lt IE 9]>
<script src="/resources/wc/js/libs/html5shiv.js"></script>
<script src="/resources/wc/js/libs/respond.min.js"></script>
<![endif]-->

</head>


<body>

<div class="body-wrap">
    <div class="content">
        <!--container-->
        <div class="container">
            <!-- row -->
            <div class="row">
			
            </div>
            <!--/ row -->

            <!-- row -->
            <div class="row">
                <div class="col-sm-12">
                    <!-- Post Tabs -->
                    <div class="post-tabs clearfix">
                        <div class="post-tabs-bookmarks">
                            <ul class="scrollbar style2">
                                <li class="active">India</li>
                                <li>South Africa</li>
                                <li>Australia</li>
                                <li>England</li>
                                <li>Pakistan</li>
                                <li>New Zealand</li>
                                <li>Sri Lanka</li>
                                <li>West Indies</li>
                                <li>Bangladesh</li>
								<li>Zimbabwe</li>
                            </ul>
                        </div>

                        <div class="post-tabs-content boxed">
                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow active">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/cricket/teamId/4?iframe=true" rel="prettyPhoto" title="India"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/India.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">India</a></h2>
                                    <h6 class="post-subtitle">Men in BLUE.</h6>
                                    <div class="post-desc">
                                        <p>Biggest moment of glory came on 2nd April 2011 when India beat Sri Lanka in the finals of the 2011 ICC Cricket World Cup at the Wankhede Stadium.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/4">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="Like"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="Comment"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/South%20Africa.png" data-rel="prettyPhoto" title="SOUTH AFRICA"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/South%20Africa.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">SOUTH AFRICA</a></h2>
                                    <h6 class="post-subtitle">Proteas</h6>
                                    <div class="post-desc">
                                        <p>The Proteas have had mixed success. Even when the team has been considered to be a favourite to win a tournament, good fortune deserts it. </p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/7">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Australia.png" data-rel="prettyPhoto" title="Australia"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Australia.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">Australia</a></h2>
                                    <h6 class="post-subtitle">Aussies</h6>
                                    <div class="post-desc">
                                        <p>The Australian cricket team, in most eras, is probably the most successful team in world cricket. Along with England, it is the oldest team in Test cricket, having played in the first Test match in 1877.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/1">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/England.png" data-rel="prettyPhoto" title="England"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/England.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">England</a></h2>
                                    <h6 class="post-subtitle">England</h6>
                                    <div class="post-desc">
                                        <p>It was in the year 2010 that the Englishmen achieved their first-ever World Cup win, when they won the ICC World Twenty20 tournament, under the captaincy of Collingwood.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/3">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Pakistan.png" data-rel="prettyPhoto" title="Pakistan"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Pakistan.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">Pakistan</a></h2>
                                    <h6 class="post-subtitle">Pakistan</h6>
                                    <div class="post-desc">
                                        <p>Pakistan has emerged as a formidable opposition winning the Cricket World Cup in 1992 and being runners-up in the 1999 edition of the same.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/6">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/New%20Zealand.png" data-rel="prettyPhoto" title="New Zealand"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/New%20Zealand.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">New Zealand</a></h2>
                                    <h6 class="post-subtitle">Black Caps</h6>
                                    <div class="post-desc">
                                        <p>The team has been quite unlucky with regard to its World Cup campaigns. They have made it to the semi-finals six times in World Cups but have failed to qualify further each time.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/5">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Sri%20Lanka.png" data-rel="prettyPhoto" title="Sri Lanka"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Sri%20Lanka.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">Sri Lanka</a></h2>
                                    <h6 class="post-subtitle">Sri Lanka</h6>
                                    <div class="post-desc">
                                        <p>The biggest achievement for Sri Lankan cricket was lifting the 1996 Cricket World Cup beating Australia in the finals, and becoming the World Champions.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/8">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/West%20Indies.png" data-rel="prettyPhoto" title="West Indies"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/West%20Indies.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">West Indies</a></h2>
                                    <h6 class="post-subtitle">Windies</h6>
                                    <div class="post-desc">
                                        <p>West Indies won two successive World Cups, in 1975 and 1979 and became the first cricket team to do so, until Australia surpassed the record.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/9">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->

                            <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Bangladesh.png" data-rel="prettyPhoto" title="Bangladesh"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Bangladesh.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">Bangladesh</a></h2>
                                    <h6 class="post-subtitle">The Tigers</h6>
                                    <div class="post-desc">
                                        <p>Qualified for the 1999 ICC Cricket World Cup for the first time. Nobody really gave Bangladesh much attention at the tournament until a shock win over Pakistan in a group phase match</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/2">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->
							 <!-- post item -->
                            <div class="post-item style6 clearfix bg-image-arrow">
                                <div class="post-image"><a href="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Zimbabwe.png" data-rel="prettyPhoto" title="Zimbabwe"><img src="http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Zimbabwe.png" alt="" /></a></div>
                                <div class="post-content">
                                    <h2 class="post-title"><a href="#">Zimbabwe</a></h2>
                                    <h6 class="post-subtitle">Zimbabwe</h6>
                                    <div class="post-desc">
                                        <p>Gave some decent performances in the 2007 ICC World Twenty20 and the 2011 ICC Cricket World Cup.</p>
                                    </div>
                                    <ul class="post-links-alt">
                                        <li class="post-more"><a href="/cricket/teamId/10">Read more<i class="icon-small-next"></i></a></li>
                                        <li class="post-refresh"><a href="#"><i class="icon-small-refresh"></i></a></li>
                                        <li class="post-like"><a href="#" title="128 Likes"><i class="icon-small-like"></i></a></li>
                                        <li class="post-comments"><a href="#" title="96 Comments"><i class="icon-small-comment"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <!--/ post item -->
                        </div>
                    </div>
                    <!--/ Post Tabs -->
<!-- widget schedule content-->
<script>
 $(document).ready(function () {
		
            
        });
		 
</script><!-- widget schedule content-->
                    <!-- Widget Schedule -->
                    <div class="widget-container widget-schedule clearfix">
                        <h2 class="widget-title"><i></i>Calendar</h2>
                        <div class="carousel" id="sch">
                            <ul id="schedule">
                                <li class="schedule-item clearfix">
                                    <div class="schedule-left">
                                        <div class="schedule-name" id="m1t1">Robin</div>
										<div class="schedule-name" id="m1t1">Robin</div>
                                        <div class="schedule-date" id="m1d1">november 3rd</div>
                                        <div class="rating clearfix">
                                            <!--<span class="star voted" rel="1"></span>
                                            <span class="star voted" rel="2"></span>
                                            <span class="star voted" rel="3"></span>
                                            <span class="star voted" rel="4"></span>
                                            <span class="star voted" rel="5"></span>-->
                                        </div>
                                    </div>
                                    <div class="schedule-right">
                                        <div class="schedule-avatar"><a href="#"><img src="images/temp/schedule-avatar-1.jpg" height="60px" width="60px" alt="" /><img src="images/temp/schedule-avatar-1.jpg" width="50%" alt="" /></a></div>
										
                                        <div class="schedule-links">
                                            <a class="schedule-details" href="#"><i class="icon-small-info"></i>Details</a>
                                            <a class="schedule-add" href="#"><i class="icon-small-star"></i>Add to list</a>
                                        </div>
                                    </div>
                                </li>

                                <li class="schedule-item clearfix">
                                    <div class="schedule-left">
                                        <div class="schedule-name">Kyle<br />Minouge</div>
                                        <div class="schedule-date">january 25th</div>
                                        <div class="rating clearfix">
                                            <span class="star voted" rel="1"></span>
                                            <span class="star voted" rel="2"></span>
                                            <span class="star voted" rel="3"></span>
                                            <span class="star" rel="4"></span>
                                            <span class="star" rel="5"></span>
                                        </div>
                                    </div>
                                    <div class="schedule-right">
                                        <div class="schedule-avatar"><a href="#"><img src="images/temp/schedule-avatar-2.jpg" alt="" /></a></div>
                                        <div class="schedule-links">
                                            <a class="schedule-details" href="#"><i class="icon-small-info"></i>Details</a>
                                            <a class="schedule-add" href="#"><i class="icon-small-star"></i>Add to list</a>
                                        </div>
                                    </div>
                                </li>

                                <li class="schedule-item clearfix">
                                    <div class="schedule-left">
                                        <div class="schedule-name">Selena<br />Gomez</div>
                                        <div class="schedule-date">MARCH 18th</div>
                                        <div class="rating clearfix">
                                            <span class="star voted" rel="1"></span>
                                            <span class="star voted" rel="2"></span>
                                            <span class="star voted" rel="3"></span>
                                            <span class="star voted" rel="4"></span>
                                            <span class="star" rel="5"></span>
                                        </div>
                                    </div>
                                    <div class="schedule-right">
                                        <div class="schedule-avatar"><a href="#"><img src="images/temp/schedule-avatar-3.jpg" alt="" /></a></div>
                                        <div class="schedule-links">
                                            <a class="schedule-details" href="#"><i class="icon-small-info"></i>Details</a>
                                            <a class="schedule-add" href="#"><i class="icon-small-star"></i>Add to list</a>
                                        </div>
                                    </div>
                                </li>

                                <li class="schedule-item clearfix">
                                    <div class="schedule-left">
                                        <div class="schedule-name">Maria<br />Jopek</div>
                                        <div class="schedule-date">MARCH 12th</div>
                                        <div class="rating clearfix">
                                            <span class="star voted" rel="1"></span>
                                            <span class="star voted" rel="2"></span>
                                            <span class="star voted" rel="3"></span>
                                            <span class="star voted" rel="4"></span>
                                            <span class="star voted" rel="5"></span>
                                        </div>
                                    </div>
                                    <div class="schedule-right">
                                        <div class="schedule-avatar"><a href="#"><img src="images/temp/schedule-avatar-4.jpg" alt="" /></a></div>
                                        <div class="schedule-links">
                                            <a class="schedule-details" href="#"><i class="icon-small-info"></i>Details</a>
                                            <a class="schedule-add" href="#"><i class="icon-small-star"></i>Add to list</a>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <a class="prev" id="schedule-prev" href="#">&lsaquo;</a>
                            <a class="next" id="schedule-next" href="#">&rsaquo;</a>
                        </div>
                    </div>

                    <script>
                        jQuery(document).ready(function ($) {
						
						var comm="";
	        var Schedulecontent="";
	        var img1="";
	        Schedulecontent=Schedulecontent+'<ul id="schedule">';
                                
                            
	        var img="";
			var yahooURL = "https://query.yahooapis.com/v1/public/yql";
			//var comentQuery="select * from cricket.commentary where match_id="+"186837";
			var pastMatchQ="select * from cricket.past_matches";
			var futureMatchesQ="select * from cricket.upcoming_matches";
			var playerProfileQ="select * from cricket.player.profile where player_id="+"2962";
			var scorecardQ="select * from cricket.scorecard where match_id="+"11985";
			var teamProfileQ="select * from cricket.team.profile where team_id in"+"(1188,1,2,3,4,13,5,6,7,16,21,9,10)";
			var matchDet="";
			$.getJSON( yahooURL, {
											q:futureMatchesQ,
											format:"json",
											diagnostics:"true",
											env:"store://0TxIGQMQbObzvU4Apia0V0",
											callback:""
										  })
											.done(function( data ) {
											 mailComm="";
											  $.each( data.query.results.Match, function( i, item ) {
											  matchDet="/cricket/id/"+item.matchid;
											  img="";
											  Schedulecontent=Schedulecontent+'<li class="schedule-item clearfix">'+
														'<div class="schedule-left">';
                                        
												  $.each( item.Team, function( i1, team ) {
													   var tShortName="";
													   switch (team.teamid) {
															case "1188":
																tShortName="AFG";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Afghanistan.png' alt='' />";
																break;
															case "2":
																tShortName="BAN";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Bangladesh.png' alt='' />";
																break;
															case "3":
																tShortName="ENG";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/England.png' alt='' />";
																break;
															case "4":
																tShortName="IND";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/India.png' alt='' />";
																break;
															case "5":
																tShortName="NZ";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/New%20Zealand.png' alt='' />";
																break;
															case "13":
																tShortName="IRE";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Ireland.png' alt='' />";
																break;
															case "6":
																tShortName="PAK";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Pakistan.png' alt='' />";
																break;
															case "9":
																tShortName="WI";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/West%20Indies.png' alt='' />";
																break;
															case "7":
																tShortName="SA";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/South%20Africa.png' alt='' />";
																break;
															case "8":
																tShortName="SL";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Sri%20Lanka.png' alt='' />";
																break;
															case "10":
																tShortName="ZIM";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Zimbabwe.png' alt='' />";
																break;
															case "1":
																tShortName="AUS";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Australia.png' alt='' />";
																break;
															case "16":
																tShortName="SCO";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/Scotland.png' alt='' />";
																break;
															case "21":
																tShortName="UAE";
																img=img+"<img src='http://scoreit.herokuapp.com/resources/wc/_include/img/profile/United%20Arab%20Emirates.png' alt='' />";
																break;
														}
														Schedulecontent=Schedulecontent+'<div class="schedule-name" id="m1t1">'+
													   tShortName+'</div>';
												  });
												  Schedulecontent=Schedulecontent+'<div class="schedule-date" id="m1d1">'+
												  item.StartDate.substring(0,10)+'</div>'+
														'</div>'+
														'<div class="schedule-right">'+
														'<div class="schedule-avatar"><a href="#">'+img+'</a></div>'+
										
														'<div class="schedule-links">'+
														'<a class="schedule-details" href="'+matchDet+'"><i class="icon-small-info"></i>Details</a>'+
														'<a class="schedule-add" href="#"><i class="icon-small-star"></i>Add to list</a>'+
														'</div>'+
														'</div>'+
														'</li>';
												
											  });
											  Schedulecontent=Schedulecontent+'</ul>'+
												'<a class="prev" id="schedule-prev" href="#">&lsaquo;</a>'+
												'<a class="next" id="schedule-next" href="#">&rsaquo;</a>';
												//alert(Schedulecontent);
										  $("#sch").html(Schedulecontent);
										  scheduleInit();
										});	
		

                            function scheduleInit() {
                                $('#schedule').carouFredSel({
                                    swipe : {
                                        onTouch: true
                                    },
                                    prev: '#schedule-prev',
                                    next: "#schedule-next",
                                    auto: {
                                        play: true,
                                        timeoutDuration: 16000
                                    },
                                    scroll: {
                                        pauseOnHover: true,
                                        items: 1,
                                        duration: 500,
                                        easing: 'swing'
                                    }
                                });
                            }

                            scheduleInit();

                            $(window).resize(function() {
                                scheduleInit();
                            });
                        });
                    </script>
                    <!--/ Widget Schedule -->
                </div>
            </div>
            <!--/ row -->

            <!-- row -->
            <div class="row">
                <div class="col-sm-5">
                    <!-- Widget Profile -->
                    <div class="tabs-framed tabs-framed-right boxed widget-container widget-profile">
                        <ul class="tabs clearfix">
                            <li><a href="#profile1" data-toggle="tab"><i class="icon-tab-4"></i>Bat</a></li>
                            <li class="active"><a href="#profile2" data-toggle="tab"><i class="icon-tab-5"></i>Ball</a></li>
                            <li><a href="#profile3" data-toggle="tab"><i class="icon-tab-6"></i>Field</a></li>
                            <li><a href="#profile4" data-toggle="tab"><i class="icon-tab-7"></i>Captain</a></li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane fade" id="profile1">
                                <div class="profile-social">
                                    <a href="#"><span class="icon-small-pinterest"></span></a>
                                    <a href="#"><span class="icon-small-twitter"></span></a>
                                    <a href="#"><span class="icon-small-facebook"></span></a>
                                </div>
                                <div class="profile-image">
                                    <img src="/resources/img/c/kohli.gif" alt="" />
                                </div>
                                <c:forEach var="bat" items="${batStandings.player.players}" varStatus="i">
                                ${i.count }
                                <c:if test="${i.count==1 }">
                                
                                <div class="bottom">
                                    <div class="profile-desc">
                                        <a href="#" class="profile-title">${bat.name }</a>
                                        <span class="profile-subtitle">${bat.team }</span>
                                    </div>
                                    <ul class="profile-links clearfix">
                                        <li class="profile-views"><a href="#"><i class="icon-small-author"></i>${bat.run }</a></li>
                                        <li class="profile-likes"><a href="#"><i class="icon-small-like"></i>${bat.match }</a></li>
                                        <li class="profile-comments"><a href="#"><i class="icon-small-comment"></i>${bat.average }</a></li>
                                    </ul>
                                </div>
                                </c:if>
                                </c:forEach>
                                
                            </div>

                            <div class="tab-pane fade in active" id="profile2">
                                <div class="profile-social">
                                    <a href="#"><span class="icon-small-pinterest"></span></a>
                                    <a href="#"><span class="icon-small-twitter"></span></a>
                                    <a href="#"><span class="icon-small-facebook"></span></a>
                                </div>
                                <c:forEach var="bat" items="${ballStandings.player.players}" varStatus="i">
                                <c:if test="${i.count==1 }">
                                <div class="profile-image">
                                    <img src="/resources/img/c/howzaat.gif" alt="" />
                                </div>
                                <div class="bottom">
                                    <div class="profile-desc">
                                        <a href="#" class="profile-title">${bat.name }</a>
                                        <span class="profile-subtitle">${bat.team }</span>
                                    </div>
                                    <ul class="profile-links clearfix">
                                        <li class="profile-views"><a href="#"><i class="icon-small-author"></i>${bat.run }</a></li>
                                        <li class="profile-likes"><a href="#"><i class="icon-small-like"></i>${bat.match }</a></li>
                                        <li class="profile-comments"><a href="#"><i class="icon-small-comment"></i>${bat.average }</a></li>
                                    </ul>
                                </div>
                                </c:if>
                                </c:forEach>
                            </div>

                            <div class="tab-pane fade" id="profile3">
                                <div class="profile-social">
                                    <a href="#"><span class="icon-small-pinterest"></span></a>
                                    <a href="#"><span class="icon-small-twitter"></span></a>
                                    <a href="#"><span class="icon-small-facebook"></span></a>
                                </div>
                                <c:forEach var="bat" items="${fieldStandings.player.players}" varStatus="i">
                                <c:if test="${i.count==1 }">
                                <div class="profile-image">
                                    <img src="/resources/img/c/whtacatch.gif" alt="" />
                                </div>
                                <div class="bottom">
                                    <div class="profile-desc">
                                        <a href="#" class="profile-title">${bat.name }</a>
                                        <span class="profile-subtitle">${bat.team }</span>
                                    </div>
                                    <ul class="profile-links clearfix">
                                        <li class="profile-views"><a href="#"><i class="icon-small-author"></i>${bat.run }</a></li>
                                        <li class="profile-likes"><a href="#"><i class="icon-small-like"></i>${bat.match }</a></li>
                                        <li class="profile-comments"><a href="#"><i class="icon-small-comment"></i>${bat.average }</a></li>
                                    </ul>
                                </div>
                                </c:if>
                                </c:forEach>
                            </div>

                            <div class="tab-pane fade" id="profile4">
                                <div class="profile-social">
                                    <a href="#"><span class="icon-small-pinterest"></span></a>
                                    <a href="#"><span class="icon-small-twitter"></span></a>
                                    <a href="#"><span class="icon-small-facebook"></span></a>
                                </div>
                                <c:forEach var="bat" items="${standings.teams.lT}" varStatus="i">
                                <c:if test="${i.count==1 }">
                                <div class="profile-image">
                                    <img src="/resources/wc/_include/img/profile/${bat.name }.png" alt="" />
                                </div>
                                <div class="bottom">
                                    <div class="profile-desc">
                                        <a href="#" class="profile-title">${bat.name }</a>
                                        <span class="prof	ile-subtitle">${bat.won }</span>
                                    </div>
                                    <ul class="profile-links clearfix">
                                        <li class="profile-views"><a href="#"><i class="icon-small-author"></i>${bat.points }</a></li>
                                        <li class="profile-likes"><a href="#"><i class="icon-small-like"></i>${bat.played }</a></li>
                                        <li class="profile-comments"><a href="#"><i class="icon-small-comment"></i>${bat.netRunRate }</a></li>
                                    </ul>
                                </div>
                                </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                    <!--/ Widget Profile -->
                </div>

                <div class="col-sm-3">
                    <!-- Price List -->
                    <div class="price-list style3">
                        <div class="price-item boxed">
                            <div class="price-content bg-image-note4">
                                <h3 class="price-title">Full acc</h3>
                                <h6 class="price-subtitle">For music lovers</h6>
                                <ul>
                                    <li>50 000 songs</li>
                                    <li>All profiles</li>
                                    <li>Exclusive stories</li>
                                    <li>Hot news</li>
                                </ul>
                            </div>
                            <div class="price">
                                <strong><sub>$</sub>9</strong>
                                <span>per month</span>
                            </div>
                            <a href="#" class="btn btn-full btn-large"><span><i class="glyphicon glyphicon-shopping-cart"></i>Buy!</span></a>
                        </div>
                     </div>
                    <!--/ Price List -->
                </div>

                <div class="col-sm-4">
                    <!-- Circle Player -->
                    <div id="jquery_jplayer_1" class="jp-jplayer"></div>
                    <div id="cp_container_1" class="cp-container clearfix">
                        <div class="cp-wrap">
                            <div class="cp-progress-holder">
                                <div class="cp-progress-1"></div>
                                <div class="cp-progress-2"></div>
                            </div>
                            <div class="cp-circle-control"></div>
                            <ul class="cp-controls">
                                <li><a class="cp-play" id="button-speak-ss" tabindex="1">play</a></li>
                                <li><a class="cp-pause" id="button-pause-ss" tabindex="1">pause</a></li>
                            </ul>
                            <div class="jp-current-time" id="playPause">Play</div>
                            <c:forEach var="livFixScore" items="${fixturesL.scorecardList}" varStatus="iSc">
                            <c:if test="${not empty livFixScore}">
							<input type="hidden" value="${livFixScore.mid }" id="liveMatchId"/>
							</c:if>
							</c:forEach>
                            
                            
                            
                        </div>
                        <div class="jp-controls jp-buttons">
                            <div class="song-title">
                                <div class="item-song">Read out Comments</div>
                                <div class="jp-current-time" id="liveScore"></div>
                                <div class="jp-mute"></div>
                            </div>
                            <!--<a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a>
                            <a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a>
                            <div class="jp-volume-bar"><div class="jp-volume-bar-value"></div></div>-->
                        </div>
                        
                    </div>
                    <script>
                        //<![CDATA[
                        $(document).ready(function(){
						$('#button-speak-ss').css('display','block');
						$('#button-pause-ss').css('display','none');
						var yahooURL = "https://query.yahooapis.com/v1/public/yql";
						var matchId=$("#liveMatchId").val();
						var comentQuery="select * from cricket.commentary where match_id="+matchId;
						var mailComm="";
						var mailShm="";
						var isLatest="N";
					        document.getElementById('button-speak-ss').addEventListener('click', function(event) {
								$('#button-pause-ss').css('display','block');
								$('#button-speak-ss').css('display','none');
								$('#playPause').html("Pause");
					          event.preventDefault();
							var refreshId = setInterval(function()
							{	//var mailComm="";
								comm="";
										  $.getJSON( yahooURL, {
											q:comentQuery,
											format:"json",
											diagnostics:"true",
											env:"store://0TxIGQMQbObzvU4Apia0V0",
											callback:""
										  })
											.done(function( data ) {
											 mailComm="";
											  $.each( data.query.results.Over, function( i, item ) {
											  
												  $.each( item.Ball, function( i1, ball ) {
													   if((ball.ov-1)>0 && isLatest=="N"){
														  isLatest=ball.ov-1+"."+ball.n;
														  //alert(isLatest + " : " + isMail1);
														  $('#liveScore').html((ball.tl-ball.r)+"/"+ ball.wkts);
														  if(ball.type!="ball"){
															  mailComm=ball.c;
														  }else if(ball.n=="1"){
															  mailComm=(ball.tl-ball.r)+" per "+ ball.wkts+" off "+ball.pis.o+". " +ball.shc+". "+ball.c;  
														  }else{
																mailComm=ball.shc+". "+ball.c;
														  }
														  //mailComm=ball.c;
														  mailShm=ball.shc;
													  }else if((ball.ov-1)>0 && isLatest<(ball.ov-1+"."+ball.n)){
														
														  isLatest=ball.pis.o;
														  $('#liveScore').html((ball.tl-ball.r)+"/"+ ball.wkts);
														  if(ball.type!="ball"){
															  mailComm=ball.c;
														  }else if(ball.n=="1"){
															  mailComm=(ball.tl-ball.r)+" per "+ ball.wkts+" off "+ball.pis.o+". " +ball.shc+". "+ball.c;  
														  }
														  mailShm=ball.shc;
													  }
													  
												  });
					
											  });
										  var u1 = new SpeechSynthesisUtterance(mailComm.replace("<b>", " ").replace("</b>", " ").substring(0,250));
											u1.lang = 'en-US';
											u1.pitch = 10;
											u1.rate = 0.5;
											//u1.voice = voices[10];
											u1.voiceURI = 'native';
											u1.volume = 1;
											speechSynthesis.speak(u1);
										});
									  
							}, 20000);					
					        //});
						 	document.getElementById('button-pause-ss').addEventListener('click', function(event) {
					          	event.preventDefault();
					          	window.speechSynthesis.cancel();
								$('#button-speak-ss').css('display','block');
								$('#button-pause-ss').css('display','none');
								
					        });
				        /*document.getElementById('button-pause-ss').addEventListener('click', function(event) {
				          event.preventDefault();
				          window.speechSynthesis.pause();
				        });*/
				 
                            /*new CirclePlayer(
                                "#jquery_jplayer_1",
                                {
									
                                    mp3:speechSynthesis.speak(u1),
                                    oga:speechSynthesis.speak(u1)
                                },
                                {
                                    cssSelectorAncestor: "#cp_container_1",
                                    swfPath: "/resources/wc/js/jplayer",
                                    supplied: "oga, mp3",
                                    wmode: "window",
                                    smoothPlayBar: false,
                                    keyEnabled: false,
                                    preload: "auto"
                                }
                            );*/
                        });});
                        //]]>
                    </script>
                    <!--/ Circle Player -->

                    <!-- Statistics -->
                    <div class="widget-container widget-stats boxed boxed-transparent">
                        <div class="stats-top">
                            <h6 class="widget-title">Chart positions</h6>
                            <div class="widget-subtitle">2013</div>
                        </div>
                        <div class="stats-content fade-effect">
                            <div id="stats" class="carousel slide" data-interval="20000">
                                <!-- Carousel items -->
                                <div class="carousel-inner">
                                    <div class="active item">
                                        <div id="graph-1" class="graph"></div>
                                        <script type="text/javascript">
                                            google.load("visualization", "1", {packages:["corechart"]});
                                            google.setOnLoadCallback(drawChart);
                                            function drawChart() {
                                                var data = google.visualization.arrayToDataTable([
                                                    ['Month', 'Place', {type: 'string', role: 'tooltip', p: {html:true}}],
                                                    ['Jan',  3, '<strong>3</strong><span>place</span>'],
                                                    ['Feb',  1, '<strong>1</strong><span>place</span>'],
                                                    ['Mar',  5, '<strong>5</strong><span>place</span>'],
                                                    ['Apr',  8, '<strong>8</strong><span>place</span>'],
                                                    ['May',  9, '<strong>9</strong><span>place</span>'],
                                                    ['Jun',  6, '<strong>6</strong><span>place</span>'],
                                                    ['Jul',  3, '<strong>3</strong><span>place</span>'],
                                                    ['Aug',  8, '<strong>8</strong><span>place</span>'],
                                                    ['Sep',  4, '<strong>4</strong><span>place</span>'],
                                                    ['Oct',  2, '<strong>2</strong><span>place</span>'],
                                                    ['Nov',  6, '<strong>6</strong><span>place</span>'],
                                                    ['Dec',  9, '<strong>9</strong><span>place</span>']
                                                ]);

                                                var options = {
                                                    curveType: 'function',
                                                    chartArea:{left:0, top:10, width:"100%"},
                                                    hAxis: {textStyle: {color: 'transparent', fontSize: 0}},
                                                    vAxis: {direction: -1, gridlines: {color: 'transparent', count: 0}, baselineColor: 'transparent'},
                                                    tooltip: {isHtml: true},
                                                    backgroundColor:{fill: 'transparent'},
                                                    series: [{
                                                        color: '#fff',
                                                        visibleInLegend: false,
                                                        pointSize: 4,
                                                        lineWidth: 3,
                                                        areaOpacity: .1
                                                    }]
                                                };

                                                var chart = new google.visualization.LineChart(document.getElementById('graph-1'));
                                                chart.draw(data, options);

                                                $(window).resize(function() {
                                                    chart.clearChart();
                                                    chart.draw(data, options);
                                                });
                                                $('#stats').on('slid.bs.carousel', function () {
                                                    chart.clearChart();
                                                    chart.draw(data, options);
                                                })
                                            }
                                        </script>
                                        <div class="stats-tab-bottom clearfix">
                                            <span class="artist">Passenger</span>
                                            <span class="position"><strong>1</strong>st<em>top<br>position</em></span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div id="graph-2" class="graph"></div>
                                        <script type="text/javascript">
                                            google.load("visualization", "1", {packages:["corechart"]});
                                            google.setOnLoadCallback(drawChart);
                                            function drawChart() {
                                                var data = google.visualization.arrayToDataTable([
                                                    ['Month', 'Place', {type: 'string', role: 'tooltip', p: {html:true}}],
                                                    ['Jan',  9, '<strong>9</strong><span>place</span>'],
                                                    ['Feb',  8, '<strong>8</strong><span>place</span>'],
                                                    ['Mar',  6, '<strong>6</strong><span>place</span>'],
                                                    ['Apr',  4, '<strong>4</strong><span>place</span>'],
                                                    ['May',  3, '<strong>3</strong><span>place</span>'],
                                                    ['Jun',  2, '<strong>2</strong><span>place</span>'],
                                                    ['Jul',  1, '<strong>1</strong><span>place</span>'],
                                                    ['Aug',  2, '<strong>2</strong><span>place</span>'],
                                                    ['Sep',  4, '<strong>4</strong><span>place</span>'],
                                                    ['Oct',  5, '<strong>5</strong><span>place</span>'],
                                                    ['Nov',  8, '<strong>8</strong><span>place</span>'],
                                                    ['Dec',  6, '<strong>6</strong><span>place</span>']
                                                ]);

                                                var options = {
                                                    curveType: 'function',
                                                    chartArea:{left:0, top:10, width:"100%"},
                                                    hAxis: {textStyle: {color: 'transparent', fontSize: 0}},
                                                    vAxis: {direction: -1, gridlines: {color: 'transparent', count: 0}, baselineColor: 'transparent'},
                                                    tooltip: {isHtml: true},
                                                    backgroundColor:{fill: 'transparent'},
                                                    series: [{
                                                        color: '#fff',
                                                        visibleInLegend: false,
                                                        pointSize: 4,
                                                        lineWidth: 3,
                                                        areaOpacity: .1
                                                    }]
                                                };

                                                var chart = new google.visualization.LineChart(document.getElementById('graph-2'));
                                                chart.draw(data, options);

                                                $(window).resize(function() {
                                                    chart.clearChart();
                                                    chart.draw(data, options);
                                                });
                                                $('#stats').on('slid.bs.carousel', function () {
                                                    chart.clearChart();
                                                    chart.draw(data, options);
                                                })
                                            }
                                        </script>
                                        <div class="stats-tab-bottom clearfix">
                                            <span class="artist">Miley Cyrus</span>
                                            <span class="position"><strong>2</strong>d<em>top<br>position</em></span>
                                        </div>
                                    </div>
                                    <div class="item">
                                        <div id="graph-3" class="graph"></div>
                                        <script type="text/javascript">
                                            google.load("visualization", "1", {packages:["corechart"]});
                                            google.setOnLoadCallback(drawChart);
                                            function drawChart() {
                                                var data = google.visualization.arrayToDataTable([
                                                    ['Month', 'Place', {type: 'string', role: 'tooltip', p: {html:true}}],
                                                    ['Jan',  2, '<strong>2</strong><span>place</span>'],
                                                    ['Feb',  4, '<strong>4</strong><span>place</span>'],
                                                    ['Mar',  5, '<strong>5</strong><span>place</span>'],
                                                    ['Apr',  6, '<strong>6</strong><span>place</span>'],
                                                    ['May',  3, '<strong>3</strong><span>place</span>'],
                                                    ['Jun',  1, '<strong>1</strong><span>place</span>'],
                                                    ['Jul',  2, '<strong>2</strong><span>place</span>'],
                                                    ['Aug',  4, '<strong>4</strong><span>place</span>'],
                                                    ['Sep',  8, '<strong>8</strong><span>place</span>'],
                                                    ['Oct',  9, '<strong>9</strong><span>place</span>'],
                                                    ['Nov',  5, '<strong>5</strong><span>place</span>'],
                                                    ['Dec',  4, '<strong>4</strong><span>place</span>']
                                                ]);

                                                var options = {
                                                    curveType: 'function',
                                                    chartArea:{left:0, top:10, width:"100%"},
                                                    hAxis: {textStyle: {color: 'transparent', fontSize: 0}},
                                                    vAxis: {direction: -1, gridlines: {color: 'transparent', count: 0}, baselineColor: 'transparent'},
                                                    tooltip: {isHtml: true},
                                                    backgroundColor:{fill: 'transparent'},
                                                    series: [{
                                                        color: '#fff',
                                                        visibleInLegend: false,
                                                        pointSize: 4,
                                                        lineWidth: 3,
                                                        areaOpacity: .1
                                                    }]
                                                };

                                                var chart = new google.visualization.LineChart(document.getElementById('graph-3'));
                                                chart.draw(data, options);

                                                $(window).resize(function() {
                                                    chart.clearChart();
                                                    chart.draw(data, options);
                                                });
                                                $('#stats').on('slid.bs.carousel', function () {
                                                    chart.clearChart();
                                                    chart.draw(data, options);
                                                })
                                            }
                                        </script>
                                        <div class="stats-tab-bottom clearfix">
                                            <span class="artist">Katy Perry</span>
                                            <span class="position"><strong>3</strong>rd<em>top<br>position</em></span>
                                        </div>
                                    </div>
                                </div>
                                <!-- Carousel nav -->
                                <a class="carousel-control left" href="#stats" data-slide="prev"></a>
                                <a class="carousel-control right" href="#stats" data-slide="next"></a>
                            </div>
                        </div>
                    </div>
                    <!--/ Statistics -->
                </div>
            </div>
            <!--/ row -->

            <!-- row -->
            <div class="row">
                <div class="col-sm-5">
                    <!-- Top 3 Chart -->
                    <div class="widget-container widget-top3chart boxed">
                        <ul class="chart-tab music">
                        <c:forEach var="bat" items="${standings.teams.lT}" varStatus="i">
                        <c:if test="${bat.groupName=='Pool A' && i.count<5 }">
                        <li class="clearfix">
                                <span class="position">${i.count }</span>
                                <div class="chart-avatar"><img src="/resources/wc/_include/img/profile/${bat.name }.png" alt="" /></div>
                                <a href="#" class="chart-title"><strong>${bat.name }</strong>Won ${bat.won }</a>
                                <a href="#" class="chart-like">${bat.points }<i class="icon-small-like"></i></a>
                            </li>
                        </c:if>
                        </c:forEach>
                            <!-- <li class="clearfix">
                                <span class="position">1</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-4.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>Wide Awake</strong>Miley Cyrus</a>
                                <a href="#" class="chart-like">246<i class="icon-small-like"></i></a>
                            </li>
                            <li class="clearfix">
                                <span class="position">2</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-6.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>Bullet proof</strong>Madonna</a>
                                <a href="#" class="chart-like">984<i class="icon-small-like"></i></a>
                            </li>
                            <li class="clearfix">
                                <span class="position">3</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-8.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>She Wolf</strong>Rihanna</a>
                                <a href="#" class="chart-like">896<i class="icon-small-like"></i></a>
                            </li>
							<li class="clearfix">
                                <span class="position">4</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-8.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>She Wolf</strong>Rihanna</a>
                                <a href="#" class="chart-like">896<i class="icon-small-like"></i></a>
                            </li> -->
                        </ul>

                        <ul class="chart-tab video active">
                        <c:forEach var="bat" items="${standings.teams.lT}" varStatus="i">
                        <c:if test="${bat.groupName=='Pool B' && i.count<12 }">
                        <li class="clearfix">
                                <span class="position">${i.count-7 }</span>
                                <div class="chart-avatar"><img src="/resources/wc/_include/img/profile/${bat.name }.png" alt="" /></div>
                                <a href="#" class="chart-title"><strong>${bat.name }</strong>Won ${bat.won }</a>
                                <a href="#" class="chart-like">${bat.points }<i class="icon-small-like"></i></a>
                            </li>
                        </c:if>
                        </c:forEach>
                           <!--  <li class="clearfix">
                                <span class="position">1</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-9.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>She Wolf</strong>Shakira</a>
                                <a href="#" class="chart-like">593<i class="icon-small-like"></i></a>
                            </li>
                            <li class="clearfix">
                                <span class="position">2</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-10.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>Wide Awake</strong>Katy Perry</a>
                                <a href="#" class="chart-like">412<i class="icon-small-like"></i></a>
                            </li>
                            <li class="clearfix">
                                <span class="position">3</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-11.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>Bullet proof</strong>Bruno Mars</a>
                                <a href="#" class="chart-like">360<i class="icon-small-like"></i></a>
                            </li>
							<li class="clearfix">
                                <span class="position">4</span>
                                <div class="chart-avatar"><img src="images/temp/thumb-11.jpg" alt="" /></div>
                                <a href="#" class="chart-title"><strong>Bullet proof</strong>Bruno Mars</a>
                                <a href="#" class="chart-like">360<i class="icon-small-like"></i></a>
                            </li> -->
                        </ul>
                        <ul class="chart-links green clearfix">
                            <li class="text">Top 4</li>
                            <li><a href="javascript:;" class="music"><i class="icon-small-note"></i>Group A</a></li>
                            <li><a href="javascript:;" class="video active"><i class="icon-small-cam"></i>Group B</a></li>
                        </ul>
                    </div>
                    <!--/ Top 3 Chart -->
                </div>

                <div class="col-sm-7">
                    <!-- Video Player -->
                    <div class="widget-container widget-video boxed">
                        <video id="video1" controls preload="auto" poster="images/temp/vjs-poster-4.jpg" class="video-js vjs-styled-skin">
                            <source src="http://vjs.zencdn.net/v/oceans.mp4" type="video/mp4">
                            <source src="http://vjs.zencdn.net/v/oceans.webm" type="video/webm">
                        </video>
                        <script>
                            videojs("video1", {
                                "height": "auto",
                                "width": "auto"
                            }).ready(function() {
                                var myPlayer = this; // Store the video object
                                var aspectRatio = 342 / 536; // Make up an aspect ratio
                                function resizeVideoJS() {
                                    // Get the parent element's actual width
                                    var width = document.getElementById(myPlayer.id()).parentElement.offsetWidth;
                                    // Set width to fill parent element, Set height
                                    myPlayer.width(width).height(width * aspectRatio);
                                }
                                resizeVideoJS(); // Initialize the function
                                window.addEventListener("resize", resizeVideoJS, false); // Call the function on resize
                            });
                        </script>
                    </div>
                    <!--/ Video Player -->
                </div>
            </div>
            <!--/ row -->
        </div>
        <!--/ container -->
    </div>
</div>

</body>
</html>