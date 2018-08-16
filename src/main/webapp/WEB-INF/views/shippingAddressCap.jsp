<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href=".\resources\css\footer.css">
  <link rel="stylesheet" href=".\resources\css\loginForm.css">
  <link rel="stylesheet" href=".\resources\css\header.css">
  <script src=".\resources\jscripts\loginPanelView.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="./resources/css/shippingCss.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./resources/script/shippingScript.js"></script>
  <script>
	// Get the modal
	var modal = document.getElementById('id01'); 

	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
   	 if (event.target == modal) {
   	     modal.style.display = "none";
   	 }
	}
  </script>
<%@ include file="header.jsp" %>   
</head>
<body id="myPage">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
   <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop By Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <ul class="list-inline">
          <li><a href="Page1_full">Electronics</a></li><br>
          <li><a href="#">Clothing</a></li><br>
          <li><a href="#">Books</a></li>
        </ul>
        </ul>
      </li>
    
    </ul>
    <form class="navbar-form navbar-left" action="/action_page.php">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
 </form>
 
    <ul class="nav navbar-nav navbar-right">

 
    <li><a href="#"> My Orders</a></li>
      <li><a href="mycart.com"><span class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
       <li><a href="SignUp.jsp"><span class="glyphicon glyphicon-user"></span> SignUp</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> LogIn</a></li>
 
    </ul>
  </div>
</nav>
<section>
 	 <article>
<%@include file="ShippingAddress.jsp" %>  
	</article>
</section>
<%@  include file="footer.jsp" %>