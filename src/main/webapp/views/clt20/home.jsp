<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>

/*  bhoechie tab */
div.bhoechie-tab-container{
  z-index: 10;
  background-color: #ffffff;
  padding: 0 !important;
  border-radius: 4px;
  -moz-border-radius: 4px;
  border:1px solid #ddd;
  margin-top: 20px;
  margin-left: 50px;
  -webkit-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  box-shadow: 0 6px 12px rgba(0,0,0,.175);
  -moz-box-shadow: 0 6px 12px rgba(0,0,0,.175);
  background-clip: padding-box;
  opacity: 0.97;
  filter: alpha(opacity=97);
}
div.bhoechie-tab-menu{
  padding-right: 0;
  padding-left: 0;
  padding-bottom: 0;
}
div.bhoechie-tab-menu div.list-group{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a{
  margin-bottom: 0;
}
div.bhoechie-tab-menu div.list-group>a .glyphicon,
div.bhoechie-tab-menu div.list-group>a .fa {
  color: #5A55A3;
}
div.bhoechie-tab-menu div.list-group>a:first-child{
  border-top-right-radius: 0;
  -moz-border-top-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a:last-child{
  border-bottom-right-radius: 0;
  -moz-border-bottom-right-radius: 0;
}
div.bhoechie-tab-menu div.list-group>a.active,
div.bhoechie-tab-menu div.list-group>a.active .glyphicon,
div.bhoechie-tab-menu div.list-group>a.active .fa{
  background-color: #5A55A3;
  background-image: #5A55A3;
  color: #ffffff;
}
div.bhoechie-tab-menu div.list-group>a.active:after{
  content: '';
  position: absolute;
  left: 100%;
  top: 50%;
  margin-top: -13px;
  border-left: 0;
  border-bottom: 13px solid transparent;
  border-top: 13px solid transparent;
  border-left: 10px solid #5A55A3;
}

div.bhoechie-tab-content{
  background-color: #ffffff;
  /* border: 1px solid #eeeeee; */
  padding-left: 20px;
  padding-top: 10px;
}

div.bhoechie-tab div.bhoechie-tab-content:not(.active){
  display: none;
}
.hide-bullets {
list-style:none;
margin-left: -40px;
margin-top:20px;
}
</style>

<div class="container">
	<div class="row">
        <div class="col-lg-5 col-md-5 col-sm-8 col-xs-9 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
              <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                  <h4 class="glyphicon glyphicon-plane"></h4><br/>Live
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-road"></h4><br/>Future
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-home"></h4><br/>Past
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-cutlery"></h4><br/>Top Batsman
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-credit-card"></h4><br/>Top Bowler
                </a>
              </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                    <center>
                      <h1 class="" style="font-size:14em;color:#55518a"></h1>
                    <c:if test="${not empty fixtures}">
			<c:forEach var="matchFix" items="${fixtures.mat}">
				<c:if test="${matchFix.priority==4 && matchFix.seriesId == 'Champions League Twenty20 2014 ' }">
					<div class="item  active">
						<!-- <img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src=""> -->
							<div class="row">
									<c:if test="${not empty matchFix}">

										<li class="span3">
											<div>
												<div class="blockDtl">
													<a href="/cricket/ipl/id/${matchFix.matchId}">
														${matchFix.matchName}</a>
													<div class="control-group">
														<label class="control-label"> <i
															class="fa fa-calendar-o"></i> ${matchFix.startDate} :
															${matchFix.status}
														</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.teams.lT}">
															<label class="control-label"><a
																href="/ipl/teamId/${entry.teamId}">${entry.shortName}</a></label>
															<c:if test="${entry.isHome}">
																<span class="icon-home"></span>
															</c:if>
															<c:if test="${entry.winning}">
																<i class="fa fa-trophy"></i>
															</c:if>
														</c:forEach>
													</div>



												</div>
											</div>
										</li>

									</c:if>
								</div>
					</div>
				</c:if>
			</c:forEach>
		</c:if>
                    </center>
                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="" style="font-size:12em;color:#55518a"></h1>
                      <c:forEach var="matchFix" items="${fixtures.mat}">
                      <c:if test="${not empty matchFix}">
								<c:if test="${matchFix.priority>=4 && matchFix.seriesId == 'Champions League Twenty20 2014 ' }">
										<li class="span3">
											<div>
												<div class="blockDtl">
													<a href="/cricket/ipl/id/${matchFix.matchId}">
														${matchFix.matchName}</a>
													<div class="control-group">
														<label class="control-label"> <i
															class="fa fa-calendar-o"></i>${matchFix.startDate} :
															${matchFix.status}
														</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.teams.lT}">
															<label class="control-label"><a
																href="/ipl/teamId/${entry.teamId}">${entry.shortName}</a></label>
															<c:if test="${entry.winning}">
																<i class="fa fa-trophy"></i>
															</c:if>
															<c:if test="${entry.isHome}">
																<span class="icon-home"></span>
															</c:if>
														</c:forEach>
													</div>



												</div>
											</div>
										</li>
