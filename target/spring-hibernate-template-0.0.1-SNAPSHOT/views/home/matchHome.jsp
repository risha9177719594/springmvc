<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<title>ScoreIt IPL 2014 ${match.matchName}</title>
<script type="text/javascript">
	function test(id) {
		var urlTemp = "/ipl/liveScore/" + id
		var st;
		$.ajax({
			url : urlTemp,
			success : function(result) {
				//alert(result);
				st = result;
				var str =result;
				var res = str.split(",,");
				//alert(st);
				strricker=res[0];
				nonstricker=res[1];
				ower=res[2];
				$("#stricker").html(strricker);
				$("#nonstricker").html(nonstricker);
				$("#bower").html(ower);
			}
		});
		//return st;
		alert("raj");
		//window.setTimeout(test1(st),1000);
		test1(st);

	}
</script>
<div class="container">
	<div class="row">
		<div class="jumbotron">
				<c:if test="${not empty match}">

					
									<H2>${match.matchName}</H2>
									<p>
									
										<label class="control-label"><i class="fa fa-calendar-o"></i>
											${match.startDate}</label>
									
										</br>
										<label class="control-label">Venue : ${match.venue}</label>
									
										</br>
										<label class="control-label">Status : ${match.status}</label>
									</p>
									
										<label class="control-label">Teams : </label>
									
									<div class="container">
									<div class="row">
  
									<c:forEach var="entry" items="${match.teams.lT}">
									<div class="col-sm-6 col-md-4">
										<div class="thumbnail1"><div class="caption pull-right">
											<c:if test="${entry.teamId == 194}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/kxip.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 191}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/csk.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 197}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/rr.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 195}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/kkr.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 192}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/srh.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 190}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/rcb.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 196}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/mi.png"
													alt="${entry.longName}"></a>
											</c:if>
											<c:if test="${entry.teamId == 193}">
												<a href="#"> <img
													src="http://myrisha3.herokuapp.com/resources/img/dd.png"
													alt="${entry.longName}"></a>
											</c:if>
											</div>
											<div class="caption">
												<label class="control-label"><a
													href="/ipl/teamId/${entry.teamId}">${entry.longName}</a></label><c:if test="${entry.isHome}">
												<span class="fa fa-home"></span>
											</c:if>

											<c:if test="${entry.winning}">
												<i class="fa fa-trophy"></i>
											</c:if>
											</div>


											
											
										</div></div>
									</c:forEach>
									
									</div>
									</div>
									<div class="container">
									<div class="row">
									<div class="col-sm-11 col-md-5">
									<c:if test="${match.resultText != 'To Be Played'}">
									<div class="panel panel-scoreIt">
									<div class="panel-heading"><h3>Match Summary<a href="javascript:test(${match.matchId});"><i class="fa fa-repeat fa-spin pull-right"></i></a></h3></div>
									<div class="panel-body">
									    <c:if test="${match.priority < 5}">
												
												<i class="fa fa-user fa-fw"></i><i class="fa fa-play-circle fa-spin"></i><div id="stricker"> ${match.batsmen.striker.shortName} :
															${match.batsmen.striker.runs}  off
															${match.batsmen.striker.balls}</div>
												</br>
												<i class="fa fa-user"></i><div id="nonstricker">${match.batsmen.nonStriker.shortName} :
															${match.batsmen.nonStriker.runs}  off
															${match.batsmen.nonStriker.balls}</div>
												</br>
												<i class="fa fa-user"></i><i class="fa fa-spinner fa-spin"></i><div id="bower">${match.bowlers.currentBowler.shortName} :
															${match.bowlers.currentBowler.overs} , ${match.bowlers.currentBowler.runs} ,
															${match.bowlers.currentBowler.wickets}
															</div>
												</br>
											</c:if>
										<c:forEach var="inningsBat" items="${match.innings.lI}">
											<c:forEach var="teamN" items="${match.teams.lT}">
													<c:if test="${teamN.teamId == inningsBat.battingTeamId}">
														${teamN.shortName} :
															${inningsBat.runs} for ${inningsBat.wickets} off
															${inningsBat.overs}
													</c:if>
												</c:forEach>
											
										</c:forEach>
									
									</div>
									</div></c:if>
									</div>
									</div></div>
									<div class="controls">
										<label class="control-label">Result
											:${match.resultText}</label>
									</div>



				</c:if>



			<hr class="soften" />


		</div>

	</div>
</div>