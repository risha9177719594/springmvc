<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<div id="ref"></div><link href="/resources/bootStrap/css/bootstrap.min.css" rel="stylesheet">
<%-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> --%>
<script
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
	type='text/javascript'></script>
<script
	src="/resources/bootStrap/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
    	<script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6.2/html5shiv.js"></script>
    	<script src="//cdnjs.cloudflare.com/ajax/libs/respond.js/1.2.0/respond.js"></script>
    <![endif]-->
<!-- Add cuscss/sb-admin.csstom CSS here -->

<!-- Page Specific CSS -->

<style>
<!--
.share_pfb:hover,.share_pgo:hover,.share_pli:hover,.share_ptwi:hover {
	color: #fff !important
}

.share_pfb,.share_pgo,.share_pli,.share_ptwi {
	color: #fff;
	float: left;
	padding: 6px 24px;
	border-radius: 3px;
	font-size: 15px;
	line-height: 20px
}

.share_pfb {
	background: #4c66a4
}

.share_ptwi {
	background: #00c3f3
}

.share_pli {
	background: #0274B3
}

.share_pgo {
	background: #DB4A37
}

.rowpost {
	margin: 0 !important;
	padding: 10px 0 6px;
	border-radius: 3px
}

.post-sharing-menu {
	padding: 5px;
	height: 50px
}

.post-sharing-menu li {
	padding: 5px 0;
	display: block;
	float: left;
	margin: 0 10px 0 0 !important;
	margin-right: 5px
}
/* image thumbnail */
.thumb {
	display: block;
	width: 100%;
	margin: 0;
}

/* Style to article Author */
.by-author {
	font-style: italic;
	line-height: 1.3;
	color: #aab6aa;
}

/* Main Article [Module]
-------------------------------------
* Featured Article Thumbnail
* have a image and a text title.
*/
.featured-article {
	width: 482px;
	height: 350px;
	position: relative;
	margin-bottom: 1em;
}

.featured-article .block-title {
	/* Position & Box Model */
	position: absolute;
	bottom: 0;
	left: 0;
	z-index: 1;
	/* background */
	background: rgba(0, 0, 0, 0.7);
	/* Width/Height */
	padding: .5em;
	width: 100%;
	/* Text color */
	color: #fff;
}

.featured-article .block-title h2 {
	margin: 0;
}

/* Featured Articles List [BS3]
--------------------------------------------
* show the last 3 articles post
*/
.main-list {
	padding-left: .5em;
}

.main-list .media {
	padding-bottom: 1.1em;
	border-bottom: 1px solid #e8e8e8;
}

--> 

.square,.btn {
	border-radius: 0px !important;
}

/* -- color classes -- */
.coralbg {
	background-color: #FA396F;
}

.coral {
	color: #FA396f;
}

.turqbg {
	background-color: #46D8D2;
}

.turq {
	color: #46D8D2;
}

.white {
	color: #fff !important;
}

/* -- The "User's Menu Container" specific elements. Custom container for the snippet -- */
div.user-menu-container {
	z-index: 10;
	background-color: #fff;
	margin-top: 20px;
	background-clip: padding-box;
	opacity: 0.97;
	filter: alpha(opacity = 97);
	-webkit-box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
	box-shadow: 0 1px 6px rgba(0, 0, 0, 0.175);
}

div.user-menu-container .btn-lg {
	padding: 0px 12px;
}

div.user-menu-container h4 {
	font-weight: 300;
	color: #8b8b8b;
}

div.user-menu-container a,div.user-menu-container .btn {
	transition: 1s ease;
}

div.user-menu-container .thumbnail {
	width: 100%;
	min-height: 200px;
	border: 0px !important;
	padding: 0px;
	border-radius: 0;
	border: 0px !important;
}

/* -- Vertical Button Group -- */
div.user-menu-container .btn-group-vertical {
	display: block;
}

div.user-menu-container .btn-group-vertical>a {
	padding: 20px 25px;
	background-color: #46D8D2;
	color: white;
	border-color: #fff;
}

div.btn-group-vertical>a:hover {
	color: white;
	border-color: white;
}

div.btn-group-vertical>a.active {
	background: #FA396F;
	box-shadow: none;
	color: white;
}
/* -- Individual button styles of vertical btn group -- */
div.user-menu-btns {
	padding-right: 0;
	padding-left: 0;
	padding-bottom: 0;
}

