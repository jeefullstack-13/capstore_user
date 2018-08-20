<%@page import="org.capstore.user.model.Brand"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Products</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
.container{
   background-color:#f7f7f7 ;
    border: thin;
    color: black;
}
  </style>
</head>
<body>
<div class="container">
  <h2 align="center">ADD PRODUCTS</h2>
   <br>
  <br>
  <form:form style="width: 50%" action="addps" modelAttribute="addprods" method="post">
     
     <div class="form-group">
      <label for="pname">Product ID* : </label>
      <form:input type="text" class="form-control" path="productName" id="pname" required="required"/>
    </div>
     <div class="form-group">
      <label for="pname">Product Name* : </label>
      <form:input type="text" class="form-control" path="productName" id="pname" required="required"/>
    </div>
   
    <div class="form-group">
      <label for="selbrand">Brand* : </label>
  <c:if test="${!empty brands }">
       <form:select id="selbrand" path="brand.brandName">
       	<c:forEach items="${brands}" var="brand">
       		<form:option value="${brand.brandName}"></form:option>
       	</c:forEach>
       </form:select>
       </c:if>
    </div>
    
    <div class="form-group">
      <label for="selcat">Category* : </label>
  
  <c:if test="${!empty categories }">
       <form:select id="selbrand" path="category">
       	<c:forEach items="${categories}" var="category">
       		<form:option value="${category.categoryName}"></form:option>
       	</c:forEach>
       </form:select>
       </c:if>


    </div>
    
    <div class="form-group">
      <label for="price">Price* : </label>
      <form:input type="text" class="form-control" path="price" />
   </div>
    
    <div class="form-group">
      <label for="qty">Quantity* : </label>
      <form:input type="text" class="form-control" path="quantity" id="qty"/>
    </div>
    
    <div class="form-group">
      <label for="desc">Description* : </label>
      <form:textarea class="form-control" path="description" rows="5" id="desc"></form:textarea>
    </div>
    
     <div class="form-group">
      <label for="desc">No. of views* : </label>
      <form:input type="text" class="form-control" path="noOfViews" ></form:input>
    </div>
    <%-- <div class="form-group">
      <label for="expd">Expiry Date* : </label>
      <form:input type="date" path="expiryDate" class="form-control" id="expd" />
    </div>
    <div>
   <form:button type="button" class="btn btn-primary btn-md">Upload Image</form:button> 
     
    </div> --%>
    
    <br>
    <br>
    <div>
     <form:button type="submit" class="btn btn-primary btn-md" value="Add">Add Product</form:button>
     <form:button type="reset" class="btn btn-primary btn-md" value="Cancel">Cancel</form:button>
    </div> 
  </form:form>
</div>

</body>
</html>
