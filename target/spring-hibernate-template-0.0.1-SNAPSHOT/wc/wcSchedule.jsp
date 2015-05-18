<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="/resources/wc/_include/css/main.css" rel="stylesheet">


<html>
  <head>
    <!-- Bootstrap core CSS -->
    <link href="/resources/wc/_include/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/resources/wc/_include/css/soon.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="assets/js/html5shiv.js"></script>
      <script src="assets/js/respond.min.js"></script>
    <![endif]-->
    
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700' rel='stylesheet' type='text/css'>

  </head>
  <!-- START BODY -->
  <body class="nomobile">

    <!-- START HEADER -->
    <section id="header">
        <div class="container span10">
        <div class="row">
            <header>
                <!-- HEADLINE -->
                <h1 data-animated="GoIn"> ${sc.team1 } </h1>   
                <p><img src="/resources/wc/_include/img/profile/${sc.team1 }.png" width="100px"> v/s
                <img src="/resources/wc/_include/img/profile/${sc.team2 }.png" width="100px"></p> 
                <h1 data-animated="GoIn">${sc.team2 }</h1>
            </header>
            <!-- START TIMER -->
            <div id="timer" data-animated="FadeIn">
                <p id="message"></p>
                <div id="days" class="timer_box"></div>
                <div id="hours" class="timer_box"></div>
                <div id="minutes" class="timer_box"></div>
                <div id="seconds" class="timer_box"></div>
            </div>
            <!-- END TIMER -->
            <div class="col-lg-4 col-lg-offset-4 mt centered">
            	<h4>${sc.date } - ${sc.time } @ ${sc.place }</h4>
				<!-- <form class="form-inline" role="form">
				  <div class="form-group">
				    <label class="sr-only" for="exampleInputEmail2">Email address</label>
				    <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Enter email">
				  </div>
				  <button type="submit" class="btn btn-info">Submit</button>
				</form>     -->        
			</div>
            </div>
        </div>
        <!-- LAYER OVER THE SLIDER TO MAKE THE WHITE TEXTE READABLE -->
        <div id="layer"></div>
        <!-- END LAYER -->
        <!-- START SLIDER -->
        <div id="slider" class="rev_slider">
            <ul>
              <li data-transition="slideleft" data-slotamount="1" data-thumb="assets/img/slider/1.jpg">
                <img src="/resources/wc/_include/img/slider-images/image04.jpg">
              </li>
            </ul>
        </div>
        <!-- END SLIDER -->
    </section>
    <!-- END HEADER -->

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<!--<script type="text/javascript" src="assets/js/modernizr.custom.js"></script>-->
    <script src="/resources/wc/_include/js/bootstrap.min.js"></script>
    <script src="/resources/wc/_include/js/soon/plugins.js"></script>
    <!--<script src="assets/js/soon/jquery.themepunch.revolution.min.js"></script>-->
    <script type="text/javascript">
    /******************************************************************************************************************************
    COMMING SOON PAGE
    *******************************************************************************************************************************/
    (function($) {
        /**
        * Set your date here  (YEAR, MONTH (0 for January/11 for December), DAY, HOUR, MINUTE, SECOND)
        * according to the GMT+0 Timezone
        **/
        var launch = new Date(2015, ${sc.date2-1}, ${sc.date1}, ${sc.time1}, ${sc.time2});
        /**
        * The script
        **/
        var message = $('#message');
        var days = $('#days');
        var hours = $('#hours');
        var minutes = $('#minutes');
        var seconds = $('#seconds');
        
        setDate();
        function setDate(){
            var now = new Date();
            if( launch < now ){
                days.html('<h1>0</H1><p>Day</p>');
                hours.html('<h1>0</h1><p>Hour</p>');
                minutes.html('<h1>0</h1><p>Minute</p>');
                seconds.html('<h1>0</h1><p>Second</p>');
                message.html('MATCH WILL BE COMMING SOON');
            }
            else{
                var s = -now.getTimezoneOffset()*60 + (launch.getTime() - now.getTime())/1000;
                var d = Math.floor(s/86400);
                days.html('<h1>'+d+'</h1><p>Day'+(d>1?'s':''),'</p>');
                s -= d*86400;

                var h = Math.floor(s/3600);
                hours.html('<h1>'+h+'</h1><p>Hour'+(h>1?'s':''),'</p>');
                s -= h*3600;

                var m = Math.floor(s/60);
                minutes.html('<h1>'+m+'</h1><p>Minute'+(m>1?'s':''),'</p>');

                s = Math.floor(s-m*60);
                seconds.html('<h1>'+s+'</h1><p>Second'+(s>1?'s':''),'</p>');
                setTimeout(setDate, 1000);

                message.html('MATCH WILL BE COMMING SOON');
            }
        }
    })(jQuery);
    /******************************************************************************************************************************
    ANIMATIONS
    *******************************************************************************************************************************/
    (function($) {
        "use strict";
        var isMobile = false;
        if (navigator.userAgent.match(/Android/i) || 
            navigator.userAgent.match(/webOS/i) ||
            navigator.userAgent.match(/iPhone/i) || 
            navigator.userAgent.match(/iPad/i)|| 
            navigator.userAgent.match(/iPod/i) || 
            navigator.userAgent.match(/BlackBerry/i)) {                 
            isMobile = true;            
        }
        if (isMobile == true) {
            $('body').removeClass('nomobile');
            $('.animated').removeClass('animated');
        }
        $(function() {
            if (isMobile == false) {
                $('*[data-animated]').addClass('animated');
            }
            function animated_contents() {
                $(".animated:appeared").each(function (i) {
                    var $this    = $(this),
                        animated = $(this).data('animated');

                    setTimeout(function () {
                        $this.addClass(animated);
                    }, 50 * i);
                });
            }
            animated_contents();
            $(window).scroll(function () {
                animated_contents();
            });
        });
    })(jQuery);
</script>
    <!-- <script src="/resources/wc/_include/js/soon/custom.js"></script> -->
  </body>
  <!-- END BODY -->
</html>