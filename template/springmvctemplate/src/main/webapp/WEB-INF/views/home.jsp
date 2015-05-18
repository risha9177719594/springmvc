<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags"%>
<%@ page session="false"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Welcome to Spring world!</h1>
	<a href='<s:url value="/user/add"></s:url>'>Create New User</a>
	<a href='<s:url value="/exception"></s:url>'>Exception Testing</a>
	<a href='<s:url value="/logout"></s:url>'>Logout</a>
	<h1>Users List:</h1>
	<table>
		<tr>
			<td width="50">Id</td>
			<td width="150">Name</td>
			<td width="150">Password</td>
			<td width="50">Money</td>
		</tr>
		<c:forEach items="${users}" var="user">
			<tr>
				<td><c:out value="${user.id}" /></td>
				<td><c:out value="${user.name}" /></td>
				<td><c:out value="${user.password}" /></td>
				<td><c:out value="${user.money}" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
