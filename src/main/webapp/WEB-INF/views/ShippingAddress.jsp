
<h3 align="center">Shipping Address</h3>
<form:form name="form" action="paymentCap" method="post"  modelAttribute="address1">
<div>
<div style="float: left;width: 50%; " >
<p>Select your preferred shipping address</p>
		
	<div id="custAdd" style="float: left; color:#337ab7;padding-left: 250px;">
	<c:if test = "${!empty addresses}">
	
	<c:forEach items= "${addresses}" var="address">
	<table class="table1" >
	<tr>
	<td >
	<form:radiobutton path="addressId" class="accountType" id="currentAdd" value="${address.addressId}"/></td>
	<td>Address</td>
	<tr><th rowspan="5"></th><td>${address.streetNumber},</td></tr>
<tr><td>${address.city}, ${address.state}, ${address.zipcode}. ${address.country}.</td></tr>
	</table>
	</c:forEach>
	
		</c:if>
		<div id="curAdd" class="errMessage" ></div>
			<br>
			<div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary" onclick="showAltAdd()">Alternate Address</button> 
                    </div>
<!-- <div style="padding-left: 300px"><input type="button" value="Alternate Address" onclick="showAltAdd()" style="width: 150px;height: 30px" id="altAdd"/></div> -->
</div>

	
	
	<div id="altAddress" style="padding-left: 600px">
<form:form id="myform" method="post" modelAttribute="address" action="paymentCap" onsubmit="return validateShippingAddForm()" >
<table class="table1" >
<tr>
<td><form:input type="hidden" path="addressId" size="20" readonly="true" value="${address.addressId}"></form:input></td>
<td><input type="button" onclick="closeAltAdd()" style="background-image: url('./resources/images/intoButton.png'); width: 18px;height: 20px"></td>
</tr>
<tr><td class="text">
Enter the shipping address</td></tr>
<tr>
<td>
<div><form:input type="text" id="addSt" path="streetNumber" placeholder="  Address" style="height:90px;width:410px" /></div>
</td>
</tr>
<tr>
<td>
<div id="address" class="errMessage"></div>
</td>
</tr>
</table>
<table class="table1">
<tr>
<td>
<div><form:select id="city" path="city"  style="height:50px;width:205px">>
 <option value="">--Select City--</option>
    <option value="Hyderabad">Hyderabad</option>
    <option value="Chennai">Chennai</option>
    <option value="Mumbai">Mumbai</option>
      </form:select></div>
      <!-- <div>State</div> -->
</td>
<td>
<div><form:select id="state" path="state"  style="height:50px;width:205px">
<option value="">--Select State--</option>
    <option value="telangana">Telangana</option>
    <option value="tamilnadu">Tamilnadu</option>
    <option value="maharastra">Maharastra</option>
      </form:select></div>
</td>
</tr>
<tr>
<td>
<div id="City" class="errMessage"></div>
</td>
<td>
<div id="State" class="errMessage"></div>
</td>
</tr>
<tr>
<td>
<div>
<form:select id="country" path="country" style="height:50px;width:205px">
<option value="">--Select Country--</option>
    <option value="India">India</option>
    <option value="Afghanistan">Afghanistan</option>
    <option value="Belgium">Belgium</option>
      </form:select>

</div>

</td>
<td>
<div><form:input type="text" id="zipcode" path="zipcode"  placeholder="  Zipcode" style="height:45px;width:205px;"/></div>
</td>
</tr>
<tr>
<td>
<div id="count" class="errMessage"></div>
</td>
<td>
<div id="zipc" class="errMessage"></div>
</td>
</tr>
</table>

<!-- <div align="center"><input type="submit" value="Confirm" style="width: 80px;height: 30px;background: skyblue;"></div> -->
<a href="paymentCap" onclick="return validateShippingAddForm()">
<div class="btn-ground text-center" style="padding-left: 150px;padding-top: 50px;">
                    <button type="submit" class="btn btn-primary"  >Proceed to payment page</button> 
</div>
</a>
</form:form>
	

</div>
</div>
<div style="float: right;width: 50%; padding-left: 200px;padding-top: 30px;" >
<a href="paymentCap" onclick="return validateAddForm()" name="next">
<div class="btn-ground text-center" id="butptp">
                    <button type="submit" class="btn btn-primary" name="next">Proceed to payment page</button> 
</div>
</a>
</div>
</div>
</form:form>