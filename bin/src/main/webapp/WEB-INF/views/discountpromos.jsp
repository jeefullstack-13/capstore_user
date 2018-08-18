<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add Products</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
function myFunction() {
    var input, filter, ul, li, a, i;
    input = document.getElementById("myInput");
    filter = input.value.toUpperCase();
    ul = document.getElementById("myUL");
    li = ul.getElementsByTagName("li");
    for (i = 0; i < li.length; i++) {
        a = li[i].getElementsByTagName("a")[0];
        if (a.innerHTML.toUpperCase().indexOf(filter) > -1) {
            li[i].style.display = "";
        } else {
            li[i].style.display = "none";
        }
    }
}
</script>
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
  <h2 align="center">ADD DISCOUNTS AND PROMOS</h2>
  <br>
  <br>
  <form style="width: 50%">
    
    <div class="form-group">
      <label for="pid">Product Name* : </label>
      <input type="text" id="myInput" onkeyup="myFunction()" required="required" placeholder="Search for Product Names" class="form-control">
    </div>
    
    
    <div class="form-group">
      <label for="pid">Promo Name* : </label>
      <textarea class="form-control" rows="5" id="desc" required="required"></textarea>
    </div>
    
    <div class="form-group">
      <label for="pamt">Promo Amount* : </label>
      <input type="text" class="form-control" id="pamt" pattern="[0-9]+(\\.[0-9][0-9]?)?" 
      title="Promo Amount should not contain any text or special character" required="required">
    </div>
    
    <div class="form-group">
      <label for="pamt">Discount Percent(%)* : </label>
      <input type="text" class="form-control" id="pamt" pattern="[0-9]+(\\.[0-9][0-9]?)?" 
      title="Discount should be in number only" required="required">
    </div>
    
    <div class="form-group">
      <label for="doi">Issue Date* : </label>
      <input type="date" class="form-control" id="doi" required="required">
    </div>
    
    <div class="form-group">
      <label for="expd">Expiry Date* : </label>
      <input type="date" class="form-control" id="expd" required="required">
    </div>
    <br>
    <br>
    <div>
     <input type="submit" class="btn btn-primary btn-md" value="Apply">
     <input type="submit" class="btn btn-primary btn-md" value="Cancel">
    </div>
  </form>
</div>

</body>
</html>
