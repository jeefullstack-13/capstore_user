<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x"%><%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link href="https://select2.github.io/dist/css/select2.min.css" rel="stylesheet">
<script src="https://select2.github.io/dist/js/select2.full.js"></script>

  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="./resources/css/myStyles.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="./resources/script/myScript.js"></script>

<title>Email Services</title>
</head>



<body>

 <!-- <button type="button" class="btn btn-success"  data-toggle="modal" data-target="#myModal">  Compose </button>
 
 <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
<div class="modal-content">
  <div class="modal-body">   -->    
  <c:set var="now" value="<%=new java.util.Date()%>" />
        
 <fieldset style="margin-left: 150px;margin-right: 450px;">

	<form:form class="form-horizontal" role="form"  action="saveEmail" method="post" modelAttribute="emails">
					<div class="form-group">
				    	<label for="from" class="col-sm-1 control-label">From:</label>
				    	<div class="col-sm-11">
				    	<c:forEach items="${admin }" var="adminemail">
                              <form:input type="email" class="form-control select2-offscreen" path="from_emailId"  value="${adminemail.email}" readonly="true" />
				    		</c:forEach>
				    	</div>
				  	</div>
					<div class="form-group">
				    	<label for="to" class="col-sm-1 control-label">To:</label>
				    	<div class="col-sm-11">
                             <form:select path="to_emailId" class="form-control select2-offscreen">
			
				<c:forEach items="${cust }" var="email">
					<form:option value="${email.emailId}"> ${email.emailId} </form:option>
					
				</c:forEach>
                       </form:select>
				    	</div>
				  	</div>
					<div class="form-group">
				    	<label for="subject" class="col-sm-1 control-label">Subject:</label>
				    	<div class="col-sm-11">
                              <form:input type="text" class="form-control select2-offscreen" path="subject" placeholder="Type Subject" tabindex="-1"/> 
				    	</div>
				  	</div>
				  <div class="form-group">
				  <label for="date" class="col-sm-1 control-label">Date:</label>
				  <div class="col-sm-11">
				  
				  <fmt:formatDate value="${now}" pattern="dd/MM/yyyy" var="Date"/>
                  <form:input class="form-control select2-offscreen" path="date" value="${Date}" readonly="true"/>
				  </div>
				  </div>
				
<div class="form-group">
  <label for="body" class="col-sm-1 control-label">Body:</label>
  <div class="col-sm-11">
	<form:textarea class="form-control" path="body" rows="8" cols="20" placeholder="Type Body of Mail"/>
</div></div>
<div class="form-group" align="center">	
	<button type="submit" class="btn btn-success">Send</button>
 </div>


</form:form>
 </fieldset>
</body>
</html>