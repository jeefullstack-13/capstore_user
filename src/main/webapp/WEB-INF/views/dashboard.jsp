<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
  <title>Admin Dashboard</title>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="/css/bootstrap.min.css">
<link rel="stylesheet" href="./resources/css/chat.css">
<script src="./resources/script/chatscript.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    .row.content {height: 550px}
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
   
  </style>
</head>
</head>
<body>
 <div class="col-sm-9">
      <div class="well">
        <div class="dashimg">
         <img alt="dashboard image" src=".\resources\images\dash.png" style="position:absolute; left:200px; width:  50px; height:  auto;">
        </div>
       <h3>DASHBOARD</h3>
        <p>Statistics</p>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
            <img src="./resources/images/customersreg.png" class="img-circle" alt="Customers Logo" width="50" height="50"> 
             <h4>Total Customers Registered</h4>
            <p>1 Million</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
           <img src="./resources/images/merchantlogo.png" class="img-circle" alt="Merchants Logo" width="50" height="50"> 
            <h4>Total Merchants Registered</h4>
            <p>100 Million</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
            
             <img src="./resources/images/itemsold.png" class="img-circle" alt="Sold items" width="50" height="50"> 
           <h4>Items sold on our website</h4>
            <p>10 Million</p> 
          </div>
        </div>
        <div class="col-sm-3">
          <div class="well">
           <img src="./resources/images/profit.png" class="img-circle" alt="Profit Logo" width="50" height="50">
            <h4>Net Profit</h4>
            <p>30%</p> 
          </div>
        </div>
        </div>
         <div class="row">
          <div class="col-sm-3">
          <div class="well">
            <h4><a href="">Generate Coupons</a></h4>
      </div>
          </div>
          <div class="col-sm-3">
          <div class="well">
              <h4><a href="">FeedBacks</a></h4>
          </div>
        </div>
          <div class="col-sm-3">
          <div class="well">
              <h4><a href=" ">Promotions</a></h4>
      </div>
          </div>
             <div class="col-sm-3">
          <div class="well">
              <h4><a href="">Business Analysis</a></h4>
      </div>
          </div>
          
        </div>
        <div class="chatbox chatbox--tray chatbox--empty">
    <div class="chatbox__title">
        <h5><a href="#">Customer Service</a></h5>
        <button class="chatbox__title__tray">
            <span></span>
        </button>
        <button class="chatbox__title__close">
            <span>
                <svg viewBox="0 0 12 12" width="12px" height="12px">
                    <line stroke="#FFFFFF" x1="11.75" y1="0.25" x2="0.25" y2="11.75"></line>
                    <line stroke="#FFFFFF" x1="11.75" y1="11.75" x2="0.25" y2="0.25"></line>
                </svg>
            </span>
        </button>
    </div>
   
    <form class="chatbox__credentials">
        <div class="form-group">
            <label for="inputName">Name:</label>
            <input type="text" class="form-control" id="inputName" required>
        </div>
        <div class="form-group">
            <label for="inputEmail">Email:</label>
            <input type="email" class="form-control" id="inputEmail" required>
        </div>
        <button type="submit" class="btn btn-success btn-block">Enter Chat</button>
    </form>
    <textarea class="chatbox__message" placeholder="Write something interesting"></textarea>
</div>
      </div>


</body>
</html>