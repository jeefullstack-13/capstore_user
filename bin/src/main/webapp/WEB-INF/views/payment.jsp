<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript">
function showAccountDetails(){
	if(document.getElementById('credit').checked){
		document.getElementById('showAccount').style.display='block';
		document.getElementById('showAccount1').style.display='none';
		document.getElementById('showNetAccount').style.display='none';
		
	}
	else if(document.getElementById('debit').checked){
		document.getElementById('showAccount').style.display='none';
		document.getElementById('showAccount1').style.display='block';
		document.getElementById('showNetAccount').style.display='none';
		
	}
 else if(document.getElementById('NetBanking').checked){
       document.getElementById('showNetAccount').style.display='block'; 
       document.getElementById('showAccount').style.display='none';
       document.getElementById('showAccount1').style.display='none';
 }
	else
		document.getElementById('showNetAccount').style.display='none';
	 
}

window.onload= function(){
	document.getElementById('showAccount').style.display='none';
	document.getElementById('showNetAccount').style.display='none';
	 document.getElementById('showAccount1').style.display='none';
}
</script>
</head>
<body > --%>
<%-- <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
   <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop By Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
        
          <li><a href="page1.jsp">Electronics</a></li>
          <li><a href="#">Clothing</a></li>
          <li><a href="#">Books</a></li>
        </ul>
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
    
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
 
    </ul>
  </div>
</nav> --%>
<form method="post" action="#">
<h3 align="center" ><b>Payment Form</b></h3>

<div align="center">
	<div >
	<div  >Choose Payment Method:</div>
	<div>
	
		<input type="radio" name="modeOfPurchase" onclick="showAccountDetails()" id="credit" value="Credit"/>Credit</br>
		<div   id="showAccount">
		<div>
			Card Number: <input  type="text"  path="" ></br></br>
			CVV Number: <input  type="text"  path=""></br></br>	
			
		</div>
	</div>
		<input type="radio" name="modeOfPurchase" onclick="showAccountDetails()" id="debit" value="Debit"/>Debit</br>
		<div   id="showAccount1">
		<div>
			Card Number: <input  type="text"  path="" ></br></br>
			CVV Number: <input  type="text"  path=""></br></br>	
			
		</div>
	</div> 
		<input type="radio" name="modeOfPurchase" onclick="showAccountDetails()" id="NetBanking" value="NetBanking"/>Net Banking</br>
		<div   id="showNetAccount">
		<div>
			Account Number: <input  type="text"  path="" >
		</div>
	</div>
		<input type="radio" name="modeOfPurchase" onclick="showAccountDetails()" id="CashOnDelivery" value="CashOnDelivery"/>Cash on Delivery</br>
		
	</div>
	</div>
	
	<div style="float: right;width: 50%; padding-left: 200px;padding-top: 30px;" >
<div class="btn-ground text-center" id="butptp">
                 <a href="paymentSuccess"> <button type="button" class="btn btn-success">
                           Proceed to pay <span class="glyphicon glyphicon-play"></span>
                        </button></a>
</div>
</div>
	
</div>
</form>
<!-- </body>
</html> -->





