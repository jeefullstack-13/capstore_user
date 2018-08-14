<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Products</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style type="text/css">
.container{
   background-color:#f7f7f7 ;
    border: thin;
    color: black;
}
  </style>
</head>
<body>

<div class="container">
  <h2 align="center">REMOVE PRODUCTS</h2>
   <br>
  <br>
  <form style="width: 50%">
  
  	<div class="form-group">
      <label for="mid">Merchant Id: </label>
      <input type="text" class="form-control" id="mid">
    </div>
    
    <div class="form-group">
      <label for="pid">Product Id: </label>
      <input type="text" class="form-control" id="pid">
    </div>
    
    <div class="form-group">
      <label for="pname">Product Name: </label>
      <input type="text" class="form-control" id="pname">
    </div>
    
    <div class="form-group">
      <label for="bId">Brand Id:</label>
      <input type="text" class="form-control" id="bId">
    </div>
    
    <div class="form-group">
      <label for="catg">Category: </label>
      <input type="text" class="form-control" id="catg">
    </div>
    <br>
    <br>
    <div>
     <button type="button" class="btn btn-primary btn-md">Remove</button> 
     <button type="button" class="btn btn-primary btn-md">Cancel</button> 
    </div>
  </form>
</div>

</body>
</html>
