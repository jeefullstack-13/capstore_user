<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
  <link rel="stylesheet" href="..\resources\css\footer.css">
  <link rel="stylesheet" href=".\resources\css\header.css">
   <link rel="stylesheet" href=".\resources\css\product.css">
   <link href="https://bootstrap-override.css" rel="stylesheet" id="bootstrap-css">
<!--  .\resources\jscripts\product.js
 -->  <script>
  function add(ths,sno){

	  for (var i=1;i<=sno;i++){
	  var cur=document.getElementById("star"+i)
	  document.getElementById("stars"+i).checked = true;

	  if(cur.className=="fa fa-star")
	  {
	  cur.className="fa fa-star checked"
	  }
	  }
	  for (var i=sno+1;i<=6;i++){
	  	var dur=document.getElementById("star"+i)
	  	if(dur.className=="fa fa-star checked")
	  	{
	  		dur.classList.remove("checked");
	  	}
	  }

	  } 
	   

  
  </script>		
	
  
  

 
<%@ include file="header.jsp" %>   
</head>
<body id="myPage" >
<section>
 	 <article>
<%@include file="product.jsp" %>	
	</article>
</section>


<%@  include file="footer.jsp" %>

