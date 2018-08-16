<html>
<head>
<link rel="stylesheet" type="text/css" href=".\resources\css\myStyle.css"/>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Delivery Status</title>
</head>
<body background=".\resources\images\bluebg2.jpg">
<div style="margin-top: 10px;margin-left: 100px">
<h2 class="control-label">Delivery Status</h2>
</div>
<div class="centerBox">  
  	
  <div class="text-center">
  <form name="statusDeliveryForm" action="" method="post">
  	<label class="control-label">Order Id:</label>
  	<input type="text" name="idvalue" class="input-sm">
  	<input class="btn btn-info" type="submit" value="Submit">
  </form>
  </div>
   
  <div> 
  <form method="post" action="">        
  <table class="table">
    <thead>
      <tr>
        <th>Order ID</th>
        <th>Order Date</th>
        <th>Status of Delivery</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>12-Jun-2018</td>
        <td align="justify">
	        <select name="stat">
	        	<option>Dispatched</option>
	        	<option>Shipped</option>
	        	<option>Delivered</option>
	        	<option>UnDelivered</option>
	        </select>
        </td>
      </tr>
      <tr>
      	<td/>
      	<td/>
      	<td align="center"><input class="btn btn-warning" type="submit" value="Save"></td>
      </tr>
    </tbody>
  </table>
  </form>
  </div>

</div>
</body>
</html>