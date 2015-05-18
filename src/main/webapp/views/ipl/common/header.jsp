<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<script type="text/javascript">
$(document).ready(function()
	    { 
	        /* $.ajaxSetup(
	        {
	            cache: false,
	            beforeSend: function() {
	                //$('#liveCom').hide();
	                //$('#loading').show();
	            },
	            complete: function() {
	                //$('#loading').hide();
	                $('#liveCom').show();
	            },
	            success: function() {
	                //$('#loading').hide();
	                $('#liveCom').show();
	            }
	        }); */
	        var notIf=0;
	        var notIfint=0;
	        var notNum=0;
	        
	        var refreshId = setInterval(function() {
		
		  var flickerAPI = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.commentary%20where%20match_id%3D"+${liveId }+"&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=";
		  $.getJSON( flickerAPI, {
		    tags: "mount rainier",
		    tagmode: "any",
		    format: "json"
		  })
		  .done(function( data ) {
              notIf=0;
                $.each(data.query.results.Over, function(i1,over){
                        $.each(over.Ball, function(i2,ball){
                                if(notIfint ==0 || notIfint < over.num+"."+ball.n){
                                        notNum++;
                                $("#notNum").html(notNum);
                                if(notIf==0){
                                        notIfint=over.num+"."+ball.n;
                                        notIf=over.num+"."+ball.n;
                                        if(ball.c.indexOf("<b>")){
                                                $( "#not" ).html(
                                                              "<li>"+
                                      "<a href='/ipl/id/${liveId }'>"+
                                          "<div>"+
                                              "<strong>"+notIf+"</strong>"+
                                              "<span class='pull-right text-muted'>"+
                                                  "<em>"+ball.r+"</em>"+
                                              "</span>"+
                                          "</div>"+
                                          "<div>"+ball.c.substring(0, 100)+"... </div>"+
                                      "</a>"+
                                  "</li>"+
                                  "<li class='divider'></li>"+$( "#not" ).html());

                                        }

                                }else if(over.num+"."+ball.n != notIf){
                                        notIf=over.num+"."+ball.n;
                                        if(ball.c.indexOf("<b>")){
                                                $( "#not" ).html($( "#not" ).html()+
                                                              "<li>"+
                                      "<a href='#'>"+
                                          "<div>"+
                                              "<strong>"+notIf+"</strong>"+
                                              "<span class='pull-right text-muted'>"+
                                                  "<em>"+ball.r+"</em>"+
                                              "</span>"+
                                          "</div>"+
                                          "<div>"+ball.c.substring(0, 100)+"... </div>"+
                                      "</a>"+
                                  "</li>"+
                                  "<li class='divider'></li>");

                                        }
                                }else{
                                        notIf=over.num+"."+ball.n;
                                }}

                        });

                });


          });
      }, 5000)();
  });
</script>
<style>
<!--
/* ==================================================
   Header
================================================== */

header {
	width: 100%;
	z-index: 99;
}

header .sticky-nav {
	position: relative;
	width: 100%;
	height: 60px;
	background: #26292E;
	z-index: 1001;
	
	-webkit-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);
	-moz-box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.25);
}

header .sticky-nav.stuck {
	position: fixed;
	top: 0;
	left: 0;
	z-index: 1001;
}

header #logo {
	color: #FFFFFF;
	float: left;
	padding: 15px 0;
	margin-left: 20px;
}

header #logo a {
	background: url(/resources/wc/_include/img/logo.png) no-repeat;
	width: 96px;
	height: 30px;
	text-indent: -9999px;
	display: block;
	opacity: 1;
	filter: alpha(opacity=100);
	
	-webkit-transition: opacity 0.25s ease-in-out 0s;	
	   -moz-transition: opacity 0.25s ease-in-out 0s;
		 -o-transition: opacity 0.25s ease-in-out 0s;
		    transition: opacity 0.25s ease-in-out 0s;	
}

header #logo a:hover {
	opacity: 0.65;
	filter: alpha(opacity=65);	
}

nav#menu {
	float: right;
	margin-right: 20px;
}

nav#menu #menu-nav {
	margin: 0;
	padding: 0;	
}

nav#menu #menu-nav li {
	list-style: none;
	display: inline-block;
	margin-left: 50px;	
}

nav#menu #menu-nav li:first-child {
	margin-left: 0;	
}

nav#menu #menu-nav li a {
	color: #FFFFFF;
	font-size: 16px;
	font-weight: 300;
	line-height: 60px;
	display: block;
	text-transform: uppercase;
}

nav#menu #menu-nav li.current a,
nav#menu #menu-nav li a:hover {
	color: #DE5E60;
}


/* ==================================================
   Mobile Navigation
================================================== */

#mobile-nav {
	display: none;	
}

.menu-nav {
	background:url(/resources/wc/_include/img/menu-mobile.png) 0 0 no-repeat;
	width: 16px;
	height: 16px;
	display: block;
	margin: 22px 0 0 0;
	
	-webkit-transform: rotate(0deg);
	   -moz-transform: rotate(0deg);
		-ms-transform: rotate(0deg);
		 -o-transform: rotate(0deg);
			transform: rotate(0deg);
	
	-webkit-transition: -webkit-transform 250ms ease-out 0s;	
	   -moz-transition: -moz-transform 250ms ease-out 0s;
		 -o-transition: -o-transform 250ms ease-out 0s;
		    transition: transform 250ms ease-out 0s;
}

