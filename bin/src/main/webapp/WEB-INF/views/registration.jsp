<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<button onclick="document.getElementById('id02').style.display='block'" 
		style="width:auto; float:right; margin-top:20%; margin-left: 0%; background-color:red;" >SignUp
		
</button>


<div id="id02" class="modal">
 <form:form class="modal-content animate">
    	<div class="imgcontainer">
     		 <span onclick="document.getElementById('id02').style.display='none'" class="close" 
     		 title="Close Modal">&times;</span>
      		<img src=".\resources\images\login_avatar.png" alt="Avatar" class="avatar">
    	</div>
    	<div class="radioContainer">
			<input type="radio" name="selectuser" value="1" id="merchantreg" onclick=selectRView()>Merchant
			<input type="radio" name="selectuser" value="2" id="customerreg" onclick=selectRView()>Customer
		</div>
</form:form>
</div>  

<div class="container" id="regMerchant" style="display:none;">
 <form:form class="modal-content animate" modelAttribute="registerMerchant" method="post" action="signupMerchant" >	
	<div style="margin-left: 10%; margin-top: 4%;">
    <div>
     	<label for="mname"><b>Merchant Name</b></label>
      	<br>
      	<form:input type="text" placeholder="Enter Username"  path="merchantname"/>
    </div>  
    
	 <div>
     	<label for="mconame"><b>Company Name</b></label>
      	<br>
     	<form:input type="text" placeholder="Enter company name" name="mconame" path="companyName"/>
    </div> 
	<div>
	  	<label for="memail"><b>Email</b></label>
	  	<br>
      	<form:input type="text" placeholder="Enter Email" name="memail" path="emailId"/>
    </div>  
      
    <div>
      	<label for="mphoneno"><b>Phone Number</b></label>
      	<br>
      	<form:input type="text" placeholder="Enter PhoneNo" name="mphoneno" path="phoneNo"/>
    </div>  
      
    <div>
      	<label for="mstreetno"><b>Street No.</b></label>
      	<br>
      	<form:textarea placeholder="Enter Street No" name="mstreetno" style="border-radius: 15px;" path="address[0].streetNumber"></form:textarea>
    </div>  
    
    <div>
      	<label for="mcity"><b>City</b></label>
      	<br>
      	<form:select name="mcity" class="select" path="address[0].city">
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
      	</form:select>
    </div> 
   
   	<div>
      	<label for="mstate"><b>State</b></label>
      	<br>
      	<form:select name="mstate" class="select" path="address[0].state">
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
     	</form:select>
    </div> 
   	
      	<div>
      	<label for="mcountry"><b>Country</b></label>
      	<br>
      	<form:select name="mcountry" class="select" path="address[0].country">
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
     	</form:select>
    </div> 
  
   	 <div>
     	<label for="mzipcode"><b>Zipcode</b></label>
      	<br>
      	<form:input type="text" placeholder="Zipcode" name="mzipcode" path="address[0].zipcode" />
    </div> 
   
  
    <div>
      	<label for="mpsw"><b>Password</b></label>
       	<br>
      	<form:input type="password" placeholder="Enter Password" name="mpsw" path="password" pattern="[A-Z]{1}[A-Za-z0-9]{7,13}"/>
    </div>  
 
    <div> 
       	<label for="mcpsw"><b> Confirm Password</b></label>
       	<br>
      	<form:input type="password" placeholder="Enter Password" name="mcpsw" path="password" />
      	
    </div>  
    
    <div> 
       	<label for="misc"><b> Is CapStore Certified</b></label>
       	
       	
       	<br>
       	<form:radiobuttons path="isCertified" items="${radios}"/>
       <%--  <form:radiobutton path = "isCertified" value = "yes" label = "Yes" />
		<form:radiobutton path = "isCertified" value = "no" label = "No" />
       --%>
    </div>  
    <br>

      	<p>By creating an account you agree to our <a href="termsandconditions" style="color:dodgerblue">Terms & Privacy</a>.</p>

	</div>
 <div style="background-color:#f1f1f1; width: auto;" id="regMerchant" style="display: none;">
      <button type="button" onclick="document.getElementById('regMerchant').style.display='none'" class="cancelbtn">Cancel</button>
    <input type="submit" name="submitMerch" value="Signup" id="submitMerchant" class="signupbtn" >
    </div>
</form:form>

</div>














<div class="container" id="regCustomer" style="display:none"> 
  	 
 <form:form class="modal-content animate" modelAttribute="registerCustomer" method="post" action="signupCustomer"> 	 
  	 
 	<div style="margin-left: 10%; margin-top: 4%;">
 	<div>
     <label for="cuname"><b>Customer Name</b></label>
      <br>
      <form:input type="text" placeholder="Enter Username" name="cuname" path="customerName" />
    </div>  
	 
	<div>
	  <label for="cemail"><b>Email</b></label>
	  <br>
      <form:input type="text" placeholder="Enter Email" name="cemail" path="emailId" />
    </div>  
      
    <div>
      <label for="cphoneno"><b>Phone Number</b></label>
      <br>
      <form:input type="text" placeholder="Enter PhoneNo" name="cphoneno" path="phoneNumber"   />
    </div>  
      
    <div>
      <label for="cdob"><b>Date of Birth</b></label>
      <br>
      <form:input type="date" placeholder="Enter DOB" name="cdob" style="border-radius: 15px;" path="dateOfBirth"   />
    </div>  
      <br>
   
    <div>
      	<label for="cstreetno"><b>Street No.</b></label>
      	<br>
      	<form:textarea placeholder="Enter Street No" name="cstreetno" style="border-radius: 15px;" path="address[1].streetNumber"></form:textarea>
    </div>  
   
    <div>
      	<label for="ccity"><b>City</b></label>
      	<br>
      	<form:select name="ccity" class="select" path="address[1].city">
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
      	</form:select>
    </div> 
    
   	<div>
      	<label for="cstate"><b>State</b></label>
      	<br>
      	<form:select name="cstate" class="select" path="address[1].state">
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
     	</form:select>
    </div> 
   
      	<div>
      	<label for="ccountry"><b>Country</b></label>
      	<br>
      	<form:select name="ccountry" class="select" path="address[1].country">
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
     	</form:select>
    </div> 
 
   	 <div>
     	<label for="czipcode"><b>Zipcode</b></label>
      	<br>
      	<form:input type="text" placeholder="Zipcode" name="czipcode" path="address[1].zipcode"   />
    </div> 
   
   
    <div>
      <label for="cpsw"><b>Password</b></label>
       <br>
      <form:input type="password" placeholder="Enter Password" name="cpsw" path="password"   />
    </div>  

    <div> 
       <label for="ccpsw"><b> Confirm Password</b></label>
       <br>
      <form:input type="password" placeholder="Enter Password" name="ccpsw" path="password"   />
    </div>  
  	<br>

      <p>By creating an account you agree to our <a href="termsandconditions" style="color:dodgerblue">Terms & Privacy</a>.</p>
     </div>  
      <div style="background-color:#f1f1f1; width: auto;" id="regCustomer" style="display: none;" >
      <button type="button" onclick="document.getElementById('regCustomer').style.display='none'" class="cancelbtn">Cancel</button>
    
       <input type="submit" name="submitcust" value="Signup" id="submitcustomer" class="signupbtn" >

   </div>
  </form:form>  
</div> 