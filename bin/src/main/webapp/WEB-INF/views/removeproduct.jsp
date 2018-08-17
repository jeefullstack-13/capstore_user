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
   <form  style="width: 50%">
   <div class="form-group">
      <label for="pname">Product Name* : </label>
      <div class="form-group">
        <input type="text" class="form-control" placeholder="Search">
      </div>
      <button type="submit" class="btn btn-primary btn-md">Search</button>
    </div>
  
     <br><br>
    <div class="form-group">
      <label for="bname">Brand : </label>
      <input type="text" class="form-control" id="bname">
    </div>
    
    <div class="form-group">
      <label for="catg">Category : </label>
      <input type="text" class="form-control" id="catg">
    </div>
    
    <div class="form-group">
      <label for="price">Price : </label>
      <input type="text" class="form-control" id="price">
    </div>
    
    <div class="form-group">
      <label for="qty">Quantity : </label>
      <input type="text" class="form-control" id="qty">
    </div>
    
    <div class="form-group">
      <label for="desc">Description : </label>
      <textarea class="form-control" rows="5" id="desc"></textarea>
    </div>
    
    <div class="form-group">
      <label for="expd">Expiry Date : </label>
      <input type="date" class="form-control" id="expd">
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
