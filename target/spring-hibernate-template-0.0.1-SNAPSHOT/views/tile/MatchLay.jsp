<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<meta charset="utf-8">
<title>ICC cricket world cup 2015 ScoreIt<c:forEach var="entry"
		items="${match.teams.lT}">
									${entry.longName}
									</c:forEach></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="ICC cricket world cup 2015, ScoreIt Cricket, cricket,cricket news,live cricket,cricket scores,ipl,ashes cricket,m s dhoni retire from test cricket,sachin tendulkar,ball by ball commentary ${match.scorecard.matchNumber } ${match.scorecard.ms } , ${match.scorecard.series.series_name} <c:if test='${not empty fixturesF}'> <c:forEach var='matchFix' items='${fixturesF.match}'><c:if test='${not empty matchFix}'>${matchFix.matchNo} ${matchFix.startDate} : ${matchFix.status}<c:forEach var='entry' items='${matchFix.team}'>${entry.team}</c:forEach></c:if></c:forEach></c:if>" />
<meta name="keywords" content="ICC cricket world cup 2015, ScoreIt Cricket, cricket,cricket news,live cricket,cricket scores,ipl,ashes cricket,m s dhoni retire from test cricket,sachin tendulkar,ball by ball commentary ${match.scorecard.matchNumber } ${match.scorecard.ms } , ${match.scorecard.series.series_name} <c:if test='${not empty fixturesF}'> <c:forEach var='matchFix' items='${fixturesF.match}'><c:if test='${not empty matchFix}'>${matchFix.matchNo} ${matchFix.startDate} : ${matchFix.status}<c:forEach var='entry' items='${matchFix.team}'>${entry.team}</c:forEach></c:if></c:forEach></c:if>" />
<meta name="author" content="rajendar bommidi, risha raj, myRisha" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="ICC cricket world cup 2015, ScoreIt Cricket, cricket,cricket news,live cricket,cricket scores,ipl,ashes cricket,m s dhoni retire from test cricket,sachin tendulkar,ball by ball commentary ${match.scorecard.matchNumber } ${match.scorecard.ms } , ${match.scorecard.series.series_name} <c:if test='${not empty fixturesF}'> <c:forEach var='matchFix' items='${fixturesF.match}'><c:if test='${not empty matchFix}'>${matchFix.matchNo} ${matchFix.startDate} : ${matchFix.status}<c:forEach var='entry' items='${matchFix.team}'>${entry.team}</c:forEach></c:if></c:forEach></c:if> IPL 7 Season, IPL 2014, IPL Teams, IPL Schedule, IPL Live Score, IPL Results">
<meta name="author" content="Risha Raj, Rajendar Bommidi">
<!-- Le styles -->
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<link
	href='/resources/bootStrap/css/bootstrap.min.css'
	rel="stylesheet" />
<link
	href='/resources/bootStrap/css/footer.css'
	rel="stylesheet" />
<link
	href='/resources/bootStrap/css/carousel.css'
	rel="stylesheet" />
<link
	href='/resources/bootStrap/css/fixturesCarousel.css'
	rel="stylesheet" />
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400italic,700italic,800italic,400,700,800"
	rel="stylesheet" type="text/css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
body {
	padding-top: 50px;
	padding-bottom: 40px;
}
</style>
<script
	src='http://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js'
	type='text/javascript'></script>
<script>
	(function(i, s, o, g, r, a, m) {
		i['GoogleAnalyticsObject'] = r;
		i[r] = i[r] || function() {
			(i[r].q = i[r].q || []).push(arguments)
		}, i[r].l = 1 * new Date();
		a = s.createElement(o), m = s.getElementsByTagName(o)[0];
		a.async = 1;
		a.src = g;
		m.parentNode.insertBefore(a, m)
	})(window, document, 'script', '//www.google-analytics.com/analytics.js',
			'ga');

	ga('create', 'UA-53868840-1', 'auto');
	ga('send', 'pageview');
</script>
</head>

<body>

	<tiles:insertAttribute name="header"></tiles:insertAttribute>
	<tiles:insertAttribute name="matchFixtures"></tiles:insertAttribute>
	<tiles:insertAttribute name="body"></tiles:insertAttribute>
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>
	<script
		src='//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js'></script>


	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

</body>
</html>
