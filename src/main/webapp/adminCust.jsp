<!DOCTYPE html>
<html lang="en">
<head>
  <title>Customer Admin Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    .row.content {height: auto;}
   
    @media screen and (max-width: 767px) {
      .row.content {height: auto;} 
    }
  </style>
</head>
<body>


<div class="container-fluid" >
  <div class="row content">
    <div class="col-sm-3 sidenav">
      <h4>Customer Management</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="addCust.jsp" target="custFrame">Add Customer</a></li>
        <li class="active"><a href="remCust.jsp" target="custFrame">Remove Customer</a></li>

     
         <li class="active"><a href="DeliveryStatus.jsp" target="custFrame">Update Delivery Status</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" id="searchTerm"placeholder="Search for a customer.." >
        <span class="input-group-btn">
         <a href="admincustomer" id="searchCust"> <button class="btn btn-default" type="button" onclick="document.getElementById('searchCust').href='admincustomer/' + document.getElementById('searchTerm').value;" > 
            <span class="glyphicon glyphicon-search"></span>
          </button></a>
        </span>
      </div>
    </div>
    <div class="col-sm-9 text -left">
		<iframe name="custFrame" width="970px" height="440px" style="border:none"></iframe>
    </div>
  </div>
</div>


</body>
</html>