div.user-menu-btns div.btn-group-vertical>a.active:after {
	content: '';
	position: absolute;
	left: 100%;
	top: 50%;
	margin-top: -13px;
	border-left: 0;
	border-bottom: 13px solid transparent;
	border-top: 13px solid transparent;
	border-left: 10px solid #46D8D2;
}
/* -- The main tab & content styling of the vertical buttons info-- */
div.user-menu-content {
	color: #323232;
}

ul.user-menu-list {
	list-style: none;
	margin-top: 20px;
	margin-bottom: 0;
	padding: 10px;
	border: 1px solid #eee;
}

ul.user-menu-list>li {
	padding-bottom: 8px;
	text-align: center;
}

div.user-menu div.user-menu-content:not (.active ){
	display: none;
}

/* -- The btn stylings for the btn icons -- */
.btn-label {
	position: relative;
	left: -12px;
	display: inline-block;
	padding: 6px 12px;
	background: rgba(0, 0, 0, 0.15);
	border-radius: 3px 0 0 3px;
}

.btn-labeled {
	padding-top: 0;
	padding-bottom: 0;
}

/* -- Custom classes for the snippet, won't effect any existing bootstrap classes of your site, but can be reused. -- */
.user-pad {
	padding: 20px 25px;
}

.no-pad {
	padding-right: 0;
	padding-left: 0;
	padding-bottom: 0;
}

.user-details {
	background: #eee;
	min-height: 333px;
}

.user-image {
	max-height: 200px;
	overflow: hidden;
}

.overview h3 {
	font-weight: 300;
	margin-top: 15px;
	margin: 10px 0 0 0;
}

.overview h4 {
	font-weight: bold !important;
	font-size: 40px;
	margin-top: 0;
}

.view {
	position: relative;
	overflow: hidden;
	margin-top: 10px;
}

.view p {
	margin-top: 20px;
	margin-bottom: 0;
}

.caption {
	position: absolute;
	top: 0;
	right: 0;
	background: rgba(70, 216, 210, 0.44);
	width: 100%;
	height: 100%;
	padding: 2%;
	display: none;
	text-align: center;
	color: #fff !important;
	z-index: 2;
}

.caption a {
	padding-right: 10px;
	color: #fff;
}

.info {
	display: block;
	padding: 10px;
	background: #eee;
	text-transform: uppercase;
	font-weight: 300;
	text-align: right;
}

.info p,.stats p {
	margin-bottom: 0;
}

.stats {
	display: block;
	padding: 10px;
	color: white;
}

.share-links {
	border: 1px solid #eee;
	padding: 15px;
	margin-top: 15px;
}

.square,.btn {
	border-radius: 0px !important;
}

/* -- media query for user profile image -- */
@media ( max-width : 767px) {
	.user-image {
		max-height: 400px;
	}
}

/**
tab view style
*/
@import url(http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700);
/* written by riliwan balogun http://www.facebook.com/riliwan.rabo*/
.board{
    width: 95%;
margin: 60px auto;
background: #fff;
/*box-shadow: 10px 10px #ccc,-10px 20px #ddd;*/
}
.board .nav-tabs {
    position: relative;
    /* border-bottom: 0; */
    /* width: 80%; */
    margin: 40px auto;
    margin-bottom: 0;
    box-sizing: border-box;

}

.board > div.board-inner{
    background: #fafafa url(http://subtlepatterns.com/patterns/geometry2.png);
    background-size: 30%;
}

p.narrow{
    width: 60%;
    margin: 10px auto;
}

.liner{
    height: 2px;
    background: #ddd;
    position: absolute;
    width: 80%;
    margin: 0 auto;
    left: 0;
    right: 0;
    top: 50%;
    z-index: 1;
}

.nav-tabs > li.active > a, .nav-tabs > li.active > a:hover, .nav-tabs > li.active > a:focus {
    color: #555555;
    cursor: default;
    /* background-color: #ffffff; */
    border: 0;
    border-bottom-color: transparent;
}

span.round-tabs{
    width: 70px;
    height: 70px;
    line-height: 70px;
    display: inline-block;
    border-radius: 100px;
    background: white;
    z-index: 2;
    position: absolute;
    left: 0;
    text-align: center;
    font-size: 25px;
}

span.round-tabs.one{
    color: rgb(34, 194, 34);border: 2px solid rgb(34, 194, 34);
}