</c:if>
									</c:if></c:forEach>
                    </center>
                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="" style="font-size:12em;color:#55518a"></h1>
                      <c:if test="${not empty matchFix}">
								<c:if test="${matchFix.priority<4 && matchFix.seriesId == 'Champions League Twenty20 2014 ' }">
										<li class="span3">
											<div>
												<div class="blockDtl">
													<a href="/cricket/ipl/id/${matchFix.matchId}">
														${matchFix.matchName}</a>
													<div class="control-group">
														<label class="control-label"> <i
															class="fa fa-calendar-o"></i>${matchFix.startDate} :
															${matchFix.status}
														</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.teams.lT}">
															<label class="control-label"><a
																href="/ipl/teamId/${entry.teamId}">${entry.shortName}</a></label>
															<c:if test="${entry.winning}">
																<i class="fa fa-trophy"></i>
															</c:if>
															<c:if test="${entry.isHome}">
																<span class="icon-home"></span>
															</c:if>
														</c:forEach>
													</div>



												</div>
											</div>
										</li>
</c:if>
									</c:if>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-cutlery" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Batsman profile</h3>
                    </center>
                </div>
                <div class="bhoechie-tab-content">
                    <center>
                      <h1 class="glyphicon glyphicon-credit-card" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Bowler Profile</h3>
                    </center>
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6 col-sm-8 col-xs-9 panel">
			<h2>
				<i class="fa fa-table"></i>Standings
			</h2>
			<c:if test="${not empty standingsdi}">
				
					<h3 class="panel-heading">${standingsdi.header.series}<h6>${standingsdi.header.state}</h6></h3>
					

					<table class="table">
						<thead>
							<tr>
								<th>Name</th>
								<th>Played</th>
								<th>Won</th>
								<th>Lost</th>
								<th>Tied</th>
								<th>Points</th><!-- 
								<th>noResult</th> -->
								<th>Net RR</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="team" items="${standingsdi.teams.lT}">
								<tr>
									<td>${team.name}</td>
									<td>${team.played}</td>
									<td>${team.won}</td>
									<td>${team.lost}</td>
									<td>${team.tied}</td>
									<td>${team.points}</td><%-- 
									<td>${team.noResult}</td> --%>
									<td>${team.netRunRate}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				
			</c:if>
		</div>
  </div>
