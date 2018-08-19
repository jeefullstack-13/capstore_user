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
                <th>product Id</th>
                <th>product name</th>
                <th>price</th>
				<th>Category</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${inventoryList}" var="inventory">
                <tr>
                    <td>${inventory.productId}</td>
                    <td>${inventory.productName}</td>
                    <td>${inventory.price}</td>
                   <td>${inventory.category}</td>
                  
                </tr>
            </c:forEach>
            </tbody>
        </table>

</body>
</html>