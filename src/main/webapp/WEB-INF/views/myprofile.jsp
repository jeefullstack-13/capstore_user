<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href=".\resources\CSS\mprofile.css">
  <script src=".\resources\jscripts\merchProfile.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.card {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
    width: 40%;
}

.card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
    /* padding: 2px 16px; */
    margin-left: 200px;
}
</style>
</head>
<body>
<div align="center">
<h2 align="center">MY PROFILE</h2>

<div  class="card">
  <img  src=".\resources\images\img_avatar.png" alt="Avatar" style="width:60%">
  <div align="left" class="container">
    <h4><b>Shivani Katolkar</b></h4> 
    <h6 align="left">Merchant</h6> 
  </div>
</div>
<br><br><br>
</div>

<div style="width: 20%; margin-left: 650px">
<!-- Button to open the modal login form -->
<button onclick="document.getElementById('id03').style.display='block'">Edit</button>
</div>
<!-- The Modal -->
<div id="id03" class="modal" style="width: auto; height: auto;">
  <span onclick="document.getElementById('id03').style.display='none'" 
class="close" title="Close Modal">&times;</span>

  <!-- Modal Content -->
  <form class="modal-content animate" action="/action_page.php">
    <div class="imgcontainer">
     <img src=".\resources\images\img_avatar.png" alt="Avatar" class="img-circle" width="100px" height="100px">
    </div>

    <div class="container" style="margin-left: 0px; width: auto;">
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="name">Name:</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
      </div>
    </div>
    
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="compname">Company Name:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="compname" placeholder="Enter Company Name" name="compname">
      </div>
    </div>
    
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="compname">Street No.:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="compname" placeholder="Enter Company Name" name="compname">
      </div>
    </div>
    

    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="addr">City: </label>
      <div class="col-sm-10">   
         <select name="ccity" class="form-control" id="addr">
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
    
  <div></div>
    
     <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="addr">State: </label>
      <div class="col-sm-10">   
      <select name="cstate" class="form-control" class="select" id="addr">
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
   
   <div></div>
   
   <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="addr">Country: </label>
      <div class="col-sm-10">   
      	<select name="ccountry" class="form-control" id="addr">
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
    
  <div></div>
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="compname">Zipcode:</label>
      <div class="col-sm-10">          
       <input type="text" class="form-control" placeholder="Zipcode" name="czipcode"> 
      </div>
    </div>
    
    
    
    <div class="form-group" align="justify">
      <label class="control-label col-sm-2" for="phno">Phone No:</label>
      <div class="col-sm-10">          
        <input type="text" class="form-control" id="phno" placeholder="Enter Phone Number" name="phno">
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
        <button type="button" onclick="document.getElementById('id03').style.display='none'" class="btn btn-primary">Cancel</button>
      </div>
    </div>

    </div>
  </form>
</div>
</body>
</html> 
