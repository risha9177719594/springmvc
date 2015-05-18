<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>ICC cricket world cup 2015 ScoreIt Cricket 2014 Live Scores</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="ICC cricket world cup 2015, IPL 7 Season, IPL 2014, IPL Teams,m s dhoni retire from test cricket, IPL Schedule, IPL Live Score, IPL Results">
<meta name="author" content="Risha Raj, Rajendar Bommidi">
<!-- Le styles -->
<link href='<c:url value="/resources/bootStrap/css/bootstrap.min.css"/>'
	rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
	padding-bottom: 40px;
}
</style>
<link
	href='<c:url value="/resources/bootStrap/css/bootstrap-re.min.css"/>'
	rel="stylesheet">

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="../assets/js/html5shiv.js"></script>
    <![endif]-->

<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="../assets/ico/favicon.png">
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


	<div class="container">

		<!-- Main hero unit for a primary marketing message or call to action -->
		<div class="">
			<tiles:insertAttribute name="header"></tiles:insertAttribute>
		</div>

		<!-- Example row of columns -->
		<div class="row">
			<div class="span3">
				<tiles:insertAttribute name="body1"></tiles:insertAttribute>
			</div>
			<div class="span9">
				<tiles:insertAttribute name="body2"></tiles:insertAttribute>
			</div>
		</div>



		<tiles:insertAttribute name="footer"></tiles:insertAttribute>



	</div>
	<!-- /container -->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src='<c:url value="/resources/js/jquery-1.9.1.min.js"/>'></script>
	<script src='<c:url value="/resources/bootStrap/js/bootstrap.min.js"/>'></script>

</body>
</html>
