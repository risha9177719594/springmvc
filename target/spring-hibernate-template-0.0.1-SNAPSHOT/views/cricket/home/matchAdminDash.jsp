<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div id="ref"></div>
<link
	href='/resources/bootStrap/css/bootstrap.min.css'
	rel="stylesheet" />

<!-- Add cuscss/sb-admin.csstom CSS here -->
<link
	href="http://startbootstrap.com/templates/sb-admin-2/css/sb-admin-2.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="http://startbootstrap.com/templates/sb-admin/font-awesome/css/font-awesome.min.css">
<!-- Page Specific CSS -->
<link rel="stylesheet"
	href="http://cdn.oesmith.co.uk/morris-0.4.3.min.css">
<c:forEach items="${match.scorecard.past_ings }" var="inning"
	varStatus="i">
	<c:set var="countinn1" scope="session" value="${i.count}" />
</c:forEach>
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
-->
</style>
<script>
var lastComent="%$#%$^";
$(document).ready(function()
	    { var matchId=$("#matchId").html();
	
	
	$("#"+${countinn1}).removeClass( "collapse" );
	$("#"+${countinn1}+"wik").removeClass( "collapse" );
	        
	        var $container = $("#liveCom");
	        var comm="";
	        $container.load("/cricket/live/"+matchId);
	        var refreshId = setInterval(function()
	        {	var flickerAPI = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.commentary%20where%20match_id%3D"+matchId+"&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=";
	        		  $.getJSON( flickerAPI, {
	        		    tags: "mount rainier",
	        		    tagmode: "any",
	        		    format: "json"
	        		  })
	        		    .done(function( data ) {
	        		    	if($('#isMatFut').html()!='Y'){
	        		      $.each( data.query.results.Over, function( i, item ) {
	        		    	  $.each( item.Ball, function( i1, ball ) {
	        		    		  if(i==0 && i1==0){
	        		    			 comm="";
	        		    		  }
	        		    		  comm=comm+"<ul class='chat'><li	class=";
	        		    		  if(ball.n % 2 == 0 ){
	        		    			  comm=comm+"'left clearfix'>";
	        		    		  }else{
	        		    			  comm=comm+"'right clearfix'>";
	        		    		  }
	        		    		  if(ball.n % 2 == 0 ){
	        		    			  comm=comm+"<span class='chat-img pull-left'>";
										
	        		    			  comm=comm+"<img src='http://www.lib.berkeley.edu/CHEM/cloud/speaker.png' class='pic img-circle' width='50' height='50' /></span>";
	        		    			  
	        		    		  }else{
	        		    			  comm=comm+"<span class='chat-img pull-right'>";
										
	        		    			  comm=comm+"<img src='http://www.lib.berkeley.edu/CHEM/cloud/speaker.png' class='pic img-circle' width='50' height='50' /></span>";
	        		    		  }	
	        		    		  var n=item.num-1;
	        		    		  comm=comm+"<div class='chat-body clearfix'>"+
									"<div class='header'>"+
										"<strong class='primary-font'>"+n+"."+ball.n+" </strong> <small class='pull-right text-muted'>"+
											"<i class='fa fa-clock-o fa-fw'></i> "+ball.r+
										"</small>"+
									"</div>"+
									"<p>"+ball.c +" </p>"+
								"</div></li></ul>";
								if(ball.c.indexOf(lastComent) < 0 && ball.c.toLowerCase().indexOf("<b>") >= 0 && i1 == 0){
	        		    			    lastComent= ball.c;
	        		    			    $.ajax({
	        		    			    	  url: "http://www.scoreit.in/cricket/upStatus?message="+ball.tl+"/"+ball.wkts+"("+(ball.ov-1)+"."+ball.n+") :"+ball.c+" http://www.scoreit.in/cricket/id/"+matchId,
	        		    			    	  //context: document.body
	        		    			    	}).done(function() {
	        		    			    	  $( this ).addClass( "done" );
	        		    			    	}); 
	        		    			}

	  	        		      });	

	        		      });}else{
	        		    	  comm=comm+"<ul class='chat'><li	class=";
        		    		  if( data.query.results.Over.Ball.n % 2 == 0 ){
        		    			  comm=comm+"'left clearfix'>";
        		    		  }else{
        		    			  comm=comm+"'right clearfix'>";
        		    		  }
        		    		  if(data.query.results.Over.Ball.n % 2 == 0 ){
        		    			  comm=comm+"<span class='chat-img pull-left'>";
									
        		    			  comm=comm+"<img src='http://www.lib.berkeley.edu/CHEM/cloud/speaker.png' class='pic img-circle' width='50' height='50' /></span>";
        		    			  
        		    		  }else{
        		    			  comm=comm+"<span class='chat-img pull-right'>";
									
        		    			  comm=comm+"<img src='http://www.lib.berkeley.edu/CHEM/cloud/speaker.png' class='pic img-circle' width='50' height='50' /></span>";
        		    		  }	
        		    		  var n=data.query.results.Over.num-1;
        		    		  comm=comm+"<div class='chat-body clearfix'>"+
								"<div class='header'>"+
									"<strong class='primary-font'>"+n+"."+data.query.results.Over.Ball.n+" </strong> <small class='pull-right text-muted'>"+
										"<i class='fa fa-clock-o fa-fw'></i> "+data.query.results.Over.Ball.r+
									"</small>"+
								"</div>"+
								"<p>"+data.query.results.Over.Ball.c +" </p>"+
							"</div></li></ul>";
							
							if(data.query.results.Over.Ball.c.indexOf(lastComent) < 0){
        		    		   $.ajax({
		    			    	  url: "http://www.scoreit.in/cricket/upStatus?message=ScoreIt:) :"+data.query.results.Over.Ball.c+" http://www.scoreit.in/cricket/id/"+matchId,
		    			    	  //context: document.body
		    			    	}).done(function() {
		    			    	  $( this ).addClass( "done" );
		    			    	}); 
		    			    	
        		    		  lastComent= data.query.results.Over.Ball.c;
        		    		  }
	        		      }
	        		      $container.html(comm);
	        		    });
	        }, 20000);
	    });
	    
