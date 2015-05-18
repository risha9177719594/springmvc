<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="fixCarousel slide" data-ride="fixCarousel" id="myCarousel1">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<c:if test="${not empty fixturesP}">
			<c:forEach var="matchFix" items="${fixturesP.match}" varStatus="i">
				<li class="" data-slide-to="${i.count-1}" data-target="#myCarousel1"></li>
				</c:forEach>
				</c:if>
				<li class="active" data-slide-to="5" data-target="#myCarousel1"></li>
				<c:if test="${not empty fixturesF}">
			<c:forEach var="matchFix" items="${fixturesF.match}" varStatus="i">
				<li class="" data-slide-to="${i.count+5}" data-target="#myCarousel1"></li>
				</c:forEach>
				</c:if>
		
	</ol>
	<div class="fixCarousel-inner">
		<c:if test="${not empty fixturesP}">
			<c:forEach var="matchFix" items="${fixturesP.match}" varStatus="i">	
				
				<div class="item">
					<!-- <img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src=""> -->
					<div class="container">
						<div class="fixCarousel-caption">
							<div class="row">
								<c:if test="${not empty matchFix}">

									<li class="span3">
										<div>
											<div class="blockDtl">
											<a href="/cricket/id/${matchFix.matchid}">
													${matchFix.matchNo}</a>
													<div class="control-group">
														<label class="control-label">
															<i class="fa fa-trophy"></i>
															<c:forEach var="entry1" items="${matchFix.result.team}">
															<c:if test="${entry1.matchwon == 'yes'}">
														<label class="control-label">${entry1.team}</label>
															</c:if>
													</c:forEach>
													 Won by ${matchFix.result.by} ${matchFix.result.how}</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.result.team}">
														<label class="control-label"><a
																href="/cricket/teamId/${entry.id}">${entry.team}</a></label>
															
															<c:if test="${entry.matchwon == 'yes'}">
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
					</div>
				</div>
			</c:forEach>
		</c:if>
		
		
		
		<c:if test="${not empty fixturesL}">
			<div class="item active">
					<!-- <img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src=""> -->
					<div class="container">
						<div class="fixCarousel-caption">
							<div class="row">
							<c:forEach var="livFixScore" items="${fixturesL.scorecardList}" varStatus="i">
							<c:if test="${not empty livFixScore}">
									<c:if test="${fn:length(fixturesL.scorecardList) == 2}">
									   <li class="col-md-6">
									</c:if>
									<c:if test="${fn:length(fixturesL.scorecardList) == 1}">
									   <li class="span3">
									</c:if>
									
										<div>
											<div class="blockDtl">
											<a href="/cricket/id/${livFixScore.mid}">
													${livFixScore.ms} : ${livFixScore.matchNumber}</a>
													
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${livFixScore.teams}" varStatus="tC">
														<label class="control-label"><a
																href="/cricket/teamId/${entry.i}">${entry.fn}</a></label>
																<c:if test="${tC.index==0 }">&nbsp;&nbsp;V/S&nbsp;&nbsp;</c:if>
															
															
													</c:forEach>
													</div>
													
													

											</div>
										</div>
									</li>

								</c:if>
									</c:forEach>
								<%-- <c:if test="${not empty fixturesL.scorecard}">
									
									<li class="span3">
										<div>
											<div class="blockDtl">
											<a href="/cricket/id/${fixturesL.scorecard.mid}">
													${fixturesL.scorecard.ms} : ${fixturesL.scorecard.matchNumber}</a>
													
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${fixturesL.scorecard.teams}">
														<label class="control-label"><a
																href="/cricket/teamId/${entry.i}">${entry.fn}</a></label>
															
															
													</c:forEach>
													</div>
													
													

											</div>
										</div>
									</li>

								</c:if> --%>
								<c:if test="${empty fixturesL.scorecard && fn:length(fixturesL.scorecardList) == 0}">

									<li class="span3">
										<div>
											<div class="blockDtl">
											No Live Matches
													
													<div class="control-group">
														<label class="control-label">Scroll Left or Right for the Results :)</label>
														
													</div>
													
													

											</div>
										</div>
									</li>

								</c:if>
							</div>
						</div>
					</div>
				</div> 
		</c:if>
		
		
		
		
		
		<c:if test="${not empty fixturesF}">
			<c:forEach var="matchFix" items="${fixturesF.match}" varStatus="i">
				
				<div class="item">
					<!-- <img alt="First slide"
				data-src="holder.js/900x500/auto/#777:#7a7a7a/text:First slide"
				src=""> -->
					<div class="container">
						<div class="fixCarousel-caption">
							<div class="row">
								<c:if test="${not empty matchFix}">

									<li class="span3">
										<div>
											<div class="blockDtl">
											<a href="/cricket/id/${matchFix.matchid}">
													${matchFix.matchNo}</a>
													<div class="control-group">
														<label class="control-label">
															<i class="fa fa-calendar-o"></i> ${matchFix.startDate} : ${matchFix.status}</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.team}">
														<label class="control-label"><a
																href="/cricket/teamId/${entry.teamid}">${entry.team}</a></label>
															
															<c:if test="${entry.matchwon}">
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
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
	<a class="left carousel-control" data-slide="prev" href="#myCarousel1"><span
		class="icon icon-prev"></span></a> <a class="right carousel-control"
		data-slide="next" href="#myCarousel1"><span class="icon icon-next"></span></a>
</div>