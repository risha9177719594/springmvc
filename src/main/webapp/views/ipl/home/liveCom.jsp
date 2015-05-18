<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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