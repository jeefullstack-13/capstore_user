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
      <label class="control-label col-sm-2" for="streetno"><b>Street No.</b></label>
      <div class="col-sm-10">
      	<textarea placeholder="Enter Street No" name="streetno" style="border-radius: 15px;"></textarea>
    </div>  
   </div>
   
   <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="city"><b>City:</b></label>
      <div class="col-sm-10">
      	<select name="city" class="select">
      		<option>Mumbai</option>
      		<option>Delhi</option>
      		<option>Bangalore</option>
      		<option>Hyderabad</option>
      		<option>Ahmedabad</option>
      		<option>Chennai</option>
      		<option>Kolkata</option>
      		<option>Surat</option>
      		<option>Pune</option>
      		<option>Jaipur</option>
      		<option>Lucknow</option>
      		<option>Kanpur</option>
      		<option>Nagpur</option>
      		<option>Visakhapatnam</option>
      		<option>Indore</option>
      		<option>Thane</option>
      		<option>SriGanganagar</option>
      		<option>Bhatinda</option>
      		<option>Udaipur</option>
      		<option>Jaipur</option>
      		<option>Patiala</option>
      	</select>
    </div>  
   </div>
   
   
  <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="state"><b>State:</b></label>
      <div class="col-sm-10">
      	<select name="state" class="select">
      		<option>Andhra Pradesh</option>
      		<option>Bihar</option>
      		<option>Chattisgarh</option>
      		<option>Goa</option>
      		<option>Gujarat</option>
      		<option>Haryana</option>
      		<option>Himachal Pradesh</option>
      		<option>Jammu and Kashmir</option>
      		<option>Jharkhand</option>
      		<option>Kerela</option>
      		<option>Maharashtra</option>
      		<option>Manipur</option>
      		<option>Punjab</option>
      		<option>Rajasthan</option>
      		<option>Tamil Nadu</option>
      		<option>Telangana</option>
      		<option>Uttar Pradesh</option>
      		<option>Uttrakhand</option>
      		<option>West Bengal</option>
     	</select>
    </div> 
  </div> 	
      	
      	
   <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="country"><b>Country:</b></label>
      <div class="col-sm-10">
      	<select name="state" class="select">
      		<option>Albania</option>
      		<option>Algeria</option>
      		<option>Andorra</option>
      		<option>Angola</option>
      		<option>Argentina</option>
      		<option>Bangladesh</option>
      		<option>Belgium</option>
      		<option>Bhutan</option>
      		<option>China</option>
      		<option>Denmark</option>
      		<option>Egypt</option>
      		<option>Germany</option>
      		<option>India</option>
      		<option>Japan</option>
      		<option>Luxembourg</option>
      		<option>Malaysia</option>
      		<option>Nepal</option>
      		<option>Russia</option>
      		<option>Singapore</option>
      		<option>United Arab Emirates</option>
      		<option>United States</option>
     	</select>
    </div> 
  </div>
  
 <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="zipcode">Zipcode:</label>
      <div class="col-sm-10">       
      	<input type="text" placeholder="Zipcode" name="mzipcode" required>
    </div> 
  </div>
  
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="phno">Phone No:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="phno" placeholder="Enter phoneno" name="phno">
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
