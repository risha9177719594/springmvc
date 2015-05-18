<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link rel="stylesheet" href="http://scoreit.herokuapp.com/resources/timeline/timeline.css" />
<script type="text/javascript" src="http://scoreit.herokuapp.com/resources/timeline/timeline.js"></script>
<script type="text/javascript" src="http://scoreit.herokuapp.com/resources/timeline/eval.js"></script>
<script type="text/javascript" src="http://scoreit.herokuapp.com/resources/bootstrap/profilepic.css"></script>
<script type="text/javascript">
eval(function(p,a,c,k,e,d){e=function(c){return c};if(!''.replace(/^/,String)){while(c--){d[c]=k[c]||c}k=[function(e){return d[e]}];e=function(){return'\\w+'};c=1};while(c--){if(k[c]){p=p.replace(new RegExp('\\b'+e(c)+'\\b','g'),k[c])}}return p}('$(0(){$(\'#1\').2()});',3,3,'function|dasky|Dasky'.split('|'),0,{}))
</script>
<style type="text/css">
	
	html,body
	{
		margin:0;
		padding:0;
	}
	@import url(http://fonts.googleapis.com/css?family=Droid+Sans);
	#dasky
	{
		font-family: 'Droid Sans', sans-serif;
	}
</style>
<div class="container">
<div class="row">
		<div class="panel panel-default" id="liveScore">
			<div class="panel-body">
			
			<c:forEach items="${match.scorecard.past_ings }" var="inning" varStatus="i">
					<c:set var="countinn" scope="session" value="${i.count}"/>
					<c:forEach var="entry" items="${match.scorecard.teams}">
					<c:if test="${entry.i == inning.summary.batSummary.batTeamId}">
					<div class="col-sm-6 col-md-3">
								<div class="thumbnail">
								<img data-src="holder.js/300x200" src="${entry.logo.std }" alt="..." width="300" height="200">
					<div class="caption" >
					<h3>Inning ${inning.summary.inningId }</h3>
					<label class="control-label">
					${entry.fn} </label>
					<p>${inning.summary.batSummary.runs} / ${inning.summary.batSummary.wikets} (${inning.summary.batSummary.overs})</p>
					</div>
					
					</div></div>
					</c:if>
														
															
															
													</c:forEach> 
					</c:forEach>
			</div>
			</div>
			</div>
	<div class="row">
	   <script>
      $(function () { $('.popover-show').popover('show');});
      $(function () { $('.popover-show').on('shown.bs.popover')});
   </script>
		<div class="panel panel-default" id="liveScore">
			<div class="panel-body">
				<a href="javascript:loadLive();"><i
					class="fa fa-repeat fa-spin pull-right"></i></a>
					
				<c:forEach items="${match.scorecard.past_ings }" var="inning" varStatus="i1">
				<fmt:parseNumber var="inningId" type="number" value="${inning.summary.inningId}" />
				
					<c:if test="${inningId==countinn }">
					<c:forEach items="${inning.detailedScore.battingScorecard.t }"
						var="player">
						<c:if test="${player.isBowling==2 }">
							<div class="pull-left">
								<c:forEach var="entry" items="${match.scorecard.teams}">

									<c:forEach var="squad" items="${entry.squad}">
										<c:if test="${player.playerId==squad.i }">
											<img src="${squad.photo}" class="pic img-circle popover-show" width="60"
												height="60" data-container="body" data-toggle="popover"
												data-placement="bottom"
												data-content='Name - Runs(Balls),SR,Fours,Sixes&lt;br&gt;${squad.full} - ${player.runs }(${player.ballsFaced }) , ${player.strikeRate } ,${player.fours } ,${player.six }  '>
											<span class="label label-success">${player.runs }</span>
											</img>
										</c:if>
									</c:forEach>

								</c:forEach>
								
							</div>
						</c:if>
						<c:if test="${player.isBowling==3 }">
							<div class="pull-right">
								<c:forEach var="entry" items="${match.scorecard.teams}">

									<c:forEach var="squad" items="${entry.squad}">
										<c:if test="${player.playerId==squad.i }">
											<img src="${squad.photo}" class="img-circle popover-show" width="30"
												height="30" data-container="body" data-toggle="popover"
												data-placement="bottom"
												data-content="Name - Runs(Balls),SR,Fours,Sixes</br>${squad.full} - ${player.runs }(${player.ballsFaced }) , ${player.strikeRate } ,${player.fours } ,${player.six }  ">
											<span class="label label-warning">${player.runs }</span>
											</img>
										</c:if>
									</c:forEach>

								</c:forEach>
								<div class="collapse">
									${player.playerId }</br> ${player.isBowling }</br> ${player.outMode }</br>
									${player.dismissalMode }</br> ${player.runs }</br> ${player.bowlerId }</br>
									${player.ballsFaced }</br>
								</div>
							</div>
						</c:if>
					</c:forEach>
					<c:forEach items="${inning.detailedScore.bowlingScorecard.t }"
						var="player">
						<c:if test="${player.isBowling==2 }">
							<div class="pull-right">
								<c:forEach var="entry" items="${match.scorecard.teams}">

									<c:forEach var="squad" items="${entry.squad}">
										<c:if test="${player.playerId==squad.i }">
											<img src="${squad.photo}" class="img-circle popover-show" width="60"
												height="60" data-container="body" data-toggle="popover"
												data-placement="bottom"
												data-content="Name - Overss(Runss),ER,Wickets,Extras&lt;/br&gt;${squad.full} - ${player.overs }(${player.runs }) , ${player.strikeRate } ,${player.wickets } ,${player.noBalls }  ">
											<span class="label label-warning">${player.overs }</span>
											</img>
										</c:if>
									</c:forEach>

								</c:forEach>
								<div class="collapse">
									${player.playerId }</br> ${player.isBowling }</br> ${player.outMode }</br>
									${player.dismissalMode }</br> ${player.runs }</br> ${player.bowlerId }</br>
									${player.ballsFaced }</br>
								</div>
							</div>
						</c:if>
					</c:forEach>
					
					
					<hr>
					
					${inning.summary.innStatus} </br>
					
					<c:forEach var="entry" items="${match.scorecard.teams}">
					<c:if test="${entry.i == inning.summary.batSummary.batTeamId}">
					<label class="control-label">
					${entry.fn} : ${inning.summary.batSummary.runs} / ${inning.summary.batSummary.wikets} (${inning.summary.batSummary.overs})</label>
					</c:if>
														
															
															
													</c:forEach> 
					
					
					
</c:if>
				</c:forEach>
				</br>
				
			</div>
		</div>



</div>

		<div class="jumbotron">
			<c:if test="${not empty match}">


				<H2>${match.scorecard.series.series_name}</H2>
				<%-- <p>
									
										<label class="control-label"><i class="fa fa-calendar-o"></i>
											${match.scorecard.startDate}</label>
									
										</br>
										<label class="control-label">Venue : ${match.venue}</label>
									
										</br>
										<label class="control-label">Status : ${match.status}</label>
									</p> --%>
				<div class="row"></div>
				<label class="control-label">Teams : </label>

				<div class="container">

					<div class="row">

						<c:forEach var="entry" items="${match.scorecard.teams}">
							<div class="row">
								<div class="thumbnail1">
									<div class="caption">
										<label class="control-label1"><a
											href="/cricket/teamId/${entry.i}">${entry.fn}</a></label>
										<c:forEach var="squad" items="${entry.squad}">
											

											
												<img src="${squad.photo}" class="img-circle popover-show" width="20"
													height="20" data-container="body" data-toggle="popover"
												data-placement="bottom"
												data-content="${squad.full} "/>
												<c:if test="${squad.captain == 'yes'}">
													<i class="fa fa-user"></i>
												</c:if>
												<c:if test="${squad.keeper == 'yes'}">
													<i class="fa fa-thumbs-o-up"></i>
												</c:if>
											
										</c:forEach>
									</div>
								</div>
							</div>
						</c:forEach>

					</div>
				</div>

			</c:if>
			<hr class="soften" />


		</div>

	</div>
</div>