li.active span.round-tabs.one{
    background: #fff !important;
    border: 2px solid #ddd;
    color: rgb(34, 194, 34);
}

span.round-tabs.two{
    color: #febe29;border: 2px solid #febe29;
}

li.active span.round-tabs.two{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #febe29;
}

span.round-tabs.three{
    color: #3e5e9a;border: 2px solid #3e5e9a;
}

li.active span.round-tabs.three{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #3e5e9a;
}

span.round-tabs.four{
    color: #f1685e;border: 2px solid #f1685e;
}

li.active span.round-tabs.four{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #f1685e;
}

span.round-tabs.five{
    color: #999;border: 2px solid #999;
}

li.active span.round-tabs.five{
    background: #fff !important;
    border: 2px solid #ddd;
    color: #999;
}

.nav-tabs > li.active > a span.round-tabs{
    background: #fafafa;
}
.nav-tabs > li {
    width: 20%;
}
/*li.active:before {
    content: " ";
    position: absolute;
    left: 45%;
    opacity:0;
    margin: 0 auto;
    bottom: -2px;
    border: 10px solid transparent;
    border-bottom-color: #fff;
    z-index: 1;
    transition:0.2s ease-in-out;
}*/
li:after {
    content: " ";
    position: absolute;
    left: 45%;
   opacity:0;
    margin: 0 auto;
    bottom: 0px;
    border: 5px solid transparent;
    border-bottom-color: #ddd;
    transition:0.1s ease-in-out;
    
}
li.active:after {
    content: " ";
    position: absolute;
    left: 45%;
   opacity:1;
    margin: 0 auto;
    bottom: 0px;
    border: 10px solid transparent;
    border-bottom-color: #ddd;
    
}
.nav-tabs > li a{
   width: 70px;
   height: 70px;
   margin: 20px auto;
   border-radius: 100%;
   padding: 0;
}

.nav-tabs > li a:hover{
    background: transparent;
}

.tab-content{
}
.tab-pane{
   position: relative;
padding-top: 50px;
}
.tab-content .head{
    font-family: 'Roboto Condensed', sans-serif;
    font-size: 25px;
    text-transform: uppercase;
    padding-bottom: 10px;
}
.btn-outline-rounded{
    padding: 10px 40px;
    margin: 20px 0;
    border: 2px solid transparent;
    border-radius: 25px;
}

.btn.green{
    background-color:#5cb85c;
    /*border: 2px solid #5cb85c;*/
    color: #ffffff;
}


@media( max-width : 585px ){
    
    .board {
width: 90%;
height:auto !important;
}
    span.round-tabs {
        font-size:16px;
width: 50px;
height: 50px;
line-height: 50px;
    }
    .tab-content .head{
        font-size:20px;
        }
    .nav-tabs > li a {
width: 50px;
height: 50px;
line-height:50px;
}

li.active:after {
content: " ";
position: absolute;
left: 35%;
}

.btn-outline-rounded {
    padding:12px 20px;
    }
}


