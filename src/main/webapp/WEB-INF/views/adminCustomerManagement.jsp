<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped">
            <thead>
            <tr>
                <th>customer Id</th>
                <th>customer Name</th>
                <th>email Id</th>

            </tr>
            </thead>
            <tbody>
            <c:forEach items="${customerList}" var="customer">
                <tr>
                    <td>${customer.customerId}</td>
                    <td>${customer.customerName}</td>
                    <td>${customer.emailId}</td>
                   
                </tr>
            </c:forEach>
            </tbody>
        </table>

</body>
</html>