.menu-nav.open {
	background-position: 0 -16px;
		  
	-webkit-transform: rotate(-180deg);
	   -moz-transform: rotate(-180deg);
		-ms-transform: rotate(-180deg);
		 -o-transform: rotate(-180deg);
			transform: rotate(-180deg);
	
	-webkit-transition: -webkit-transform 250ms ease-out 0s;	
	   -moz-transition: -moz-transform 250ms ease-out 0s;
		 -o-transition: -o-transform 250ms ease-out 0s;
		    transition: transform 250ms ease-out 0s;	
}

#navigation-mobile {
	display: none;
	text-align: center;
	width: 100%;
	background: #26292E;	
	border-bottom: 1px solid #2F3238;
	position: relative;
	float: left;
	z-index: 9999;
}

#navigation-mobile li {
	list-style: none;
	border-top: 1px solid #2F3238;
}

#navigation-mobile li a{
	display: block;
	font-size: 16px;
	text-transform: uppercase;
	padding: 20px 0;
}

/* Controls Bar
----------------------------*/
#controls-wrapper1 { margin:0 auto; height:42px; width:100%; bottom:0px; left:0; z-index:4; background:url(/resources/wc/_include/img/nav-bg.png) repeat-x; position:fixed; }
#navigation { float:right; margin:0px 20px 0 0; }

-->
</style>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button class="navbar-toggle" data-target=".navbar-collapse"
				data-toggle="collapse" type="button">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="/cricket/" ><img src="/resources/img/scoreItLogo1.png"/></a>
		</div>
		<div class="navbar-collapse collapse">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#"><i class="fa fa-home"></i>Home</a></li>
				<li><a href="#aboutUs">About</a></li>
				<li><a href="/cricket/blog">Blog</a></li>
				<li><a href="#contact">Contact</a></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Live Streaming<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a href="/cricket/liveStream/6">ESPN</a></li>
						<li><a
							href="/cricket/liveStream/5">Star Sports</a></li>
						<li><a
							href="/cricket/liveStream/4">Star Cricket</a></li>
						<li><a
							href="/cricket/liveStream/1">Set Six</a></li>
						<li><a
							href="/cricket/liveStream/2">Set Max</a></li>
						<li><a
							href="/cricket/liveStream/3">Tensprots</a></li>
					</ul></li>
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">T20 Fever<b class="caret"></b></a>
					<ul class="dropdown-menu">
						<li><a
							href="/clt20/">CLT20 2014</a></li>
						<li><a href="/cricket/ipl/">IPL 2014</a></li>
						<li><a href="/ipl/2015">IPL 2015</a></li>
						
					</ul></li>
			</ul>
			<ul class="nav navbar-top-links navbar-right">
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-bell fa-fw"></i><span class="badge"><div id="notNum">0</div></span>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-messages" id="not">
                        
                                 
                        <li>
                            <a class="text-center" href="#">
                                <strong>Read All Messages</strong>
                                <i class="fa fa-angle-right"></i>
                            </a>
                        </li>
                    </ul>
                    <!-- /.dropdown-messages -->
                </li>
                
               <!-- 
                <li class="dropdown">
                    <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="fa fa-user fa-fw"></i>  <i class="fa fa-caret-down"></i>
                    </a>
                    <ul class="dropdown-menu dropdown-user">
                        <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                        </li>
                        <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                        </li>
                    </ul>
                    /.dropdown-user
                </li> -->
                <!-- /.dropdown -->
            </ul>
		</div>
	</div>
</div>
<header>
<style>
/* ==================================================
   Mobile Navigation
================================================== */

#mobile-nav {
	display: none;	
}

.menu-nav {
	background:url(/resources/wc/_include/img/menu-mobile.png) 0 0 no-repeat;
	width: 16px;
	height: 16px;
	display: block;
	margin: 22px 0 0 0;
	
	-webkit-transform: rotate(0deg);
	   -moz-transform: rotate(0deg);
		-ms-transform: rotate(0deg);
		 -o-transform: rotate(0deg);
			transform: rotate(0deg);
	
	-webkit-transition: -webkit-transform 250ms ease-out 0s;	
	   -moz-transition: -moz-transform 250ms ease-out 0s;
		 -o-transition: -o-transform 250ms ease-out 0s;
		    transition: transform 250ms ease-out 0s;
}

.menu-nav.open {
	background-position: 0 -16px;
		  
	-webkit-transform: rotate(-180deg);
	   -moz-transform: rotate(-180deg);
		-ms-transform: rotate(-180deg);
		 -o-transform: rotate(-180deg);
			transform: rotate(-180deg);
	
	-webkit-transition: -webkit-transform 250ms ease-out 0s;	
	   -moz-transition: -moz-transform 250ms ease-out 0s;
		 -o-transition: -o-transform 250ms ease-out 0s;
		    transition: transform 250ms ease-out 0s;	
}

#navigation-mobile {
	display: none;
	text-align: center;
	width: 100%;
	background: #26292E;	
	border-bottom: 1px solid #2F3238;
	position: relative;
	float: left;
	z-index: 9999;
}

#navigation-mobile li {
	list-style: none;
	border-top: 1px solid #2F3238;
}

#navigation-mobile li a{
	display: block;
	font-size: 16px;
	text-transform: uppercase;
	padding: 20px 0;
}


</style>

</header>