/**
tab view style
*/
/**event list css
*/.event-list {
		list-style: none;
		font-family: 'Lato', sans-serif;
		margin: 0px;
		padding: 0px;
	}
	.event-list > li {
		background-color: rgb(255, 255, 255);
		box-shadow: 0px 0px 5px rgb(51, 51, 51);
		box-shadow: 0px 0px 5px rgba(51, 51, 51, 0.7);
		padding: 0px;
		margin: 0px 0px 20px;
	}
	.event-list > li > time {
		display: inline-block;
		width: 100%;
		color: rgb(255, 255, 255);
		background-color: rgb(197, 44, 102);
		padding: 5px;
		text-align: center;
		text-transform: uppercase;
	}
	.event-list > li:nth-child(even) > time {
		background-color: rgb(165, 82, 167);
	}
	.event-list > li > time > span {
		display: none;
	}
	.event-list > li > time > .day {
		display: block;
		font-size: 56pt;
		font-weight: 100;
		line-height: 1;
	}
	.event-list > li time > .month {
		display: block;
		font-size: 24pt;
		font-weight: 900;
		line-height: 1;
	}
	.event-list > li > img {
		width: 100%;
	}
	.event-list > li > .info {
		padding-top: 5px;
		text-align: center;
	}
	.event-list > li > .info > .title {
		font-size: 17pt;
		font-weight: 700;
		margin: 0px;
	}
	.event-list > li > .info > .desc {
		font-size: 13pt;
		font-weight: 300;
		margin: 0px;
	}
	.event-list > li > .info > ul,
	.event-list > li > .social > ul {
		display: table;
		list-style: none;
		margin: 10px 0px 0px;
		padding: 0px;
		width: 100%;
		text-align: center;
	}
	.event-list > li > .social > ul {
		margin: 0px;
	}
	.event-list > li > .info > ul > li,
	.event-list > li > .social > ul > li {
		display: table-cell;
		cursor: pointer;
		color: rgb(30, 30, 30);
		font-size: 11pt;
		font-weight: 300;
        padding: 3px 0px;
	}
    .event-list > li > .info > ul > li > a {
		display: block;
		width: 100%;
		color: rgb(30, 30, 30);
		text-decoration: none;
	} 
    .event-list > li > .social > ul > li {    
        padding: 0px;
    }
    .event-list > li > .social > ul > li > a {
        padding: 3px 0px;
	} 
	.event-list > li > .info > ul > li:hover,
	.event-list > li > .social > ul > li:hover {
		color: rgb(30, 30, 30);
		background-color: rgb(200, 200, 200);
	}
	.facebook a,
	.twitter a,
	.google-plus a {
		display: block;
		width: 100%;
		color: rgb(75, 110, 168) !important;
	}
	.twitter a {
		color: rgb(79, 213, 248) !important;
	}
	.google-plus a {
		color: rgb(221, 75, 57) !important;
	}
	.facebook:hover a {
		color: rgb(255, 255, 255) !important;
		background-color: rgb(75, 110, 168) !important;
	}
	.twitter:hover a {
		color: rgb(255, 255, 255) !important;
		background-color: rgb(79, 213, 248) !important;
	}
	.google-plus:hover a {
		color: rgb(255, 255, 255) !important;
		background-color: rgb(221, 75, 57) !important;
	}

	@media (min-width: 768px) {
		.event-list > li {
			position: relative;
			display: block;
			width: 100%;
			height: 120px;
			padding: 0px;
		}
		.event-list > li > time,
		.event-list > li > img  {
			display: inline-block;
		}
		.event-list > li > time,
		.event-list > li > img {
			width: 120px;
			float: left;
		}
		.event-list > li > .info {
			background-color: rgb(245, 245, 245);
			overflow: hidden;
		}
		.event-list > li > time,
		.event-list > li > img {
			width: 120px;
			height: 120px;
			padding: 0px;
			margin: 0px;
		}
		.event-list > li > .info {
			position: relative;
			height: 120px;
			text-align: left;
			padding-right: 40px;
		}	
		.event-list > li > .info > .title, 
		.event-list > li > .info > .desc {
			padding: 0px 10px;
		}
		.event-list > li > .info > ul {
			position: absolute;
			left: 0px;
			bottom: 0px;
		}
		.event-list > li > .social {
			position: absolute;
			top: 0px;
			right: 0px;
			display: block;
			width: 40px;
		}
        .event-list > li > .social > ul {
            border-left: 1px solid rgb(230, 230, 230);
        }
		.event-list > li > .social > ul > li {			
			display: block;
            padding: 0px;
		}
		.event-list > li > .social > ul > li > a {
			display: block;
			width: 40px;
			padding: 10px 0px 9px;
		}
	}
/**
event list css
*/
/**
captain pofile css
*/
.login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

#output{
    position: absolute;
    width: 300px;
    top: -75px;
    left: 0;
    color: #fff;
}

#output.alert-success{
    background: rgb(25, 204, 25);
}

#output.alert-danger{
    background: rgb(228, 105, 105);
}


.login-container::before,.login-container::after{
    content: "";
    position: absolute;
    width: 100%;height: 100%;
    top: 3.5px;left: 0;
    background: #fff;
    z-index: -1;
    -webkit-transform: rotateZ(4deg);
    -moz-transform: rotateZ(4deg);
    -ms-transform: rotateZ(4deg);
    border: 1px solid #ccc;

}

.login-container::after{
    top: 5px;
    z-index: -2;
    -webkit-transform: rotateZ(-2deg);
     -moz-transform: rotateZ(-2deg);
      -ms-transform: rotateZ(-2deg);

}

.avatar{
    width: 100px;height: 100px;
    margin: 10px auto 30px;
    border-radius: 100%;
    border: 2px solid #aaa;
    background-size: cover;
}

