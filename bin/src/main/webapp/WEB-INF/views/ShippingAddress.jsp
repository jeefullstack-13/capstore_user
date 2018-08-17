<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<title>Insert title here</title>
<link href="./resources/css/shippingCss.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="./resources/script/shippingScript.js"></script>
</head>
<body style="align-items: center;">

<h3 align="center">Shipping Address</h3>
<div style="float: left;width: 50%; " >
<p>Select your preferred shipping address</p>
	<div id="custAdd" style="float: left; color:#337ab7;padding-left: 250px;">
	
<c:if test = "${!empty addresses}">
	
	<c:forEach items= "${addresses}" var="address">
	<table class="table" >
	<tr>
	<td >
	<input type="radio" name="accountType" id="currentAdd" value="${address.addId}"/></td>
	<td>Address ${address.addId}</td>
	<tr><th rowspan="5"></th><td>${address.addSt},</td></tr>
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
<form:form id="myform" method="post" modelAttribute="address" action="save" onsubmit="return validateShippingAddForm()">
<table class="table" >
<tr>
<td><form:input type="hidden" path="addId" size="20" readonly="true" value="${address.addId}"></form:input></td>
<td><input type="button" onclick="closeAltAdd()" style="background-image: url('./resources/images/intoButton.png'); width: 18px;height: 20px"></td>
</tr>
<tr><td class="text">
Enter the shipping address</td></tr>
<tr>
<td>
<div><form:input type="text" id="addSt" path="addSt" placeholder="  Address" style="height:90px;width:405px" /></div>
</td>
</tr>
<tr>
<td>
<div id="address" class="errMessage"></div>
</td>
</tr>
</table>
<table class="table">
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
<div><form:input type="text" id="zipcode" path="zipcode"  placeholder="  Zipcode" style="height:44px;width:200px;"/></div>
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
<div class="btn-ground text-center" style="padding-left: 150px;padding-top: 50px;">
                    <button type="submit" class="btn btn-primary">Proceed to payment page</button> 
</div>

</form:form>
</div>
</div>
<div style="float: right;width: 50%; padding-left: 200px;padding-top: 30px;" ><a href="moneyPage" onclick="return validateAddForm()" name="next">
<div class="btn-ground text-center" id="butptp">
                    <button type="submit" class="btn btn-primary">Proceed to payment page</button> 
</div>
</a></div>


</body>
</html>