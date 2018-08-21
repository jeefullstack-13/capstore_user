<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
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
 <form:form style="width: 50%" action="addcats" modelAttribute="addCategories" method="post">
     <div class="form-group">
      <label for="catID">Category ID* : </label>
      <form:input type="text" class="form-control" path="categoryId" />
    </div>
     <div class="form-group">
      <label for="catName">Category Name* : </label>
      <form:input type="text" class="form-control" path="categoryName" />
    </div>
     <div>
     <form:button type="submit" class="btn btn-primary btn-md" value="Add">Add Category</form:button>
    </div>
    </form:form>
    </div>
</body>
</html>