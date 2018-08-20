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
   <%--  
    <div class="form-group">
      <label for="pname">Product Name* : </label>
      <form:input type="text" class="form-control" path="productName" id="pname" pattern="[A-Za-z]{3,}" 
      title="Name should not contain any number or special character" required="required"/>
    </div> --%>
   
   <%--  <div class="form-group">
      <label for="selbrand">Brand* : </label>
      <form:input path="brand.brandName"/>
       <form:select id="selbrand" path="brand.brandName" />
    </div> --%>
    
   <%--  <div class="form-group">
      <label for="selcat">Category* : </label>
  <form:select path="category" items="${categoryName}">
      
    </form:select>

	
    </div>
    
    <div class="form-group">
      <label for="price">Price* : </label>
      <form:input type="text" class="form-control" path="price" />
   </div>
    
    <div class="form-group">
      <label for="qty">Quantity* : </label>
      <form:input type="text" class="form-control" path="quantity" id="qty" pattern="[0-9]+(\\.[0-9][0-9]?)?"
      title="Quantity should not contain any text or special character" required="required"/>
    </div>
    
    <div class="form-group">
      <label for="desc">Description* : </label>
      <form:textarea class="form-control" path="description" rows="5" id="desc"></form:textarea>
    </div>
    
    <div class="form-group">
      <label for="expd">Expiry Date* : </label>
      <form:input type="date" path="expiryDate" class="form-control" id="expd" />
    </div>
    <div>
   <form:button type="button" class="btn btn-primary btn-md">Upload Image</form:button> 
     
    </div>
    
    <br>
    <br>
    <div>
     <form:button type="submit" class="btn btn-primary btn-md" value="Add"/>
     <form:button type="submit" class="btn btn-primary btn-md" value="Cancel"/>
    </div> --%>
  </form:form>
</div>

</body>
</html>
