<!DOCTYPE html>
<html lang="en">
<%@ include file="header.jsp" %>
<head>
<title>Welcome to Merchant Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
.foot{
position: fixed;
    bottom: 0;
    width: 100%;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <ul class="nav navbar-nav">
      <li class="active"><a href="home">Home</a></li>
      
      <li><a href="inventPage" target="cntframe">My Inventory</a></li>
      <li><a href="myProfile" target="cntframe">My Profile</a></li>
    </ul>
    <form class="navbar-form navbar-left">
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search" name="search">
        <div class="input-group-btn">
          <button class="btn btn-default" type="submit">
            <i class="glyphicon glyphicon-search"></i>
          </button>
        </div>
      </div>
    </form>
     <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
    </nav>
    
    
    <div>
<iframe name="cntframe" id="frm" src="carousal.jsp" width="100%" height="1200"></iframe>
</div>
      


<%@ include file="footer.jsp" %>

</body>
</html>