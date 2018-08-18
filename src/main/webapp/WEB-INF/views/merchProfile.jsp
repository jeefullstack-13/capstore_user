<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Edit Profile</h2>
  <form style="width: 50%" class="form-horizontal" action="">
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="name">Name:</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="name" placeholder="Enter name" name="name">
      </div>
    </div>
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="compname">Company Name:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="compname" placeholder="Enter Company Name" name="compname">
      </div>
    </div>
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="addr">Address:</label>
      <div class="col-sm-10">   
      <textarea class="form-control" rows="5" class="form-control" id="addr" placeholder="Enter Address" name="addr"></textarea>       
      
      </div>
    </div>
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="phno">Phone No:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="phno" placeholder="Enter password" name="phno">
      </div>
    </div>
    
     <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="email">E-mail:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
     <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-10">          
        <a href="ChangePassword.jsp">Change Password</a>
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Done</button>
      </div>
    </div>
  </form>
</div>

</body>
</html>
