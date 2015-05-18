


<div class="carousel slide" data-ride="carousel" id="myCarousel">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<li class="active" data-slide-to="0" data-target="#myCarousel"></li>
		<li class="" data-slide-to="1" data-target="#myCarousel"></li>
		<li class="" data-slide-to="2" data-target="#myCarousel"></li>
		<li class="" data-slide-to="3" data-target="#myCarousel"></li><!-- 
		<li class="" data-slide-to="4" data-target="#myCarousel"></li>
		<li class="" data-slide-to="5" data-target="#myCarousel"></li>
		<li class="" data-slide-to="6" data-target="#myCarousel"></li>
		<li class="" data-slide-to="7" data-target="#myCarousel"></li> -->
	</ol>
	<div class="carousel-inner">
		<div class="item  active">
			<img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src="/resources/wc/_include/img/slider-images/image02.jpg">
			<div class="container">
				<div class="carousel-caption">
				<style>
				.timer_box{
				    margin: 35px 24px;
				    display: inline-block;
				    padding: 20px 12px 0px 12px;
				    text-align: center;
				    width: 17%;
				    border-radius: 50%;
				    border: 4px solid rgba(255, 085, 008, .6);
				}
				.timer_box h1{
				    font-size: 48px;
				    margin-top: 5px;
				    margin-bottom: 0px;
				    font-family: "Lato","Helvetica Neue",Helvetica,Arial,sans-serif;
				    color: blue;
				}
				.timer_box p{ margin-top: 0px;}
				@media only screen and (max-width: 740px) {
				    .timer_box{
				        width: 100px;
				        padding: 16px 0 0 0;
				        margin: 35px 12px;
				    }
				    #layer{display: none;}
				    .timer_box h1{ font-size: 28px;}
				    h1{ font-size: 36px;}
				}
				.animated.FadeIn {
				    opacity: 1;
				    -webkit-animation-duration: .8s;
				       -moz-animation-duration: .8s;
				        -ms-animation-duration: .8s;
				         -o-animation-duration: .8s;
				            animation-duration: .8s;
				    -webkit-animation-name: FadeIn;
				       -moz-animation-name: FadeIn;
				         -o-animation-name: FadeIn;
				            animation-name: FadeIn;
				}
				</style>
				
					<!-- START TIMER -->
		            <div id="timer" data-animated="FadeIn">
		                <p id="message"></p>
		                <div id="days" class="timer_box"></div>
		                <div id="hours" class="timer_box"></div>
		                <div id="minutes" class="timer_box"></div>
		                <div id="seconds" class="timer_box"></div>
		            </div>
		            
		            <!-- END TIMER -->
				</div>
			</div>
		</div>
		<div class="item">
			<img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src="/resources/img/wc.jpg">
			<div class="container">
				<div class="carousel-caption">
					<!-- <img alt="140x140" class="img-square" data-src="holder.js/140x140"
						height="140"
						src="http://iplstatic.s3.amazonaws.com/players/100x115/164.png"
						width="140"> -->
				</div>
			</div>
		</div>
		<div class="item">
			<img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src="http://3.bp.blogspot.com/-CBcEcsJEux8/U-0VLwIrBuI/AAAAAAAAPls/qM5FEm8pWSM/s640/ind11.jpg">
				<!--src="http://2.bp.blogspot.com/--_kvHfRInas/U-0VL15aBxI/AAAAAAAAPlg/FeI5ikNclSs/s640/india_2068489ib.jpg">-->
			<div class="container">
				<div class="carousel-caption">
					<!-- <img alt="140x140" class="img-square" data-src="holder.js/140x140"
						height="140"
						src="http://iplstatic.s3.amazonaws.com/players/100x115/41.png"
						width="140"> -->
				</div>
			</div>
		</div>
		<div class="item">
			<img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src="http://3.bp.blogspot.com/-i8zFbpeqnl8/U-0VLjWzEFI/AAAAAAAAPlc/U1MN9faSdCY/s1600/24-off-the-field-ufun-030511.jpg">
			<div class="container">
				<div class="carousel-caption">
					<!-- <img alt="140x140" class="img-square" data-src="holder.js/140x140"
						height="140"
						src="http://iplstatic.s3.amazonaws.com/players/100x115/227.png"
						width="140"> -->
				</div>
			</div>
		</div>
		
		
	</div>
	<a class="left carousel-control" data-slide="prev" href="#myCarousel"><span
		class="icon icon-prev"></span></a> <a class="right carousel-control"
		data-slide="next" href="#myCarousel"><span class="icon icon-next"></span></a>
</div>
<script src="/resources/wc/_include/js/soon/plugins.js"></script>
    <script type="text/javascript">
    /******************************************************************************************************************************
    COMMING SOON PAGE
    *******************************************************************************************************************************/
    (function($) {
        /**
        * Set your date here  (YEAR, MONTH (0 for January/11 for December), DAY, HOUR, MINUTE, SECOND)
        * according to the GMT+0 Timezone
        **/
        var launch = new Date(2015, 1, 14, 11, 00);
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
                message.html('Here WE Go....');
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

                message.html('World Cup coming SOON');
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