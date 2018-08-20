<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
h1{
	color: black;
}
h2{
	color:white;
}
#mainCnt{
	margin: 0px;
	margin-top:50px;
	margin-left:200px;
	width: 800px;
	font-family:Calibri;
}

#footer{
	background-color: black;
	color:white;
	font-weight: bold;
	font-style:italic;
	font-size:12px;
	padding: 10px 10px 10px 10px;
	border-top: 1px solid;
	border-top-color: white;
}



.errMessage{
	color:red;
	font-weight: bold;
	font-style: italic;
	font-size: 14px;
}
h3{
	color: black;
}
.btn{

	padding: 5px 10px 5px 10px;
	background-color: black;
	color: white;
	font-weight: bold;
	font-size: 12px;
}


</style>
</head>
<body id="mainCnt" >
<div style=" border-radius: 45px; padding: 50px; width: 350px; height:250px;  box-shadow:5px 5px 5px 5px black;">
<div >
<h1 align="center"> ReturnOrder </h1>
<hr>

<form name="myform" method="post">
	<table>
		<tr>
			<th colspan="3" style="color:black;">Return Here!! </th>
		</tr>
		<tr>
                <td align="left">Description*:</td>
                <td>
                	<textarea rows="5" cols="15" name="description" id ="description"></textarea>
                </td>
			</tr>
			<tr>
	            <td align="left">ReturnMode*: </td>
	            <td><select  name="city">
					  <option value="Select ModeOfreturn" selected>SelectReturnMode</option>
					  <option value="BankAccount">BankAccount</option>
					  <option value="Paytm">Paytm</option>
					  <option value="Tez">Tez</option>
					   
				</select></td>
	        </tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" name="submit" class="btn" value="Return" >
			</td>
			
		</tr>
		
	</table>


</form>

</div>
<hr>

<!-- <div style="color:black;">
	<div style="float: left;">Capgemini FLP</div>
	<div style="margin-left: 150px;">Java FLP</div>
</div> -->
<hr>
</div>
</body>
</html>