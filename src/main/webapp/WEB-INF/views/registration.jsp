<button onclick="document.getElementById('id02').style.display='block'" 
		style="width:auto; float:right; margin-top:20%; margin-left: 0%; background-color:red;">SignUp
</button>
<div id="id02" class="modal">
   <form class="modal-content animate" >
    	<div class="imgcontainer">
     		 <span onclick="document.getElementById('id02').style.display='none'" class="close" 
     		 title="Close Modal">&times;</span>
      		<img src=".\resources\images\login_avatar.png" alt="Avatar" class="avatar">
    	</div>
		<div class="radioContainer">
			<input type="radio" name="selectuser" value="1" id="merchantreg" onclick=selectRView()>Merchant
			<input type="radio" name="selectuser" value="2" id="customerreg" onclick=selectRView()>Customer
		</div>
	
	
	
<div class="container" id="regMerchant" style="display:none">
    <div>
     	<label for="mname"><b>Merchant Name</b></label>
      	<br>
      	<input type="text" placeholder="Enter Username" name="mname" required>
    </div>  
    
	 <div>
     	<label for="mconame"><b>Company Name</b></label>
      	<br>
     	<input type="text" placeholder="Enter company name" name="mconame" required>
    </div> 
	<div>
	  	<label for="memail"><b>Email</b></label>
	  	<br>
      	<input type="text" placeholder="Enter Email" name="memail" required>
    </div>  
      
    <div>
      	<label for="mphoneno"><b>Phone Number</b></label>
      	<br>
      	<input type="text" placeholder="Enter PhoneNo" name="mphoneno" required>
    </div>  
      
    <div>
      	<label for="mstreetno"><b>Street No.</b></label>
      	<br>
      	<textarea placeholder="Enter Street No" name="mstreetno" style="border-radius: 15px;"></textarea>
    </div>  
    
    <div>
      	<label for="mcity"><b>City</b></label>
      	<br>
      	<select name="mcity" class="select">
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
   
   	<div>
      	<label for="mstate"><b>State</b></label>
      	<br>
      	<select name="mstate" class="select">
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
   	
      	<div>
      	<label for="mcountry"><b>Country</b></label>
      	<br>
      	<select name="mcountry" class="select">
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
  
   	 <div>
     	<label for="mzipcode"><b>Zipcode</b></label>
      	<br>
      	<input type="text" placeholder="Zipcode" name="mzipcode" required>
    </div> 
   
  
    <div>
      	<label for="mpsw"><b>Password</b></label>
       	<br>
      	<input type="password" placeholder="Enter Password" name="mpsw" required>
    </div>  
 
    <div> 
       	<label for="mcpsw"><b> Confirm Password</b></label>
       	<br>
      	<input type="password" placeholder="Enter Password" name="mcpsw" required>
    </div>  
    
    <div> 
       	<label for="misc"><b> Is CapStore Certified</b></label>
       	<br>
      	<input type="radio" name="ismc" value="yes" required>Yes
      	<input type="radio" name="ismc" value="no" required>No
    </div>  
    
    <div>
      	<label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      	</label>
    </div>  
      	<br>
      	<p>By creating an account you agree to our <a href="termsandconditions" style="color:dodgerblue">Terms & Privacy</a>.</p>
</div>
  	 
  	 
  	 
  	 
  	 
 <div class="container" id="regCustomer" style="display:none">
 	<div>
     <label for="cuname"><b>Customer Name</b></label>
      <br>
      <input type="text" placeholder="Enter Username" name="cuname" required>
    </div>  
	 
	<div>
	  <label for="cemail"><b>Email</b></label>
	  <br>
      <input type="text" placeholder="Enter Email" name="cemail" required>
    </div>  
      
    <div>
      <label for="cphoneno"><b>Phone Number</b></label>
      <br>
      <input type="text" placeholder="Enter PhoneNo" name="cphoneno" required>
    </div>  
      
    <div>
      <label for="cdob"><b>Date of Birth</b></label>
      <br>
      <input type="date" placeholder="Enter DOB" name="cdob" style="border-radius: 15px;" required>
    </div>  
      <br>
   
    <div>
      	<label for="cstreetno"><b>Street No.</b></label>
      	<br>
      	<textarea placeholder="Enter Street No" name="cstreetno" style="border-radius: 15px;"></textarea>
    </div>  
   
    <div>
      	<label for="ccity"><b>City</b></label>
      	<br>
      	<select name="ccity" class="select">
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
    
   	<div>
      	<label for="cstate"><b>State</b></label>
      	<br>
      	<select name="cstate" class="select">
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
   
      	<div>
      	<label for="ccountry"><b>Country</b></label>
      	<br>
      	<select name="ccountry" class="select">
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
 
   	 <div>
     	<label for="czipcode"><b>Zipcode</b></label>
      	<br>
      	<input type="text" placeholder="Zipcode" name="czipcode" required>
    </div> 
   
   
    <div>
      <label for="cpsw"><b>Password</b></label>
       <br>
      <input type="password" placeholder="Enter Password" name="cpsw" required>
    </div>  

    <div> 
       <label for="ccpsw"><b> Confirm Password</b></label>
       <br>
      <input type="password" placeholder="Enter Password" name="ccpsw" required>
    </div>  
    
    <div>
      <label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      </label>
    </div>  
      <br>
      <p>By creating an account you agree to our <a href="termsandconditions" style="color:dodgerblue">Terms & Privacy</a>.</p>
    </div>  
    <div class="container" style="background-color:#f1f1f1; width: auto;" >
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      <button type="submit" onclick="document.getElementById('id02').href='login.jsp'" class="signupbtn">Sign Up</button>
    </div>
   </form>
</div>