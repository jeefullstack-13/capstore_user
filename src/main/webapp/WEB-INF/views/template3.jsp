<!DOCTYPE html>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %> 

<html lang="en">
<head>
  <title>CapStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href=".\resource\css\footer.css">
  <link rel="stylesheet" href=".\resource\css\header.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<%@ include file="header.jsp" %>   
<body>


<form action="sendMail">
<table>
<tr>
	<th>CustomerId</th>
	<th>CustomerName</th>
	<th>PhoneNumber</th>
	<th>EmailId</th>
	<th>DateOfBirth</th>
	
</tr>
<c:if test="${!empty customers}">

	<c:forEach items="${customers}" var="customer">
		<tr>
			<td>${ customer.customerId}</td>
			<td>${ customer.customerName}</td>
			<%-- <td>
				<img alt="${ product.attractionName}" src="${product.attractionUrl }" height="200px" width="200px">
			</td> --%>
			<td>${ customer.phoneNumber}</td>
			<td>${ customer.emailId}</td>
			<td>${ customer.dateOfBirth}</td>
			
		</tr>
	
	</c:forEach>
</c:if>
	</table>
	
	
           	<p style="margin-left: 50px">
	         Choose the attraction You want To Send :<select name="selproduct">
					<c:if test="${!empty products}">
						<c:forEach items="${products}" var="product">
						
					<option value="${product.attractionId}">${product.description},id=${product.attractionId}"></option>
						</c:forEach>
					</c:if>
				</select>
	</p>
	<br>
	<div style="margin-left: 100px"><input type="submit" value="send Email"></div>
	
</form>
<%@  include file="footer.jsp" %>