$('#myTab a').click(function (e) {
	  e.preventDefault()
	  $(this).tab('show')
	})
	$('#myTab a[href="#profile"]').tab('show') // Select tab by name
$('#myTab a:first').tab('show') // Select first tab
$('#myTab a:last').tab('show') // Select last tab
$('#myTab li:eq(2) a').tab('show') // Select third tab (0-indexed)
function viewDetails(a,b){
	if(a=='md'){
		$( "#1" ).addClass( "collapse" );
		$( "#2" ).addClass( "collapse" );
		$( "#3" ).addClass( "collapse" );
		$( "#4" ).addClass( "collapse" );
		$("#"+b).removeClass( "collapse" );
		$("#"+b).toggle( "drop", 500 );
		
		$( "#1wik" ).addClass( "collapse" );
		$( "#2wik" ).addClass( "collapse" );
		$( "#3wik" ).addClass( "collapse" );
		$( "#4wik" ).addClass( "collapse" );
		$("#"+b+"wik").removeClass( "collapse" );
		$("#"+b+"wik").toggle( "drop", 500 );
	}
	
}
</script>
<script>
    $(document).ready(function() {
        $('#dataTables-example').dataTable();
    });
    </script>

<div id="container">



	<div id="row">

		<div class="col-lg-12">
			<div class="col-lg-12 thumbnail">
			<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- liveMatchAdd -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-0723290601938478"
     data-ad-slot="2604249535"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></div><div class="col-lg-12">
				<h1>
					Dashboard <small>${match.scorecard.matchNumber }
						${match.scorecard.ms } <c:if test="${not empty fixturesF}">
							<c:forEach var="matchFix" items="${fixturesF.match}"
								varStatus="i">
								<c:if test="${not empty matchFix}">
									<c:if test="${matchFix.matchid == match.scorecard.mid}">
									${matchFix.startDate}  <div id="isMatFut" class="collapse">Y</div>
								</c:if>
								</c:if>
							</c:forEach>
						</c:if>
					</small>

				</h1>
				<div id="matchId" class="collapse">${match.scorecard.mid }</div>
				<ol class="breadcrumb">
					<li class="active"><i class="fa fa-dashboard"></i>
						${match.scorecard.series.series_name}<c:forEach var="entry"
							items="${match.scorecard.teams}">
									${entry.fn}
									</c:forEach> ${match.scorecard.place.stadium }</li>
				</ol>
				<div class="alert alert-success alert-dismissable">
					<button type="button" class="close" data-dismiss="alert"
						aria-hidden="true">&times;</button>
					Welcome to ${match.scorecard.matchNumber } by <a class="alert-link"
						href="http://www.scoreit.in/cricket/">ScoreIt</a>!
					<c:forEach var="entry" items="${match.scorecard.teams}">
						<c:if test="${entry.i == match.scorecard.toss.winTeam}">
									${entry.fn}
								</c:if>
					</c:forEach>
					Won the Toss and elected to
					<c:if test="${match.scorecard.toss.isBatting == '1'}">
									BAT
								</c:if>
					<c:if test="${match.scorecard.toss.isBatting != '1'}">
									FIELD
								</c:if>
				</div>
			</div>
		</div>
		<!-- /.row -->

		<div class="col-lg-12">

			<c:forEach items="${match.scorecard.past_ings }" var="inning"
				varStatus="i">


				<c:set var="countinn" scope="session" value="${i.count}" />
				<c:forEach var="entry" items="${match.scorecard.teams}">
					<c:if test="${entry.i == inning.summary.batSummary.batTeamId}">

						<div id="${entry.i }liveDet"
							class="col-lg-<c:if test="${countinn1 == '1'}">12</c:if><c:if test="${countinn1 == '2'}">6</c:if><c:if test="${countinn1 == '3'}">4</c:if><c:if test="${countinn1 == '4'}">3</c:if>">
							<div
								class="panel <c:if test="${inning.summary.inningId == '1'}">panel-success</c:if>
													<c:if test="${inning.summary.inningId == '2'}">panel-info</c:if>
													<c:if test="${inning.summary.inningId == '3'}">panel-success</c:if>
													<c:if test="${inning.summary.inningId == '4'}">panel-info</c:if>">
								<div class="panel-heading">
									<div class="row">
										<div class="col-xs-6">
											<img data-src="holder.js/300x200" src="${entry.logo.std }"
												alt="..." width="100" height="100">
										</div>
										<div class="col-xs-6 text-right">
											<h3>${inning.summary.batSummary.runs}/${inning.summary.batSummary.wikets}
												(${inning.summary.batSummary.overs})</h3>
											<p class="announcement-text">${entry.fn}</p>
										</div>
									</div>
								</div>
								<a
									href="javascript:viewDetails('md',${inning.summary.inningId });">
									<div class="panel-footer announcement-bottom">
										<div class="row">
											<div class="col-xs-6">View Details</div>
											<div class="col-xs-6 text-right">
												<i class="fa fa-arrow-circle-right"></i>
											</div>

										</div>
									</div>
								</a>
							</div>
						</div>
					</c:if>



				</c:forEach>
			</c:forEach>



		</div>
		<!-- /.row -->

		<div class="toggler" id="teamDet1">
			<div class="col-lg-8">
				<ul class="nav nav-tabs" role="tablist">
					<li class="active"><a href="#home" role="tab"
						data-toggle="tab">Home</a></li>
					<li><a href="#profile" role="tab" data-toggle="tab">Fall
							Of Wickets</a></li>
					<li><a href="#messages" role="tab" data-toggle="tab">Messages</a></li>
					<li><a href="#settings" role="tab" data-toggle="tab">Settings</a></li>
				</ul>

				<!-- Tab panes -->
				<div class="tab-content">
					<div class="tab-pane active" id="home">
						<c:forEach items="${match.scorecard.past_ings }" var="inning">
							<div id="${inning.summary.inningId }" class="collapse">
								<div class="table-responsive col-lg-12">
									<table
										class="table table-bordered table-hover table-striped tablesorter">
										<thead>
											<tr>
												<th>Name <i class="fa fa-sort"></i></th>
												<th>Runs <i class="fa fa-sort"></i></th>
												<th>Balls <i class="fa fa-sort"></i></th>
												<th>Four <i class="fa fa-sort"></i></th>
												<th>Six <i class="fa fa-sort"></i></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach
												items="${inning.detailedScore.battingScorecard.t }"
												var="player">
												<tr
													<c:if test="${player.isPlaying == '2' }">class="success"</c:if>
													<c:if test="${player.isPlaying == '3' }">class="info"</c:if>>
													<td><c:forEach var="entry11"
															items="${match.scorecard.teams}">
															<c:forEach var="squad11" items="${entry11.squad}">
																<c:if test="${player.playerId==squad11.i }">
																	<img src="${squad11.photo}"
																		class="pic img-circle popover-show" width="30"
																		height="30" data-container="body" />
															${squad11.full}
															<c:choose>
																		<c:when test="${player.isPlaying == '1' }">
																			<span class="label label-warning">Out</span>
																		</c:when>
																		<c:when test="${player.isBowling == '2' }">
																			<span class="label label-success">Stricker</span>

																		</c:when>
																		<c:when test="${player.isBowling == '3' }">
																			<span class="label label-info">Non-Stricker</span>

																		</c:when>
																		<c:otherwise></c:otherwise>
																	</c:choose>
																</c:if>
															</c:forEach>
														</c:forEach></td>
													<td>${player.runs }</td>
													<td>${player.ballsFaced }</td>
													<td>${player.fours }</td>
													<td>${player.six }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
								<div class="table-responsive col-lg-12">
									<table
										class="table table-bordered table-hover table-striped tablesorter">
										<thead>
											<tr>
												<th>Name <i class="fa fa-sort"></i></th>
												<th>Overs <i class="fa fa-sort"></i></th>
												<th>Wickets <i class="fa fa-sort"></i></th>
												<th>Runs <i class="fa fa-sort"></i></th>
												<th>Extras <i class="fa fa-sort"></i></th>
											</tr>
										</thead>
										<tbody>
											<c:forEach
												items="${inning.detailedScore.bowlingScorecard.t }"
												var="player">
												<tr>
													<td><c:forEach var="entry11"
															items="${match.scorecard.teams}">
															<c:forEach var="squad11" items="${entry11.squad}">
																<c:if test="${player.playerId==squad11.i }">
																	<img src="${squad11.photo}"
																		class="pic img-circle popover-show" width="30"
																		height="30" data-container="body" />
															${squad11.full}
															<c:choose>
																		<c:when test="${player.isBowling == '5' }">
																			<span class="label label-warning">Other end</span>

																		</c:when>
																		<c:when test="${player.isBowling == '2' }">
																			<span class="label label-warning">Bowling</span>

																		</c:when>
																		<c:otherwise></c:otherwise>
																	</c:choose>
																</c:if>
															</c:forEach>
														</c:forEach></td>
													<td>${player.overs }</td>
													<td>${player.wickets }</td>
													<td>${player.runs }</td>
													<td>${player.wides + player.noBalls }</td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="tab-pane" id="profile">
						<c:forEach items="${match.scorecard.past_ings }" var="inning"
							varStatus="i">
							<div id="${inning.summary.inningId }wik" class="collapse">
								<div class="col-lg-8">
									<div class="panel panel-primary">
										<div class="panel-heading">
											<h3 class="panel-title">
												<i class="fa fa-bar-chart-o"></i> Fall of Wickets Inning
												${inning.summary.inningId }
											</h3>
										</div>
										<div class="panel-body">
											<div id="morris-chart-area${inning.summary.inningId }"></div>


										</div>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<div class="tab-pane" id="messages">...</div>
					<div class="tab-pane" id="settings">...</div>
				</div>

			</div>
			<div class="col-lg-4">

				<div class="chat-panel panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-comments fa-fw"></i> Commentry
						<div class="btn-group pull-right">
							<button type="button"
								class="btn btn-default btn-xs dropdown-toggle"
								data-toggle="dropdown">
								<i class="fa fa-chevron-down"></i>
							</button>
							<ul class="dropdown-menu slidedown">
								<li><a href="#"> <i class="fa fa-refresh fa-fw"></i>
										Refresh
								</a></li>
								<li><a href="#"> <i class="fa fa-check-circle fa-fw"></i>
										Available
								</a></li>
								<li><a href="#"> <i class="fa fa-times fa-fw"></i> Busy
								</a></li>
								<li><a href="#"> <i class="fa fa-clock-o fa-fw"></i>
										Away
								</a></li>
								<li class="divider"></li>
								<li><a href="#"> <i class="fa fa-sign-out fa-fw"></i>
										Sign Out
								</a></li>
							</ul>
						</div>
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body" id="liveCom">
						<ul class="chat">
							<c:forEach items="${match.over }" var="over">
								<c:forEach items="${over.ball }" var="ball"
									varStatus="statusBall">
									<li
										class=<c:if test="${(statusBall.index)%2 eq 0}">"left clearfix"</c:if>
										<c:if test="${(statusBall.index)%2 ne 0}">"right clearfix"</c:if>>
										<c:if test="${(statusBall.index)%2 eq 0}">
											<span class="chat-img pull-left"> <c:forEach
													items="${match.scorecard.past_ings }" var="inning">
													<c:forEach
														items="${inning.detailedScore.battingScorecard.t }"
														var="player">
														<c:forEach var="entry11" items="${match.scorecard.teams}">
															<c:forEach var="squad11" items="${entry11.squad}">
																<c:if test="${player.playerId==squad11.i }">
																	<c:choose>
																		<c:when test="${player.isBowling == '2' }">
																			<img src="${squad11.photo}" class="pic img-circle"
																				width="50" height="50" />

																		</c:when>
																	</c:choose>
																</c:if>
															</c:forEach>
														</c:forEach>

													</c:forEach>
												</c:forEach>

											</span>
										</c:if> <c:if test="${(statusBall.index)%2 ne 0}">
											<span class="chat-img pull-right"> <c:forEach
													items="${inning.detailedScore.bowlingScorecard.t }"
													var="player">
													<c:forEach var="entry11" items="${match.scorecard.teams}">
														<c:forEach var="squad11" items="${entry11.squad}">
															<c:if test="${player.playerId==squad11.i }">
																<c:choose>
																	<c:when test="${player.isBowling == '2' }">
																		<img src="${squad11.photo}" class="pic img-circle"
																			width="50" height="50" data-container="body" />

																	</c:when>
																	<c:otherwise>
																		<img src="http://placehold.it/50/FA6F57/fff"
																			alt="User Avatar" class="img-circle">
																	</c:otherwise>
																</c:choose>
															</c:if>
														</c:forEach>
													</c:forEach>

												</c:forEach>

											</span>
										</c:if>
										<div class="chat-body clearfix">
											<div class="header">
												<strong class="primary-font">${over.num-1
													}.${ball.number }</strong> <small class="pull-right text-muted">
													<i class="fa fa-clock-o fa-fw"></i> ${ball.runs }
												</small>
											</div>
											<p>${ball.coment }</p>
										</div>

									</li>

								</c:forEach>
							</c:forEach>


						</ul>
					</div>
					<!-- /.panel-body -->
					<div class="panel-footer">
						<div class="input-group">
							<input id="btn-input" type="text" class="form-control input-sm"
								placeholder="Type your message here..."> <span
								class="input-group-btn">
								<button class="btn btn-warning btn-sm" id="btn-chat">
									Refresh</button>
							</span>
						</div>
					</div>
					<!-- /.panel-footer -->
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h3 class="panel-title">
							<i class="fa fa-long-arrow-right"></i> Current Partnership
						</h3>
					</div>
					<div class="panel-body">
						<div id="morris-chart-donut"></div>
						<div class="text-right">
							<a href="javascript:viewDetails('cp',0);">View Details <i
								class="fa fa-arrow-circle-right"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- /.row -->
		<div class="row">
			<!-- Nav tabs -->
			<div id="content"></div>
			<img src="loading.gif" id="loading" alt="loading"
				style="display: none;" />
		</div>
		<div class="row">
			<div class="row rowpost">
				<ul class="post-sharing-menu">
					<li><a class="share_pgo"
						href="https://plus.google.com/share?u=http://www.scoreit.in/cricket/id/${match.scorecard.mid}&amp;t=${match.scorecard.series.series_name}<c:forEach var="entry"
							items="${match.scorecard.teams}">
									${entry.fn}
									</c:forEach>"
						target="_blank" title="Share on Google +"> <i
							class="fa fa-google-plus"> </i>
					</a></li>
					<li><a class="share_pfb"
						href="http://www.facebook.com/sharer.php?u=http://www.scoreit.in/cricket/id/${match.scorecard.mid}&amp;t=${match.scorecard.series.series_name}<c:forEach var="entry"
							items="${match.scorecard.teams}">
									${entry.fn}
									</c:forEach>"
						target="_blank" title="Share on facebook"> <i
							class="fa fa-facebook"> </i>
					</a></li>
					<li><a class="share_ptwi"
						href="http://twitter.com/intent/tweet?text=${match.scorecard.series.series_name}<c:forEach var="entry"
							items="${match.scorecard.teams}">
									${entry.fn}
									</c:forEach>&amp;url=http://www.scoreit.in/cricket/id/${match.scorecard.mid}"
						target="_blank" title="Share on Twitter"> <i
							class="fa fa-twitter"> </i>
					</a></li>
				</ul>
			</div>
		</div>
		<!-- /.row -->



		<!-- /.row -->

	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->
