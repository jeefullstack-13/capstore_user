<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Adding Merchants</title>
</head>
<body>


<div class="container">
  <h2 align="center">Add New Merchant</h2>
  <form style="width: 50%">
  	 <div class="form-group">
      <label for="mid">Merchant Name  : </label>
      <input type="text" class="form-control" >
    </div>
    
    <div class="form-group">
      <label for="pname">Company  : </label>
      <input type="text" class="form-control">
    </div>
    
    <div class="form-group">
      <label for="bId">E-Mail Id  :</label>
      <input type="text" class="form-control">
    </div>
    
    <div class="form-group">
      <label for="bname">Mobile No  : :</label>
      <input type="text" class="form-control">
    </div>
    
    <div class="form-group">
      <label for="catg">Address  : </label>
      <input type="text" class="form-control" >
    </div>

    <div>
     <button type="button" class="btn btn-primary btn-md">Add Merchant</button> 
     <button type="button" class="btn btn-primary btn-md">Cancel</button> 
    </div>
  </form>
</div>
</body>
</html>