<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1 align="center">Your encrypted password is here</h1>
<table>
<c:forEach items="${customers}" var="customer">
<tr>
	<td>${customer.password}</td>
</tr>
</c:forEach>
</table>
<a href="encryptLink">Click to reset</a>
</body>
</html>