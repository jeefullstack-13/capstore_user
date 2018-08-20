<!DOCTYPE html>
<html lang="en">
<head>
  <title>CapStore</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href=".\resources\css\footer.css">
  <link rel="stylesheet" href=".\resources\css\loginRegister.css">
  <link rel="stylesheet" href=".\resources\css\header.css">
  <script src=".\resources\jscripts\loginRegister.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<<<<<<< HEAD
 
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
=======
>>>>>>> branch 'master' of https://github.com/jeefullstack-13/capstore_user.git
<%@ include file="header.jsp" %>   
</head>
<body id="myPage" background=".\resources\images\background_frontpage.jpg">
<section>
 	 <article>
		<%@include file="loginPanel.jsp" %>	
		<%@include file="registration.jsp" %>
	</article>
    <article>
		<%@include file="carousal.jsp" %>	
	</article>		
</section>




<%@  include file="footer.jsp" %>