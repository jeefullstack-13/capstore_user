<!DOCTYPE html>
<html lang="en">
<head>
  <title>Merchant Home Page</title>
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
      <h4>Merchant Management</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="addMerch.jsp" target="merchFrame">Add Merchant</a></li>
        <li class="active"><a href="remMerch.jsp" target="merchFrame">Remove Merchant</a></li>
        <li class="active"><a href="validMerch.jsp" target="merchFrame">Validate Merchant</a></li>
      </ul><br>
      <div class="input-group">
        <input type="text" class="form-control" placeholder="Search for a Merchant..">
        <span class="input-group-btn">
          <button class="btn btn-default" type="button">
            <span class="glyphicon glyphicon-search"></span>
          </button>
        </span>
      </div>
    </div>
    <div class="col-sm-9 text -left">
		<iframe name="merchFrame" width="970px" height="440px" style="border:none"></iframe>
    </div>
  </div>
</div>


</body>
</html>
