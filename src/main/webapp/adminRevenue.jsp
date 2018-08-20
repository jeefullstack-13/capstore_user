<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background=".\resources\images\bluebg2.jpg">
<!-- <div class="container-fluid" style="margin-top: 10px;margin-left: 100px">
<h2 class="control-label">Revenue Details</h2>
</div> -->
<div style="margin-top: 10px;margin-left: 100px">
<h2 class="control-label">Revenue Details</h2>
</div>
<div class="centerBox">  
  
  <div class="text-center">
  <form name="revenueForm" action="" method="post">
  	<table>
  		<tr>
  			<td>
  				<label class="control-label">From Date:</label>
  			</td>
  			<td>
  				<input type="date" name="fromDate" min="2017-12-31" max="2018-08-01">
  			</td>
  		</tr>
  		<tr><td><br/></td></tr>
  		<tr>
  			<td>
  				<label class="control-label">Till Date:</label>
  			</td>
  			<td>
  				<input type="date" name="tillDate" min="2017-12-31" max="2018-08-01">
  			</td>
  		</tr>
  		<tr><td><br/></td></tr>
  		<tr>
  			<td>
  			<input name="getRevenue" class="btn btn-info" type="submit" value="Get Revenue">
  			</td>
  		</tr>
  		<tr><td><br/></td></tr>
  		<tr>
  			<td>
  				<p>The Revenue for the above mentioned period is : </p>
  			</td>
  			<td>
  				<input type="text" name="revenueVal" class="input-sm">
  			</td>
  		</tr>
  	</table>
  </form>
  </div>
</div>
</body>
</html>