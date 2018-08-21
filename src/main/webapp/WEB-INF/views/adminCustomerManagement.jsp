<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<title>Insert title here</title>
</head>
<body>

	<div class="container">
		<c:if test="${!empty message }">
			<div>No product Available</div>
		</c:if>
		<div class="row">
			<div class="col-md-4">

				<!--  <div class="thumbnail"> -->
				<c:forEach items="${customerList}" var="customer">

					<div class="product-title">

						<img src="..\resources\images\login_avatar.png" alt="cust image"
							width="50" height="50" class="img-responsive">
					</div>
			</div>
			<div class="caption">

				${customer.customerId}
				<h4>Customer Name: ${customer.customerName}</h4>
				<h4 class="pull-right">Customer Mail Id: ${customer.emailId}</h4>
				<%-- <h4>Contact: ${merchant.phoneNo} </h4> --%>
				<hr>
			</div>

			<div>
				<div class="product-desc"></div>
				</c:forEach>
			</div>
			<!-- 
                </div> -->



		</div>
	</div>

</body>
</html>