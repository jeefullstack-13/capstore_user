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
<tr>
<c:if test="${! empty customers}">
	<td>http://localhost:8083/capstore/verify/ChangePassword/"${customers.emailId}"/${customers.password}</td>
</c:if>
<c:if test="${! empty merchants}">
	<td>"${merchants.emailId}"/${merchants.password}</td>
</c:if>
<c:if test="${! empty admin}">
	<td>"${admin.email}"/${admin.password}</td>
</c:if>
</tr>
</table>
<a href="encryptLink">Click to reset</a>
</body>
</html>