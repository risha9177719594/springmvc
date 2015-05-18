<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Login</title>
<style>
.error {
	color: #ff0000;
}

.errorblock {
	color: #000;
	background-color: #ffEEEE;
	border: 3px solid #ff0000;
	padding: 8px;
	margin: 16px;
}
</style>
</head>
<body>
	<br />
	<br />

	<form:form method="post" modelAttribute="user">
		<table align="center" width="320" cellpadding='2' cellspacing='0'
			border='0'>
			<tr>
				<td bgcolor="blue"><table cellpadding='0' cellspacing='0'
						border='0' width='100%'>
						<tr height="22">
							<td bgcolor="blue" align=center
								style="padding: 2; padding-bottom: 4"><b><font size=-1
									color="white" face="verdana,arial">Login</font></b></td>
						</tr>
						<tr>
							<td bgcolor="white" style="padding: 5"><br>
								<table align="center">
									<tr>
										<td align="center" colspan="2"><form:errors
												cssClass="error" /></td>
									</tr>
									<tr>
										<td>User Name&nbsp;&nbsp;:&nbsp;&nbsp;</td>
										<td><form:input path="name" /></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><form:errors path="name" cssClass="error" /></td>
									</tr>
									<tr>
										<td>Password&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;</td>
										<td><form:password path="password" /></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td><form:errors path="password" cssClass="error" /></td>
									</tr>
									<tr>
										<td>&nbsp;</td>
										<td>&nbsp;&nbsp;&nbsp;<input type="submit" value="Login"></td>
									</tr>
									<tr>
										<td colspan=2 align="center"></td>
									</tr>
								</table></td>
						</tr>
					</table></td>
			</tr>
		</table>
	</form:form>
</body>
</html>