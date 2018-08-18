<!DOCTYPE html>
<html lang="en">
<head>
  <title>Admin Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
     .row.content {height: 550px}
   
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
    .ad {
    color: white;
    }</style>
</head>
<body>
<nav class="navbar navbar-inverse .hidden-lg">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
     <div class="container">  
     <a href="dashboard.jsp" target="adFrame">
  <img src="./resources/images/adminlogo.jpg" class="img-circle" alt="Admin Logo" width="50" height="50">        </a>  </div>
   
         <div class="container ad"> <h4>ADMIN</h4>  </div>
      <ul class="nav navbar-nav">   
        <li> <form class="navbar-form navbar-left" action="/action_page.php">
  <div class="input-group">
    <input type="text" class="form-control" placeholder="Search" >
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit" onclick="admincustomer">
        <i class="glyphicon glyphicon-search"></i></button>
    </div>
  </div></form></li>
        <li><a href="adminCust.jsp" target="adFrame">Customers</a></li>
        <li><a href="merchHome.jsp" target="adFrame">Merchants</a></li>
        <li><a href="inventHome.jsp" target="adFrame">Inventory</a></li>
        <li><a href="#">Logout</a></li>
      </ul>
  

  </div>
  </div>
</nav>
    
   <iframe src="dashboard.jsp" name="adFrame" width="1360" height="450"style="border:none"></iframe>
  
</body>
</html>
