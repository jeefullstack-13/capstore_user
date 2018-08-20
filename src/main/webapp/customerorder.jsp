<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Orders</title>
</head>
<body>
<h1 align="center"> Your Orders</h1>
<hr>

<fieldset style="margin-left: 10px;">

<form:form  modelAttribute="orders">

<div style="border-top: 1px solid;">
	
	
	
	<table>
		<tr>
			<th>Order Id</th>
			<th>Order Date</th>
			<th>Items</th>
			<th>Delivery Status</th>
			<th>Return Goods</th>
			</tr>
		<c:if test="${!empty orders }">
		<c:forEach items="${orders}" var="order">
			<tr>
				<td>${order.orderId }</td>
				<td>
				<fmt:formatDate value="${order.orderDate}" pattern="dd-MMM-yyyy"/>
				</td>
				<td>${orderId. }</td>				
				<td>${order.deliveryStatus }</td>
				<td><a href="return/${order.orderId}">Return Order</a></td>
			</tr>
		</c:forEach>
			</c:if>	
	</table>

	</div>
	</form:form>
</fieldset>
</body>
</html>