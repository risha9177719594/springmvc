<style>
body
{
    padding-top: 20px;
}
#myCarousel .nav a small
{
    display: block;
}
#myCarousel .nav
{
    background: #eee;
}
.nav-justified > li > a
{
    border-radius: 0px;
}
.nav-pills>li[data-slide-to="0"].active a { background-color: #16a085; }
.nav-pills>li[data-slide-to="1"].active a { background-color: #e67e22; }
.nav-pills>li[data-slide-to="2"].active a { background-color: #2980b9; }
.nav-pills>li[data-slide-to="3"].active a { background-color: #8e44ad; }
</style>

<div class="container">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="http://2.bp.blogspot.com/-6kVxCFXUDcU/VBnkqU4IKII/AAAAAAAASUo/kPsgme9nqEM/s1600/scoreit_clt20_2014_5.jpg">
                <div class="carousel-caption">
                    <h3>
                        <!-- Headline --></h3>
                    <p>
                        <!-- Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod
                        tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. Lorem
                        ipsum dolor sit amet, consetetur sadipscing elitr. --></p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://3.bp.blogspot.com/-YkTd3ISzazU/VBnkpJCgkDI/AAAAAAAASUY/MUwd1r4ikyw/s1600/scoreit_clt20_2014_2.jpg">
                <div class="carousel-caption">
                    <h3>
                        </h3>
                    <p>
                        </p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://2.bp.blogspot.com/-nW37MjYQv3I/VBnkpGd1hbI/AAAAAAAASUQ/XQeynBQ3ejE/s1600/scoreit_clt20_2014_1.jpg">
                <div class="carousel-caption">
                    <h3>
                        </h3>
                    <p>
                        </p>
                </div>
            </div>
            <!-- End Item -->
            <div class="item">
                <img src="http://2.bp.blogspot.com/-DHd4eNBEpoo/VBnkqBMyaVI/AAAAAAAASUg/jhOdyoTTuw8/s1600/scoreit_clt20_2014_4.jpg">
                <div class="carousel-caption">
                    <h3>
                        </h3>
                    <p>
                        </p>
                </div>
            </div>
            <!-- End Item -->
        </div>
        <!-- End Carousel Inner -->
        <ul class="nav nav-pills nav-justified">
            <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#">CLT20<small></small></a></li>
            <li data-target="#myCarousel" data-slide-to="1"><a href="#">CLT20<small></small></a></li>
            <li data-target="#myCarousel" data-slide-to="2"><a href="#">CLT20<small></small></a></li>
            <li data-target="#myCarousel" data-slide-to="3"><a href="#">CLT20<small></small></a></li>
        </ul>
    </div>
    <!-- End Carousel -->
</div>

<script type="text/javascript">
$(document).ready( function() {
    $('#myCarousel').carousel({
    	interval:   4000
	});
	
	var clickEvent = false;
	$('#myCarousel').on('click', '.nav a', function() {
			clickEvent = true;
			$('.nav li').removeClass('active');
			$(this).parent().addClass('active');		
	}).on('slid.bs.carousel', function(e) {
		if(!clickEvent) {
			var count = $('.nav').children().length -1;
			var current = $('.nav li.active');
			current.removeClass('active').next().addClass('active');
			var id = parseInt(current.data('slide-to'));
			if(count == id) {
				$('.nav li').first().addClass('active');	
			}
		}
		clickEvent = false;
	});
});
</script>