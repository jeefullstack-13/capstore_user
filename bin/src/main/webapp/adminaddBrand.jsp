<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <form:form style="width: 50%" action="addbr" modelAttribute="addbrands" method="post">
     <div class="form-group">
      <label for="bName">Brand ID* : </label>
      <form:input type="text" class="form-control" path="brandId" />
    </div>
     <div class="form-group">
      <label for="bName">Brand Name* : </label>
      <form:input type="text" class="form-control" path="brandName" />
    </div>
     <div>
     <form:button type="submit" class="btn btn-primary btn-md" value="Add">Add Brand</form:button>
    </div>
    </form:form>
    
</body>
</html>