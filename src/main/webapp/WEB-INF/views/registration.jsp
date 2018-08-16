<button onclick="document.getElementById('id02').style.display='block'" style="width:auto; float:left; margin-top:20%; margin-left: 0%;">SignUp</button>
<div id="id02" class="modal">
   <form class="modal-content animate" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
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
      
      <br>
    <div>
      <label for="maddress"><b>Address</b></label>
        <br>
      <textarea placeholder="Enter Address" name="madd" required></textarea>
    </div>  
     
    <div>
      <label for="mpsw"><b>Password</b></label>
       <br>
      <input type="password" placeholder="Enter Password" name="mpsw" required>
    </div>  
      <br>
    <div> 
       <label for="mcpsw"><b> Confirm Password</b></label>
       <br>
      <input type="password" placeholder="Enter Password" name="mcpsw" required>
    </div>  
    <div> 
       <label for="mcpsw"><b> Is CapStore Certified</b></label>
       <br>
      <input type="radio" name="ismc" value="yes" required>Yes
      <input type="radio" name="ismc" value="no" >No
    </div>  
    
    <div>
      <label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      </label>
    </div>  
      <br>
      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    </div>
  	 
  	 
  	 
  	 
  	 
  	 <div class="container" id="regCustomer" style="display:none">
 <div>
     <label for="uname"><b>Customer Name</b></label>
      <br>
      <input type="text" placeholder="Enter Username" name="uname" required>
    </div>  
	 
	<div>
	  <label for="email"><b>Email</b></label>
	  <br>
      <input type="text" placeholder="Enter Email" name="email" required>
    </div>  
      
    <div>
      <label for="phoneno"><b>Phone Number</b></label>
      <br>
      <input type="text" placeholder="Enter PhoneNo" name="phoneno" required>
    </div>  
      
    <div>
      <label for="dob"><b>Date of Birth</b></label>
      <br>
      <input type="date" placeholder="Enter DOB" name="dob" required>
    </div>  
      <br>
    <div>
      <label for="address"><b>Address</b></label>
        <br>
      <textarea placeholder="Enter Address" name="add" required></textarea>
    </div>  
     
    <div>
      <label for="psw"><b>Password</b></label>
       <br>
      <input type="password" placeholder="Enter Password" name="psw" required>
    </div>  
      <br>
    <div> 
       <label for="cpsw"><b> Confirm Password</b></label>
       <br>
      <input type="password" placeholder="Enter Password" name="cpsw" required>
    </div>  
    
    <div>
      <label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      </label>
    </div>  
      <br>
      <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
    </div>  
    <div class="container" style="background-color:#f1f1f1; width: auto;" >
      <button type="button" onclick="document.getElementById('id02').style.display='none'" class="cancelbtn">Cancel</button>
      <button type="submit" onclick="document.getElementById('id02').href='login.jsp'" class="signupbtn">Sign Up</button>
    </div>
   </form>
</div>