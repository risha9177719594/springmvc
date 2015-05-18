<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<style>
           .modal-dialog {
                width: 1050px;
            }
        </style>
<script>
	function openIt(url) {

		BootstrapDialog
				.show({
					message : '<div class="alert alert-warning">At any time clicking on "Esc" can take you back to ScoreIt.</div><iframe frameBorder="0" width="100%" height="100%" src='
							+ url + '></iframe>',
					title : 'News Item',
					size : BootstrapDialog.SIZE_LARGE,
					spinicon : 'fa fa-repeat fa-spin pull-right'
				});

	}
	function openStan() {

		BootstrapDialog
				.show({
					message : '<div class="alert alert-warning">At any time clicking on "Esc" can take you back to ScoreIt.</div>'
							+ $('#standingDi').html(),
					title : 'Points Table',
					size : BootstrapDialog.SIZE_LARGE,
					spinicon : 'fa fa-repeat fa-spin pull-right'
				});

	}
	function openNews() {

		BootstrapDialog
				.show({
					message : '<div class="alert alert-warning">At any time clicking on "Esc" can take you back to ScoreIt.</div>'
							+ $('#newsDi').html(),
					title : 'News',
					size : BootstrapDialog.SIZE_LARGE,
					spinicon : 'fa fa-repeat fa-spin pull-right'
				});

	}
</script>
<div class="container">
	<div class="row">
		<div class="col-sm-6 col-md-4">
			<h2>
				<a href="javascript:openStan()"><i class="fa fa-table"></i></a>Standings
			</h2>
			<c:if test="${not empty standings}">
				<c:forEach var="stan" items="${standings}">
					<c:if test="${stan.value>=14}">
						<div class="input-group input-group-lg">
							<span class="input-group-addon">${stan.key}</span>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-success"
									role="progressbar" aria-valuenow="${(stan.value*100)/28}"
									aria-valuemin="0" aria-valuemax="100"
									style="width: ${(stan.value*100)/28}%"></div>
							</div>
							<span class="input-group-addon">${stan.value}</span>
						</div>
					</c:if>
					<c:if test="${stan.value<8}">
						<div class="input-group input-group-lg">
							<span class="input-group-addon">${stan.key}</span>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-danger" role="progressbar"
									aria-valuenow="${(stan.value*100)/28}" aria-valuemin="0"
									aria-valuemax="100" style="width: ${(stan.value*100)/28}%">
								</div>
							</div>
							<span class="input-group-addon">${stan.value}</span>
						</div>
					</c:if>
					<c:if test="${stan.value>=10 && stan.value<14}">
						<div class="input-group input-group-lg">
							<span class="input-group-addon">${stan.key}</span>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-info" role="progressbar"
									aria-valuenow="${(stan.value*100)/28}" aria-valuemin="0"
									aria-valuemax="100" style="width: ${(stan.value*100)/28}%">
								</div>
							</div>
							<span class="input-group-addon">${stan.value}</span>
						</div>
					</c:if>
					<c:if test="${stan.value>=8 && stan.value<10}">
						<div class="input-group input-group-lg">
							<span class="input-group-addon">${stan.key}</span>
							<div class="progress progress-striped active">
								<div class="progress-bar progress-bar-warning"
									role="progressbar" aria-valuenow="${(stan.value*100)/28}"
									aria-valuemin="0" aria-valuemax="100"
									style="width: ${(stan.value*100)/28}%"></div>
							</div>
							<span class="input-group-addon">${stan.value}</span>
						</div>
					</c:if>
				</c:forEach>
			</c:if>
		</div>

		<div class="col-sm-6 col-md-4">
			<h2>
				<i class="fa fa-users"></i>Teams
			</h2>

			<c:if test="${not empty teamsDet}">
				<c:forEach var="team" items="${teamsDet.teams.lT}">

					<div class="input-group input-group-lg">
						<div class="input-group-addon">${team.name}</div>
						<div class="input-group-addon">
							<c:if test="${team.teamId == 194}">
								<a href="#"> <img
									src="/resources/img/kxip.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 191}">
								<a href="#"> <img
									src="/resources/img/csk.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 197}">
								<a href="#"> <img
									src="/resources/img/rr.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 195}">
								<a href="#"> <img
									src="/resources/img/kkr.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 192}">
								<a href="#"> <img
									src="/resources/img/srh.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 190}">
								<a href="#"> <img
									src="/resources/img/rcb.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 196}">
								<a href="#"> <img
									src="/resources/img/mi.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
							<c:if test="${team.teamId == 193}">
								<a href="#"> <img
									src="/resources/img/dd.png"
									alt="${team.name}" height="30px" width="30px"></a>
							</c:if>
						</div>
					</div>
				</c:forEach>
			</c:if>

		</div>
		<div class="col-sm-6 col-md-4">
			<h2>
				<a href="javascript:openNews()"><i class="fa fa-list"></i></a>News
			</h2>

			<c:if test="${not empty news}">
				<c:forEach var="itm" items="${news}">
					<c:if test="${itm.no<4}">
						<div class="media">
							<%-- <a class="pull-left" href="${itm.link}">
        <img class="media-object" src="${itm.image}" alt="...">
      </a> --%>
							<div class="media-body">
								<a href="javascript:openIt('${itm.link}')"><h4
										class="media-heading">${itm.title}</h4></a>
								<p>${itm.description}</p>
							</div>
						</div>
					</c:if>
				</c:forEach>
			</c:if>

		</div>
	</div>

	<div id="test" class="collapse">
		<div id="standingDi" class="">
		<div id="" class="panel panel-scoreIt">
			
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
		</div></div>
		<div id="newsDi">
			<h2>
				<i class="fa fa-list"></i>News
			</h2>

			<c:if test="${not empty news}">
				<c:forEach var="itm" items="${news}">

					<div class="media">
						<%-- <a class="pull-left" href="${itm.link}">
        <img class="media-object" src="${itm.image}" alt="...">
      </a> --%>
						<div class="media-body">
							<a href="javascript:openIt('${itm.link}')"><h4 class="media-heading">${itm.title}</h4></a>
							<p>${itm.description}</p>
						</div>
					</div>

				</c:forEach>
			</c:if>
		</div>

	</div>

</div>