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
  <h2 align="center">ADD PRODUCTS</h2>
   <br>
  <br>
  <form style="width: 50%">
    
    <div class="form-group">
      <label for="pname">Product Name* : </label>
      <input type="text" class="form-control" id="pname" pattern="[A-Za-z]{3,}" 
      title="Name should not contain any number or special character" required="required">
    </div>
   
    <div class="form-group">
      <label for="selbrand">Brand* : </label>
      <select class="form-control" id="selbrand">
        <option>---Select Brand----</option>
      </select>
    </div>
    
    <div class="form-group">
      <label for="selcat">Category* : </label>
     <select class="form-control" id="selcat">
        <option>---Select Category----</option>
      </select>
    </div>
    
    <div class="form-group">
      <label for="price">Price* : </label>
      <input type="text" class="form-control" id="price" pattern="[0-9]+(\\.[0-9][0-9]?)?" 
      title="Price should not contain any text or special character" required="required">
    </div>
    
    <div class="form-group">
      <label for="qty">Quantity* : </label>
      <input type="text" class="form-control" id="qty" pattern="[0-9]+(\\.[0-9][0-9]?)?"
      title="Quantity should not contain any text or special character" required="required">
    </div>
    
    <div class="form-group">
      <label for="desc">Description* : </label>
      <textarea class="form-control" rows="5" id="desc" required="required"></textarea>
    </div>
    
    <div class="form-group">
      <label for="expd">Expiry Date* : </label>
      <input type="date" class="form-control" id="expd" required="required">
    </div>
    <div>
   <button type="button" class="btn btn-primary btn-md">Upload Image</button> 
    </div>
    <br>
    <br>
    <div>
     <input type="submit" class="btn btn-primary btn-md" value="Add">
     <input type="submit" class="btn btn-primary btn-md" value="Cancel">
    </div>
  </form>
</div>

</body>
</html>
