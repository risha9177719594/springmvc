<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="fixCarousel slide" data-ride="fixCarousel" id="myCarousel1">
	<!-- Indicators -->
	<ol class="carousel-indicators">
		<c:if test="${not empty fixtures}">
			<c:forEach var="matchFix" items="${fixtures.mat}" varStatus="i">
				<c:if test="${i==4}">
					<li class="active" data-slide-to="${i}" data-target="#myCarousel1"></li>
				</c:if>
				<c:if test="${i!=4}">
					<li class="" data-slide-to="${i}" data-target="#myCarousel1"></li>
				</c:if>
			</c:forEach>
		</c:if>

	</ol>
	<div class="fixCarousel-inner">
		<c:if test="${not empty fixtures}">
			<c:forEach var="matchFix" items="${fixtures.mat}" varStatus="i">
				<c:if test="${i==4}">
					<div class="item  active">
						<div class="container">
							<div class="fixCarousel-caption">
								<div class="row">
									<c:if test="${not empty matchFix}">

										<li class="span3">
											<div>
												<div class="blockDtl">
													<a href="/ipl/id/${matchFix.matchid}">
														${matchFix.mtype}</a>
													<div class="control-group">
														<label class="control-label"> <i
															class="fa fa-calendar-o"></i> ${matchFix.StartDate} :
															${matchFix.status}
														</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.team}">
															<label class="control-label"><a
																href="/ipl/teamId/${entry.teamid}">${entry.team}</a></label>

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
				</c:if>
				<c:if test="${i!=4}">
					<div class="item">
						<div class="container">
							<div class="fixCarousel-caption">
								<div class="row">
									<c:if test="${not empty matchFix}">

										<li class="span3">
											<div>
												<div class="blockDtl">
													<a href="/ipl/id/${matchFix.matchid}">
														${matchFix.mtype}</a>
													<div class="control-group">
														<label class="control-label"> <i
															class="fa fa-calendar-o"></i>${matchFix.StartDate} :
															${matchFix.status}
														</label>
													</div>
													<div class="control-group">
														<label class="control-label">Teams</label>
														<c:forEach var="entry" items="${matchFix.team}">
															<label class="control-label"><a
																href="/ipl/teamId/${entry.teamid}">${entry.team}</a></label>
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
				</c:if>
			</c:forEach>
		</c:if>
	</div>
	<a class="left carousel-control" data-slide="prev" href="#myCarousel1"><span
		class="icon icon-prev"></span></a> <a class="right carousel-control"
		data-slide="next" href="#myCarousel1"><span class="icon icon-next"></span></a>
</div>