<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<style>
.modal-dialog {
	width: 1050px;
}
</style>
<script>
	function openIt(url) {

		BootstrapDialog
				.show({
					message : $('#'+url).html(),
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
	<div class="row well">
		<div class="col-sm-6 col-md-4 thumbnail">
			<div class="">
				<div class="">
					<h2>
						<a href="#"><i class="fa fa-table"></i></a>Standings
					</h2>
					<p>ICC Team Rankings</p>
				</div>
				<div class="">
					<div class="table-responsive">
						<table
							class="table table-bordered table-hover table-striped tablesorter">
							<thead>
								<tr>
									<th>Team</th>
									<th>Test</th>
									<th>1Day</th>
									<th>T20</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="team" items="${teams.team}" varStatus="i">
									<tr>
										<td><a href="/cricket/teamId/${team.teamId }">${team.teamName }</a></td>
										<c:forEach items="${team.rank }" var="type">
											<td>${type }</td>
										</c:forEach>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
				</div>
			</div>
		
		</div>

		<!-- <div class="col-sm-6 col-md-4">
			<h2>
				<i class="fa fa-users"></i>Teams
			</h2>

			

		</div> -->
		<div class="col-sm-6 col-md-8">

			<div class="row">
				<div class="col-sm-6 col-md-6 thumbnail">
					<img class="media-object"
						src="http://blogs.vmware.com/vmware/files/2013/12/News-Photo-for-Corporate-Blog.jpg"
						alt="${itm.title}" height="65">
					<c:if test="${not empty news}">
						<c:forEach var="itm" items="${news}" varStatus="i">
							<c:if test="${i.count<4}">

								<div class="media">
									<a class="pull-left" href="javascript:openIt('${i.count }')">
										<c:if test="${itm.thumburl != '' }">
											<img class="media-object" src="${itm.thumburl }"
												alt="${itm.title}" height="65">
										</c:if> <c:if test="${itm.thumburl == '' }">
											<img
												src="http://2.bp.blogspot.com/-21asOfQix4Q/U7rrwEg71hI/AAAAAAAAMFY/KWfPf3xNl2E/s1600/scoreitnewsitem.jpg"
												alt="${itm.title}" height="65">
										</c:if>

									</a>
									<div class="media-body">
										<h4 class="media-heading">${itm.title}</h4>
										<c:if test="${fn:length(itm.description)>160}">
											<p>${fn:substring(itm.description, 0, 160)} ...</p>
										</c:if>
										<c:if test="${fn:length(itm.description)<=160}">
											<p>${itm.description}</p>
										</c:if>
									</div>
								</div>
							</c:if>
						</c:forEach>
					</c:if>
					<div class="col-sm-6 col-md-8">
						<a href="javascript:openNews()" class="btn btn-default col-md-8"
							role="button">ViewIt...</a>
					</div>
				</div>
				<div class="col-sm-6 col-md-6 thumbnail">
					<!-- <img src="http://indianva.com/wp-content/themes/indianva/images/aboutimg.png"/> -->
					<img src="http://1.bp.blogspot.com/-VqYPSvExico/U9wEfiV7KBI/AAAAAAAAOsU/9EQ6b6ax6Ek/s1600/stamp-hire-us.png">
						<div class="carousel-caption"><a href="http://www.myrisha.in/#team" target="_blank"><h2>&nbsp;&nbsp;&nbsp;&nbsp;Hire Us&nbsp;&nbsp;&nbsp;&nbsp;<br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;Hire Us&nbsp;&nbsp;&nbsp;&nbsp;</h2></a>
					<!-- <img alt="140x140" class="avatar" data-src="holder.js/140x140"
						height="140"
						src="http://iplstatic.s3.amazonaws.com/players/100x115/107.png"
						width="140"> -->
				</div>
					<!-- <img alt="140x140" class="avatar" data-src="holder.js/140x140"
						height="140"
						src="http://iplstatic.s3.amazonaws.com/players/100x115/107.png"
						width="140"> -->
				</div>
						<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- hireAdd -->
<ins class="adsbygoogle"
     style="display:inline-block;width:320px;height:50px"
     data-ad-client="ca-pub-0723290601938478"
     data-ad-slot="7174049933"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
				</div>
			</div>
		</div>
	</div>

	<div id="test" class="collapse">
		<div id="newsDi">
			<h2>
				<i class="fa fa-list"></i>News
			</h2>

			<c:if test="${not empty news}">
				<c:forEach var="itm" items="${news}">

					<div class="media">
						<div class="media-body">
							<a href="${itm.link}" target="blank"><h4
									class="media-heading">${itm.title}</h4></a>
							<p>${itm.description}</p>
						</div>
					</div>

				</c:forEach>
			</c:if>
		</div>
		<c:if test="${not empty news}">
			<c:forEach var="itm" items="${news}" varStatus="i">
				<c:if test="${i.count<4}">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail">
							<img data-src="holder.js/300x200" alt="...">
							<div class="caption" id="${i.count }">
								<h3>${itm.title}</h3>
								<p>${itm.description}</p>
								<a href="${itm.link}" class="btn btn-default col-md-8" role="button"  target="blank">ViewIt...</a>
							</div>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</c:if>


	</div>
	<div id="footTest"></div>
	<script>
(function() {
  var flickerAPI = "https://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20cricket.series.past&format=json&diagnostics=true&env=store%3A%2F%2F0TxIGQMQbObzvU4Apia0V0&callback=";
  $.getJSON( flickerAPI, {
    tags: "mount rainier",
    tagmode: "any",
    format: "json"
  })
    .done(function( data ) {
      $.each( data.query.results.Series, function( i, item ) {
    	 
        $( "#footTest" ).html(SeriesName);
        if ( i === 3 ) {
          return false;
        }
      });
    });
})();
</script>

</div>