<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href=".\resources\css\footer.css">
  <link rel="stylesheet" href=".\resources\css\header.css">
   <link rel="stylesheet" href=".\resources\css\product.css">
   <link href="https://bootstrap-override.css" rel="stylesheet" id="bootstrap-css">
 
  <script src=".\resources\jscripts\product.js"></script>		
	
  
  

 
<%@ include file="header.jsp" %>   
</head>
<body id="myPage" >
<section>
 	 <article>
<%@include file="product.jsp" %>	
	</article>
</section>


<%@  include file="footer.jsp" %>

