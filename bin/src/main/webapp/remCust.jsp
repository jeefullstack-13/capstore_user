<!DOCTYPE html>
<html lang="en">
<head>
  <title>Removing Customers</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container" >
  <h2 align="center">De-Activate Customer</h2>
  <form style="width: 50%">
  	 <div class="form-group">
      <label for="mid">Customer Id: </label>
       <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i></button>
    </div>
  </div>
    <div class="form-group">
      <label for="mid">Customer Name  : </label>
      <input type="text" class="form-control" >
    </div>
     <div class="form-group">
      <label for="mid">Last Login  : </label>
      <input type="text" class="form-control" >
    </div>
    <div class="form-group">
      <label for="mid">Revenue Made : </label>
      <input type="text" class="form-control" >
    </div>  
     <div>
     <button type="button" class="btn btn-primary btn-md">Remove Customer</button> 
     <button type="button" class="btn btn-primary btn-md">Cancel</button> 
    </div>
      </div>
    </form>
    </div>
    </body>
    </html>