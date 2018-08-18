<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
<div class="row">
<div class="col-sm-12"><br>
<h1 align="center">Change Password</h1>
</div>
</div>
<div class="row">
<div class="col-sm-6 col-sm-offset-3">
<br/>
<form method="post" id="passwordForm">

<br><input type="password" class="input-lg form-control" name="password1" id="password1" placeholder="Old Password" autocomplete="off"></br>

<input type="password" class="input-lg form-control" name="password2" id="password2" placeholder="New Password" autocomplete="off"><br>

<input type="password" class="input-lg form-control" name="password3" id="password3" placeholder="Confirm Password" autocomplete="off"><br>

<input type="submit" name="submit" class="col-xs-12 btn btn-primary btn-load btn-lg" data-loading-text="Changing Password..." value="Change Password">
</form>
</div>
</div>
</div>
</body>
</html>