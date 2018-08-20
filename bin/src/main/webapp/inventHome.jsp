<!DOCTYPE html>
<html lang="en">
<head>
  <title>Inventory Home Page</title>
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
      <h4>Inventory Management</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="adminaddProduct.jsp" target="invenFrame">Add Product</a></li>
        <li class="active"><a href="remProduct.jsp" target="invenFrame">Remove Product</a></li>
      </ul>
     <h4>Brand Management</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="adminaddBrand.jsp" target="invenFrame">Add Brand</a></li>
        <li class="active"><a href="editBrand.jsp" target="invenFrame">Edit Brand</a></li>
      </ul>
         <h4>Category Management</h4>
      <ul class="nav nav-pills nav-stacked">
        <li class="active"><a href="adminaddCategory.jsp" target="invenFrame">Add Category</a></li>
        <li class="active"><a href="editCategory.jsp" target="invenFrame">Edit Category</a></li>
      </ul>
      <br>
      <div class="input-group">
        <input type="text" class="form-control" id="searchTerm" placeholder="Search for a product..">
        <span class="input-group-btn">
          <!-- <button class="btn btn-default" type="button"> -->
           <a href="admininventory" id="searchInv"> <button class="btn btn-default" type="button" onclick="document.getElementById('searchInv').href='admininventory/' + document.getElementById('searchTerm').value;" > 
            <span class="glyphicon glyphicon-search"></span>
          </button></a>
        </span>
      </div>
    </div>
    <div class="col-sm-9 text -left">
		<iframe name="invenFrame" width="970px" height="440px" style="border:none"></iframe>
    </div>
  </div>
</div>


</body>
</html>
