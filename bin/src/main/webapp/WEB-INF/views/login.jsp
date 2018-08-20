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
<section>
 	 <article>
<%@include file="loginPanel.jsp" %>	
	</article>
</section>
<section>
 	 <article>
<%@include file="registration.jsp" %>	
	</article>
</section>
<%@  include file="footer.jsp" %>

