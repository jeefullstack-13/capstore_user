<button onclick="document.getElementById('id01').style.display='block'" style="width:auto; float:right; margin-top:20%">Login</button>
<div id="id01" class="modal">
   <form class="modal-content animate" >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src=".\resources\images\login_avatar.png" alt="Avatar" class="avatar">
    </div>
	<div class="radioContainer">
	<input type="radio" name="selectuser" value="1" id="admin" onclick=selectLView()>Admin
	<input type="radio" name="selectuser" value="2" id="merchant" onclick=selectLView()>Merchant
	<input type="radio" name="selectuser" value="3" id="customer" onclick=selectLView()>Customer
	</div>
  
    <div class="container" id="loginAdmin" style="display:none">
      <label for="uname"><b>Admin Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
	  <br>
      <label for="psw"><b>Admin Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <br>
       <a id="loginAdminLink" href="#"><button id="login" type="button">Login</button></a>
      <br>
      <label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      </label>
    </div>
    
    <div class="container" id="loginMerchant" style="display:none">
      <label for="uname"><b>Merchant Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
	  <br>
      <label for="psw"><b>Merchant Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <br>
      <a id="loginMerchantLink" href="#"><button  id="login" type="button">Login</button></a>
      <br>
      <label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      </label>
    </div>
  	 
  	 <div class="container" id="loginCustomer" style="display:none">
      <label for="uname"><b>Customer Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>
	  <br>
      <label for="psw"><b>Customer Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
      <br>
     <a id="loginCustomerLink" href="#">  <button id="login" type="button">Login</button></a>
      <br>
      <label>
        <input type="checkbox" checked="checked" name="remember" > Remember me
      </label>
    </div> 

    <div class="container" style="background-color:#f1f1f1; width: auto;" >
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw" style="margin-left: 45%;">Forgot <a href="forgot">password?</a></span>   
    </div>
  </form>
</div>