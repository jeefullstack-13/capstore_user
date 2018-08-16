<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<script>function validateImage() {
	    var formData = new FormData();
	    var file = document.getElementById("myfile").files[0];
	    formData.append("Filedata", file);
	    var t = file.type.split('/').pop().toLowerCase();
	    if (t != "jpeg" && t != "jpg" && t != "png") {
	        alert('Please select a valid image file');
	        document.getElementById("myfile").value = '';
	        return false;
	    }
	    if (file.size > 1024000) {
	        alert('Max Upload size is 1MB only');
	        document.getElementById("myfile").value = '';
	        return false;
	    }
	    return true;
	}
 </script> 
<style type="text/css">
h1{
	color: blue;
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
	background-color: blue;
	color: white;
	font-weight: bold;
	font-size: 12px;
}


</style>

</head>
<body id="mainCnt" >
<div style=" border-radius: 45px; padding: 50px; width: 800px; height:330px;  box-shadow:5px 5px 5px 5px blue;">
<div >
<h1 align="center"> Picture Uploading Demo </h1>
<hr>

<form name="myform" method="post">
	<table>
		<tr>
			<th colspan="3" style="color:blue;">Upload Here!! </th>
		</tr>
		<tr>
			<td>Name: </td>
			<td>
				<input type="text" name="user"><br>
  
			</td>
			
		</tr>
		<tr>
			<td>File:</td>
			<td>
				 <input type="file" name="myfile" id = "myfile" onchange="validateImage()">
			</td>
			
		</tr>
		<tr>
			<td></td>
			<td>
				<input type="submit" name="submit" class="btn" value="Upload" >
			</td>
			
		</tr>
		
	</table>


</form>

</div>
<hr>

<div style="color:black;">
	<div style="float: left;">Capgemini FLP</div>
	<div style="margin-left: 600px;">Java FLP</div>
</div>
<hr>
</div>
</body>
</html>
	