.form-box input{
    width: 100%;
    padding: 10px;
    text-align: center;
    height:40px;
    border: 1px solid #ccc;;
    background: #fafafa;
    transition:0.2s ease-in-out;

}

.form-box input:focus{
    outline: 0;
    background: #eee;
}

.form-box input[type="text"]{
    border-radius: 5px 5px 0 0;
    text-transform: lowercase;
}

.form-box input[type="password"]{
    border-radius: 0 0 5px 5px;
    border-top: 0;
}

.form-box button.login{
    margin-top:15px;
    padding: 10px 20px;
}

.animated {
  -webkit-animation-duration: 1s;
  animation-duration: 1s;
  -webkit-animation-fill-mode: both;
  animation-fill-mode: both;
}

@-webkit-keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    transform: translateY(0);
  }
}

@keyframes fadeInUp {
  0% {
    opacity: 0;
    -webkit-transform: translateY(20px);
    -ms-transform: translateY(20px);
    transform: translateY(20px);
  }

  100% {
    opacity: 1;
    -webkit-transform: translateY(0);
    -ms-transform: translateY(0);
    transform: translateY(0);
  }
}

.fadeInUp {
  -webkit-animation-name: fadeInUp;
  animation-name: fadeInUp;
}
/**
captian css
*/
</style>

	
	<div id="row">
		<section style="background: #efefe9;">
			<div class="container">
				<div class="row">
					<div class="board">
						<!-- <h2>Welcome to IGHALO!<sup></sup></h2>-->
						<div class="board-inner">
							<ul class="nav nav-tabs" id="myTab">
								<div class="liner"></div>
								<li class="active"><a href="#home" data-toggle="tab"
									title="welcome"> <span class="round-tabs one"> <i
											class="fa fa-home"></i>
									</span>
								</a></li>

								<li><a href="#profile" data-toggle="tab" title="Captain">
										<span class="round-tabs two"> <i
											class="fa fa-user"></i>
									</span>
								</a></li>
								<li><a href="#messages" data-toggle="tab"
									title="bootsnipp goodies"> <span class="round-tabs three">
											<i class="fa fa-gift"></i>
									</span>
								</a></li>

								<li><a href="#events" data-toggle="tab" title="Events">
										<span class="round-tabs four"> <i
											class="fa fa-calendar"></i>
									</span>
								</a></li>

								<li><a href="#team" data-toggle="tab" title="Team">
										<span class="round-tabs five"> <i
											class="fa fa-ok"></i>
									</span>
								</a></li>

							</ul>
						</div>

						<div class="tab-content">
							<div class="tab-pane fade in active" id="home">

								<h3 class="head text-center">
									${team.teamProfile.teamName }<sup></sup> <span style="color: #f48260;"></span>
								</h3>
								<p class="narrow text-center">${fn:replace(team.teamProfile.description, 
                                '<p>', ' ')}</p>

								<p class="text-center">
									<a href="http://www.facebook.com/sharer.php?u=http://www.scoreit.in/cricket/teamId/${team.teamProfile.teamId}&amp;t=${team.teamProfile.teamName }" class="btn btn-success btn-outline-rounded green">
										facebook <span style="margin-left: 10px;"
										class="glyphicon glyphicon-send"></span>
									</a><a href="http://twitter.com/intent/tweet?text=${team.teamProfile.teamName }&amp;url=http://www.scoreit.in/cricket/teamId/${team.teamProfile.teamId}" class="btn btn-success btn-outline-rounded green">
										twitter <span style="margin-left: 10px;"
										class="glyphicon glyphicon-send"></span>
									</a>
								</p>
							</div>
							<div class="tab-pane fade" id="profile">
								<h3 class="head text-center">
									Captain<sup></sup> Profile
								</h3>
								<c:forEach items="${team.teamProfile.captain }" var="cap">
								<div class="login-container">
            <div id="output"></div>
            <img src="http://www.iconshock.com/img_jpg/BRILLIANT/sports/jpg/256/cricket_helmet_icon.jpg" class="avatar"/>
            <div class="form-box">
                <form action="" method=""><fieldset disabled>
                    <input name="user" type="text" placeholder="firstName" value="${cap.firstName }" read-only>
                    <input type="text" placeholder="lastName" value="${cap.lastName }" read-only>
                    <button class="btn btn-info btn-block login" type="submit">${cap.mtype }</button></fieldset>
                </form>
            </div>
        </div>
								</c:forEach>
								<p class="narrow text-center">Lorem ipsum dolor sit amet,
									his ea mollis fabellas principes. Quo mazim facilis tincidunt
									ut, utinam saperet facilisi an vim.</p>

								<p class="text-center">
									<a href="" class="btn btn-success btn-outline-rounded green">
										create your profile <span style="margin-left: 10px;"
										class="glyphicon glyphicon-send"></span>
									</a>
								</p>

							</div>
							<div class="tab-pane fade" id="messages">
								<h3 class="head text-center">Bootsnipp goodies</h3>
								<p class="narrow text-center">Lorem ipsum dolor sit amet,
									his ea mollis fabellas principes. Quo mazim facilis tincidunt
									ut, utinam saperet facilisi an vim.</p>

								<p class="text-center">
									<a href="" class="btn btn-success btn-outline-rounded green">
										start using bootsnipp <span style="margin-left: 10px;"
										class="glyphicon glyphicon-send"></span>
									</a>
								</p>
							</div>
							<div class="tab-pane fade" id="events">
								<!-- events  -->
								<div class="row">
			<div class="[ col-xs-12 col-sm-offset-2 col-sm-8 ]">
				<ul class="event-list">
					<c:forEach var="matchFix" items="${fixturesP.match}" varStatus="i">	
					<c:if test="${not empty matchFix}">
					<c:forEach var="entry" items="${matchFix.result.team}">
					<c:if test="${entry.id == team.teamProfile.teamId}">
					
						<li>
						<time datetime="2014-07-20">
						<c:set var="string1" value="${matchFix.startDate}"/>
						<c:set var="day" value="${fn:substring(string1, 8, 10)}" />
						<c:set var="month" value="${fn:substring(string1, 5, 7)}" />
						<c:set var="year" value="${fn:substring(string1,0, 4)}" />
						<c:set var="time" value="${fn:substring(string1, 12, 13) + fn:substring(string1, 21, 22)}" />
						<c:set var="time1" value="${fn:substring(string1, 15, 16) + fn:substring(string1, 23, 24)}" />
						
							<span class="day">${day}</span>
							<span class="month">${month }</span>
							<span class="year">${year }</span>
							<span class="time">${time }:${time1 }</span>
						</time>
						<c:if test="${entry.matchwon=='yes'}">
							<img alt="Independence Day" src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg" />
						</c:if>
						
						<div class="info">
							<h2 class="title">${matchFix.matchNo} <c:if test="${entry.matchwon=='yes'}">
																<i class="fa fa-trophy"></i>
															</c:if></h2>
							<p class="desc">${matchFix.series_name} <c:forEach var="entry1" items="${matchFix.team}">
														${entry1.team}
															<c:if test="${entry1.matchwon=='yes'}">
																 - won the match<i class="fa fa-trophy"></i>
															</c:if>
													</c:forEach></p>
													<ul>
								<li style="width:100%;"><a href="/cricket/id/${matchFix.matchid}"target="_blank"><span class="fa fa-globe"></span> Website</a></li>
								<%-- <li style="width:50%;"><span class="fa fa-money"></span> $39.99</li> --%>
							</ul>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="http://www.facebook.com/sharer.php?u=http://www.scoreit.in/cricket/id/${matchFix.matchid}&amp;t=${team.teamProfile.description }"
							target="_blank"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="http://twitter.com/intent/tweet?text=${team.teamProfile.description }&amp;url=http://www.scoreit.in/cricket/id/${matchFix.matchid}"
							target="_blank"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>
						
						
					</c:if>
					</c:forEach>
					</c:if>
					</c:forEach>
					<c:forEach var="matchFix" items="${fixturesF.match}" varStatus="i">	
					<c:if test="${not empty matchFix}">
					<c:forEach var="entry" items="${matchFix.team}">
					<c:if test="${entry.teamid == team.teamProfile.teamId}">
					
						<li>
						<time datetime="2014-07-20">
						<c:set var="string1" value="${matchFix.startDate}"/>
						<c:set var="day" value="${fn:substring(string1, 8, 10)}" />
						<c:set var="month" value="${fn:substring(string1, 5, 7)}" />
						<c:set var="year" value="${fn:substring(string1,0, 4)}" />
						<c:set var="time" value="${fn:substring(string1, 12, 13) + fn:substring(string1, 21, 22)}" />
						<c:set var="time1" value="${fn:substring(string1, 15, 16) + fn:substring(string1, 23, 24)}" />
						
							<span class="day">${day}</span>
							<span class="month">${month }</span>
							<span class="year">${year }</span>
							<span class="time">${time }:${time1 }</span>
						</time>
						<c:if test="${entry.matchwon=='yes'}">
							<img alt="Independence Day" src="https://farm4.staticflickr.com/3100/2693171833_3545fb852c_q.jpg" />
						</c:if>
						
						<div class="info">
							<h2 class="title">${matchFix.matchNo} <c:if test="${entry.matchwon=='yes'}">
																<i class="fa fa-trophy"></i>
															</c:if></h2>
							<p class="desc">${matchFix.series_name} <c:forEach var="entry1" items="${matchFix.team}">
														${entry1.team}
															<c:if test="${entry1.matchwon=='yes'}">
																 - won the match<i class="fa fa-trophy"></i>
															</c:if>
													</c:forEach></p>
													<ul>
								<li style="width:100%;"><a href="/cricket/id/${matchFix.matchid}"target="_blank"><span class="fa fa-globe"></span> Website</a></li>
								<%-- <li style="width:50%;"><span class="fa fa-money"></span> $39.99</li> --%>
							</ul>
						</div>
						<div class="social">
							<ul>
								<li class="facebook" style="width:33%;"><a href="http://www.facebook.com/sharer.php?u=http://www.scoreit.in/cricket/id/${matchFix.matchid}&amp;t=${team.teamProfile.description }"
							target="_blank"><span class="fa fa-facebook"></span></a></li>
								<li class="twitter" style="width:34%;"><a href="http://twitter.com/intent/tweet?text=${team.teamProfile.description }&amp;url=http://www.scoreit.in/cricket/id/${matchFix.matchid}"
							target="_blank"><span class="fa fa-twitter"></span></a></li>
								<li class="google-plus" style="width:33%;"><a href="#google-plus"><span class="fa fa-google-plus"></span></a></li>
							</ul>
						</div>
					</li>
						
						
					</c:if>
					</c:forEach>
					</c:if>
					</c:forEach>

					
				</ul>
			</div>
		</div>
								<!-- events  -->
							</div>
							<div class="tab-pane fade" id="doner">
								<div class="text-center">
									<i class="img-intro icon-checkmark-circle"></i>
								</div>
								<h3 class="head text-center">
									thanks for staying tuned! <span style="color: #f48260;"></span>
									Bootstrap
								</h3>
								<p class="narrow text-center">Lorem ipsum dolor sit amet,
									his ea mollis fabellas principes. Quo mazim facilis tincidunt
									ut, utinam saperet facilisi an vim.</p>
							</div>
							<div class="tab-pane fade" id="team">
						<link
							href="http://fontawesome.io/assets/font-awesome/css/font-awesome.css"
							rel="stylesheet" media="screen"/><!-- query.getResults().getTeamProfile().getPlayers().getPlayer()  -->
						<c:forEach var="prof" items="${team.teamProfile.pf }">

							<div class="col-md-2">
													<div class="view">
														<div class="caption">
															<p>47LabsDesign</p>
															<a href="" rel="tooltip" title="Appreciate"><span
																class="fa fa-heart-o fa-2x"></span></a> <a href=""
																rel="tooltip" title="View"><span
																class="fa fa-search fa-2x"></span></a>
														</div>
														<img src="${prof.personalDetails.playerLargeImgName }" width="200" height="200"
															class="img-responsive">
													</div>
													<div class="info">
														<p class="small" style="text-overflow: ellipsis">${prof.personalDetails.firstName }</p>
														<p class="small coral text-right">
															<i class="fa fa-arrow-right-o"></i>${prof.personalDetails.lastName }</small>
													</div>
													<%-- <div class="stats turqbg">
														<span class="fa fa-heart-o"> <strong>47</strong></span> <span
															class="fa fa-eye pull-right"> <strong>137</strong></span>
													</div> --%>
												</div>
						</c:forEach>

					</div>
							<div class="clearfix"></div>
						</div>

					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- /#wrapper -->
	<!-- JavaScript -->
<script type="text/javascript">
$(function(){
	$('a[title]').tooltip();
	});
</script>
	<!-- Page Specific Plugins -->