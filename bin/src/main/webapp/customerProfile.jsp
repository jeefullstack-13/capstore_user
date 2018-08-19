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
<title>My Profile</title>
</head>
<body>
<h2>My Profile</h2>
<table> 
<tr><td>Name:</td><td>${cust.customerName}</td></tr>
<tr><td>Mobile:</td><td>${cust.phoneNumber}</td></tr>
<tr><td>e-Mail:</td><td>${cust.emailId}</td></tr>
<tr><td>Date of Birth:</td><td>${cust.dateOfBirth}</td></tr>
<tr><td>Address:</td><td>${cust.address}</td></tr>
<tr><td> <div class="well"><a href="profile.jsp" target="cntFrame">Edit Profile</a></div></td></tr>
</table>
 </body>
</html>