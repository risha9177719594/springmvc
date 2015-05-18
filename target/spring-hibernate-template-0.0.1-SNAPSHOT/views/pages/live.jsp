<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="alert alert-warning alert-dismissable">
	<button type="button" class="close" data-dismiss="alert"
		aria-hidden="true">&times;</button>
	<strong>Warning!</strong> Please avoid using this feature unless you
	have no other choice left. Use it having the add locker installed on
	your browser.
</div>
<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-8">
			<c:if test="${not empty streamId}">
				<c:if test="${streamId == 1}">
					<IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO
						WIDTH=600 HEIGHT=420 SRC="http://www.streamer247.com/sonysix.php"></IFRAME>
				</c:if>
				<c:if test="${streamId == 2}">
					<IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO
						WIDTH=600 HEIGHT=420 SRC="http://www.streamer247.com/max.php"></IFRAME>
				</c:if>
				<c:if test="${streamId == 3}">
					<IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO
						WIDTH=600 HEIGHT=420
						SRC="http://www.streamer247.com/tencricket.php"></IFRAME>
				</c:if>
				<c:if test="${streamId == 4}">
					<IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO
						WIDTH=600 HEIGHT=420
						SRC="http://www.streamer247.com/starcricket.php"></IFRAME>
				</c:if>
				<c:if test="${streamId == 5}">
					<IFRAME FRAMEBORDER=0 MARGINWIDTH=0 MARGINHEIGHT=0 SCROLLING=NO
						WIDTH=600 HEIGHT=420
						SRC="http://www.streamer247.com/starsports.php"></IFRAME>
				</c:if>
				<c:if test="${streamId == 6}">
					<iframe frameborder="0" height="420" marginheight="0"
						marginwidth="0" scrolling="NO"
						src="http://www.streamer247.com/espn.php" width="600"></iframe>
				</c:if>
			</c:if>

		</div><c:if test="${not empty fixtures}">
			
		<div class="col-sm-6 col-md-4"><div class="panel panel-scoreIt">
									
									<c:forEach var="matchFix" items="${fixtures.mat}">
									<c:if test="${matchFix.priority==4}"><div class="panel-heading">
										<h3>${matchFix.matchName}<a href="javascript:test(${matchFix.matchId});"><i class="fa fa-repeat fa-spin pull-right"></i></a></h3>
										</div><div class="panel-body">
									    <%-- <c:if test="${match.priority < 5}">
												
												<i class="fa fa-user fa-fw"></i><i class="fa fa-play fa-spin"></i> ${match.batsMen.striker.shortName} :
															${match.batsMen.striker.runs}  off
															${match.batsMen.striker.balls}
												</br>
												<i class="fa fa-user"></i>${match.batsMen.nonStriker.shortName} :
															${match.batsMen.nonStriker.runs}  off
															${match.batsMen.nonStriker.balls}
												</br>
												<i class="fa fa-user"></i><i class="fa fa-spinner fa-spin"></i>${match.bowlers.currentBowler.shortName} :
															${match.bowlers.currentBowler.overs} , ${match.bowlers.currentBowler.runs} ,
															${match.bowlers.currentBowler.wickets}
															
												</br>
											</c:if> --%>
										<c:forEach var="inningsBat" items="${matchFix.innings.lI}">
											<c:forEach var="teamN" items="${matchFix.teams.lT}">
													<c:if test="${teamN.teamId == inningsBat.battingTeamId}">
														${teamN.shortName} :
															${inningsBat.runs} for ${inningsBat.wickets} off
															${inningsBat.overs}
													</c:if>
												</c:forEach>
											
										</c:forEach>
									</div>
									<div id="div1"></div>
									</c:if>
									</c:forEach>
									
									
									</div></div></c:if>
	</div>
</div>
