<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
</head>
<body>
<form>
<div id="t">
<table>

<c:if test="${empty products }">
<center><div style="color:red">No Attraction Available currently!!!</div>
       <a href="/">Add Attraction</a>
</center>


</c:if>


<c:if test="${!empty products }">
<tr>
	<th>AttractionId</th>
	<th>AttractionName</th>
	<th>AttractionImage</th>
	<th>AttractionStatus</th>
	<th>AttractionDescription</th>
</tr>


	<c:forEach items="${products}" var="product">
		<tr>
			<td>${ product.attractionId}</td>
			<td>${ product.attractionName}</td>
			<td>
				<img alt="${ product.attractionName}" src="${product.attractionUrl }" height="200px" width="200px">
			</td>
			<td>${ product.status}</td>
			<td>${ product.description}</td>
		</tr>
	
	</c:forEach>
</c:if>
	</table>
	</div>
</form>
<%@  include file="footer.jsp" %>