</div>
<hr/>
<div class="container">
        <div id="main_area">
                <!-- Slider -->
                <div class="row">
                    <div class="col-xs-12" id="slider">
                        <!-- Top part of the slider -->
                        <div class="row">
                            <div class="col-sm-8" id="carousel-bounding-box">
                                <div class="carousel slide" id="teamCarosel">
                                    <!-- Carousel items -->
                                    <div class="carousel-inner">
                                        <div class="active item" data-slide-number="0">
                                        <img src="http://1.bp.blogspot.com/-VNbdcqbWPhw/VBnv7BFuKoI/AAAAAAAASVI/zDt9sjbSLzE/s1600/scoreit_clt20_barbados_tridents.jpg"></div>

                                        <div class="item" data-slide-number="1">
                                        <img src="http://2.bp.blogspot.com/-gvf77ylppw0/VBnv8Ku-L6I/AAAAAAAASVY/HSNFW6PvmwA/s1600/scoreit_clt20_cape_cobras.jpg"></div>

                                        <div class="item" data-slide-number="2">
                                        <img src="http://2.bp.blogspot.com/-ZZjH8krP56M/VBnv9K0-ltI/AAAAAAAASV0/HiaeQJES4FQ/s1600/scoreit_clt20_csk.jpg"></div>

                                        <div class="item" data-slide-number="3">
                                        <img src="http://2.bp.blogspot.com/-PlRDd4Ub7Cc/VBnv9qMkEyI/AAAAAAAASWs/D_5215jRhtk/s1600/scoreit_clt20_hobart_hurricanes.jpg"></div>

                                        <div class="item" data-slide-number="4">
                                        <img src="http://2.bp.blogspot.com/-KdcbsCUfWAM/VBnv-ioY5nI/AAAAAAAASWE/f6H6QK0FVew/s1600/scoreit_clt20_karachi_dolphins.jpg"></div>

                                        <div class="item" data-slide-number="5">
                                        <img src="http://3.bp.blogspot.com/-TyuQNf8V_AI/VBnv_X2uH3I/AAAAAAAASWU/mNKuV3kzg28/s1600/scoreit_clt20_kolkatta_knight_riders.jpg"></div>
                                        
                                        <div class="item" data-slide-number="6">
                                        <img src="http://2.bp.blogspot.com/--SBRzS_DJY4/VBnv7K1l1yI/AAAAAAAASVE/upTF-u9JMlA/s1600/scoreit_clt20_KXIP.jpg"></div>
                                        
                                        <div class="item" data-slide-number="7">
                                        <img src="http://3.bp.blogspot.com/-GKoL20SQJz8/VBnwAACdCPI/AAAAAAAASWk/iCyXYFeuYSs/s1600/scoreit_clt20_lahore_lions.jpg"></div>
                                        
                                        <div class="item" data-slide-number="8">
                                        <img src="http://3.bp.blogspot.com/-KbJ3OodQOig/VBnwBAJ7W_I/AAAAAAAASW8/Fekc7VElUhI/s1600/scoreit_clt20_northern_knights.jpg"></div>
                                        
                                        <div class="item" data-slide-number="9">
                                        <img src="http://1.bp.blogspot.com/-7_MbVeYk83I/VBnwB5tq1ZI/AAAAAAAASXE/dKKy76XfYz4/s1600/scoreit_clt20_perth_scorchers.jpg"></div>
                                    </div><!-- Carousel nav -->
                                    <a class="left carousel-control" href="#teamCarosel" role="button" data-slide="prev">
                                        <span class="glyphicon glyphicon-chevron-left"></span>                                       
                                    </a>
                                    <a class="right carousel-control" href="#teamCarosel" role="button" data-slide="next">
                                        <span class="glyphicon glyphicon-chevron-right"></span>                                       
                                    </a>                                
                                    </div>
                            </div>

                            <div class="col-sm-4" id="carousel-text"></div>

                            <div id="slide-content" style="display: none;">
                                <div id="slide-content-0">
                                    <h2>Barbados Tridents</h2>
                                    <p></p>
                                    <p class="sub-text"> <a href="#"></a></p>
                                </div>

                                <div id="slide-content-1">
                                    <h2>Cape Cobras</h2>
                                    <p></p>
                                    <p class="sub-text"><a href="#"></a></p>
                                </div>

                                <div id="slide-content-2">
                                    <h2>CSK</h2>
                                    <p></p>
                                    <p class="sub-text"><a href="#"></a></p>
                                </div>

                                <div id="slide-content-3">
                                    <h2>Hobart Hurricanes</h2>
                                    <p></p>
                                    <p class="sub-text"><a href="#"></a></p>
                                </div>

                                

                                <div id="slide-content-4">
                                    <h2>Karachi Dolphins</h2>
                                    
                                </div>
                                <div id="slide-content-5">
                                    <h2>Kolkatta Knight Riders</h2>
                                </div>
                                <div id="slide-content-6">
                                    <h2>KXIP</h2>
                                </div>
                                <div id="slide-content-7">
                                    <h2>Lahore Lions</h2>
                                </div>
                                <div id="slide-content-8">
                                    <h2>Northern Knights</h2>
                                </div>
                                <div id="slide-content-9">
                                    <h2>Perth Scorchers</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/Slider-->

                <div class="row hidden-xs" id="slider-thumbs">
                        <!-- Bottom switcher of slider -->
                        <ul class="hide-bullets">
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-0"><img src="http://1.bp.blogspot.com/-ghA4Dk57UJY/VBnv7kuK7kI/AAAAAAAASVg/_bVc9qPuah0/s1600/scoreit_clt20_barbados_tridents_thumb.jpg"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-1"><img src="http://3.bp.blogspot.com/-lUPofmuuWU8/VBnv8IVm34I/AAAAAAAASVc/75rFskyUbZI/s1600/scoreit_clt20_cape_cobras_thumb.jpg"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-2"><img src="http://2.bp.blogspot.com/-pnLldB2xDek/VBnv9V-0N4I/AAAAAAAASVs/2--PrdEMei8/s1600/scoreit_clt20_csk_thumb.jpg"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-3"><img src="http://3.bp.blogspot.com/-xA5kj0qBi6c/VBnv-AVe_VI/AAAAAAAASV8/5LTKl7OXJds/s1600/scoreit_clt20_hobart_hurricanes_thumb.jpg"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-4"><img src="http://2.bp.blogspot.com/-hH87vhI0JWM/VBnv-3u3nOI/AAAAAAAASWM/BRTNX7WeTYE/s1600/scoreit_clt20_karachi_dolphins_thumb.jpg"></a>
                            </li>

                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-5"><img src="http://1.bp.blogspot.com/-vd26F2P3L2s/VBnv_y5XLMI/AAAAAAAASWc/VTwI_BCa7PY/s1600/scoreit_clt20_kolkatta_knight_riders_thumb.jpg"></a>
                            </li>
                            
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-6"><img src="http://2.bp.blogspot.com/-Ju5lePpznlY/VBnv7IM1naI/AAAAAAAASVA/0ofgRmRA-jE/s400/scoreit_clt20_KXIP_thumb.jpg"></a>
                            </li>
                            
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-7"><img src="http://4.bp.blogspot.com/-k9MB8z9B6RI/VBnwAxru2oI/AAAAAAAASW0/zar9q-evWtY/s1600/scoreit_clt20_lahore_lions_thumb.jpg"></a>
                            </li>
                            
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-8"><img src="http://3.bp.blogspot.com/-X1fKobAtvYQ/VBnwBcIiqiI/AAAAAAAASXQ/0Nwah1HUmeM/s1600/scoreit_clt20_northern_knights_thumb.jpg"></a>
                            </li>
                            
                            <li class="col-sm-2">
                                <a class="thumbnail" id="carousel-selector-9"><img src="http://2.bp.blogspot.com/-v0G9Ywa-VbA/VBnwCN0DawI/AAAAAAAASXM/dHVfYKE1BkM/s1600/scoreit_clt20_perth_scorchers_thumb.jpg"></a>
                            </li>
                        </ul>                 
                </div>
        </div>
</div>


<script type="text/javascript">
$(document).ready(function() {
    $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
        e.preventDefault();
        $(this).siblings('a.active').removeClass("active");
        $(this).addClass("active");
        var index = $(this).index();
        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
    });
    $('#teamCarosel').carousel({
        interval: 5000
});

$('#carousel-text').html($('#slide-content-0').html());

//Handles the carousel thumbnails
$('[id^=carousel-selector-]').click( function(){
        var id_selector = $(this).attr("id");
        var id = id_selector.substr(id_selector.length -1);
        var id = parseInt(id);
        $('#teamCarosel').carousel(id);
});


// When the carousel slides, auto update the text
$('#teamCarosel').on('slid.bs.carousel', function (e) {
         var id = $('.item.active').data('slide-number');
        $('#carousel-text').html($('#slide-content-'+id).html());
});
});
</script>