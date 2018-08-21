 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>profile</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
  <h2>Edit Profile</h2>
  <form:form class="form-horizontal" action="update" target="cntFrame" modelAttribute="cust">
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="email">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="email" placeholder="Enter name" name="email" >
      </div>
    </div>
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="pwd">Mobile:</label>
      <div class="col-sm-10">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter mobile" name="pwd">
      </div>
    </div>
    
     <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="pwd">E-mail:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="pwd" placeholder="Enter e-Mail" name="pwd">
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
  </form:form>
</div>

</body>
</html>
