<button onclick="document.getElementById('id01').style.display='block'" 
		style="width:auto; float:left; margin-top:20%;margin-left: 0%; background-color:purple;">Login
</button>
<div id="id01" class="modal">
   <form class="modal-content animate" >
    <div class="imgcontainer">
      	<span onclick="document.getElementById('id01').style.display='none'" class="close" 
      	title="Close Modal">&times;</span>
      	<img src=".\resources\images\login_avatar.png" alt="Avatar" class="avatar">
    </div>
	<div class="radioContainer">
			<input type="radio" name="selectuser" value="1" id="admin" onclick=selectLView()>Admin
			<input type="radio" name="selectuser" value="2" id="merchant" onclick=selectLView()>Merchant
			<input type="radio" name="selectuser" value="3" id="customer" onclick=selectLView()>Customer	
	</div>
  
    <div class="container" id="loginAdmin" style="display:none">
      <div>
      		<label for="uname"><b>Admin Username</b></label>
      		<input type="text" placeholder="Enter Username" name="uname" pattern="[A-Za-z]{3,}" 
      		title="Name should not contain any numbers or special characters." required>
	  </div>
	  
      <div>
      		<label for="psw"><b>Admin Password</b></label>
      		<input type="password" placeholder="Enter Password" name="psw" pattern="[A-Z]{1}[A-Za-z0-9]{7,13}" 
      		title="Password should start form a capital letter and can contain small characters,capital characters
     		and digits(0-9) and should be atleast 8 digit and can be 13 digit long" required>
      </div>
      
      <div>
      		<!--  <a id="loginAdminLink" href="#"><button id="login" type="button">Login</button></a> -->
      		<input type="submit" name="submit" value="Login" id="submit">
      </div>
      
      <div>
      		<label>
        		<input type="checkbox" checked="checked" name="remember" > Remember me
      		</label>
      </div>
    </div>
    
    <div class="container" id="loginMerchant" style="display:none">
      <div>
      		<label for="uname"><b>Merchant Username</b></label>
      		<input type="text" placeholder="Enter Username" name="uname" pattern="[A-Za-z]{3,}" 
      		title="Name should not contain any numbers or special characters." required>
	  </div>
	  <div>
      		<label for="psw"><b>Merchant Password</b></label>
      		<input type="password" placeholder="Enter Password" name="psw" pattern="[A-Z]{1}[A-Za-z0-9]{7,13}" 
      		title="Password should start form a capital letter and can contain small characters,capital characters
      		and digits(0-9) and should be atleast 8 digit and can be 13 digit long" required>
      </div>
      <div>
    		<!--   <a id="loginMerchantLink" href="#"><button  id="login" type="button">Login</button></a> -->
     		<input type="submit" name="submit" value="Login" id="submit">
      </div>
      <div>
      	<label>
        		<input type="checkbox" checked="checked" name="remember" > Remember me
      	</label>
  	  </div>
    </div>
  	 
  	 <div class="container" id="loginCustomer" style="display:none">
  	 <div>
     	 	<label for="uname"><b>Customer Username</b></label>
         	<input type="text" placeholder="Enter Username" name="uname" pattern="[A-Za-z]{3,}" 
     		title="Name should not contain any numbers or special characters." required>
	 </div>
	 <div>
			<label for="psw"><b>Customer Password</b></label>
			<input type="password" placeholder="Enter Password" name="psw" pattern="[A-Z]{1}[A-Za-z0-9]{7,13}" 
        	title="Password should start form a capital letter and can contain small characters,capital characters
        	and digits(0-9) and should be atleast 8 digit and can be 13 digit long" required>
     </div>
     <div>
   		 	<!--  <a id="loginCustomerLink" href="#">  <button id="login" type="button">Login</button></a> -->
   			<input type="submit" name="submit" value="Login" id="submit">
     </div>
     <div>
      		<label>
       			<input type="checkbox" checked="checked" name="remember" > Remember me
     	    </label>
     </div> 
	</div>
    <div class="container" style="background-color:#f1f1f1; width: auto;" >
      	<button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      	<span class="psw" style="margin-left: 45%;">Forgot <a href="forgot">password?</a></span>   
    </div>
  </form>
</div>