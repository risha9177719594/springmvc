<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {
	background: #f9fee8;
	margin: 0;
	padding: 20px;
	text-align: center;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #666666;
}

.error_page {
	width: 600px;
	padding: 50px;
	margin: auto;
}

.error_page h1 {
	margin: 20px 0 0;
}

.error_page p {
	margin: 10px 0;
	padding: 0;
}

a {
	color: #9caa6d;
	text-decoration: none;
}

a:hover {
	color: #9caa6d;
	text-decoration: underline;
}
</style>

</head>
<body>
	<div class="error_page">
		<h1>We're sorry...</h1>
		<p>The page you are looking for cannot be found.</p>
		<p>There might be a typing error in the URL.
		 Please check the URL.</p>
		<p>
			<a href='<s:url value="/"></s:url>'>Return to the homepage</a>
		</p>
	</div>	

</body>
</html>