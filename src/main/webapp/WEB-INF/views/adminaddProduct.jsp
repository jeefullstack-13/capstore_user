<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Products</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2 align="center">Add Products</h2>
  <form style="width: 50%">
  
  	 <div class="form-group">
      <label for="mid">Merchant Id: </label>
      <input type="text" class="form-control" id="mid">
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
      <label for="bname">Brand Name:</label>
      <input type="text" class="form-control" id="bname">
    </div>
    
    <div class="form-group">
      <label for="catg">Category: </label>
      <input type="text" class="form-control" id="catg">
    </div>
    
    <div class="form-group">
      <label for="price">Price: </label>
      <input type="text" class="form-control" id="price">
    </div>
    
    <div class="form-group">
      <label for="qty">Quantity: </label>
      <input type="text" class="form-control" id="qty">
    </div>
    
    <div class="form-group">
      <label for="desc">Description: </label>
      <textarea class="form-control" rows="5" id="desc"></textarea>
    </div>
    
     <div class="form-group">
      <label for="doi">Date of Inclusion: </label>
      <input type="date" class="form-control" id="doi">
    </div>
    
    <div class="form-group">
      <label for="expd">Expiry Date: </label>
      <input type="date" class="form-control" id="expd">
    </div>
    <div>
   <button type="button" class="btn btn-primary btn-md"  >Upload Image</button> 
    </div>
    <br>
    <br>
    <div>
     <button type="button" class="btn btn-primary btn-md">Add</button> 
     <button type="button" class="btn btn-primary btn-md">Cancel</button> 
    </div>
  </form>
</div>

</body>
</html>