<!-- JavaScript -->
<script
	src="http://startbootstrap.com/templates/sb-admin/js/jquery-1.10.2.js"></script>

<!-- Page Specific Plugins -->
<script
	src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="http://cdn.oesmith.co.uk/morris-0.4.3.min.js"></script>
<script src='/resources/js/mirror.js'></script>

<script>
    
    // First Chart Example - Area Line Chart
<c:forEach items="${match.scorecard.past_ings }" var="inning"
		varStatus="i">
Morris.Area({
	
  // ID of the element in which to draw the chart.
  element: 'morris-chart-area'+${i.count},
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [<c:forEach items="${inning.summary.fw }" var="fw">
  { Runs: ${fw.teamScore}, Overs: ${fw.overs} },
  </c:forEach>	],
  // The name of the data record attribute that contains x-visitss.
  xkey: 'Runs',
  // A list of names of data record attributes that contain y-visitss.
  ykeys: ['Overs'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Overs','Runs'],
  // Disables line smoothing
  smooth: false
 
});
</c:forEach>
Morris.Donut({
  element: 'morris-chart-donut',
  data: [<c:forEach items="${match.scorecard.past_ings }" var="inning"><fmt:parseNumber var="inningId" type="number" value="${inning.summary.inningId}" /><c:if test="${inningId==countinn }"><c:forEach items="${inning.detailedScore.battingScorecard.t }" var="player"><c:if test="${player.isBowling==2 }"><c:forEach var="entry" items="${match.scorecard.teams}"><c:forEach var="squad" items="${entry.squad}"><c:if test="${player.playerId==squad.i }">{label: '${squad.full}', value: ${player.runs }},</c:if></c:forEach></c:forEach></c:if>
	<c:if test="${player.isBowling==3 }"><c:forEach var="entry" items="${match.scorecard.teams}"><c:forEach var="squad" items="${entry.squad}"><c:if test="${player.playerId==squad.i }">{label: '${squad.full}', value: ${player.runs }},</c:if></c:forEach></c:forEach></c:if></c:forEach></c:if></c:forEach>],
  formatter: function (y) { return y + "" ;}
});

Morris.Line({
  // ID of the element in which to draw the chart.
  element: 'morris-chart-line',
  // Chart data records -- each entry in this array corresponds to a point on
  // the chart.
  data: [<c:forEach items="${inning.summary.fw }" var="fw">{ Runs: ""+${fw.teamScore}+"", Overs: ${fw.overs} },	</c:forEach>],
  // The name of the data record attribute that contains x-visitss.
  xkey: 'Runs',
  // A list of names of data record attributes that contain y-visitss.
  ykeys: ['Overs'],
  // Labels for the ykeys -- will be displayed when you hover over the
  // chart.
  labels: ['Overs','Runs'],
  // Disables line smoothing
  smooth: false
});

Morris.Bar ({
  element: 'morris-chart-bar',
  data: [
	{device: 'iPhone', geekbench: 136},
	{device: 'iPhone 3G', geekbench: 137},
	{device: 'iPhone 3GS', geekbench: 275},
	{device: 'iPhone 4', geekbench: 380},
	{device: 'iPhone 4S', geekbench: 655},
	{device: 'iPhone 5', geekbench: 1571}
  ],
  xkey: 'device',
  ykeys: ['geekbench'],
  labels: ['Geekbench'],
  barRatio: 0.4,
  xLabelAngle: 35,
  hideHover: 'auto'
});
    </script>
<script
	src="http://startbootstrap.com/templates/sb-admin-2/js/sb-admin-2.js"></script>

