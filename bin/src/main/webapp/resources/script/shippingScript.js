window.onload= function(){
document.getElementById('altAddress').style.display='none';
}



function validateShippingAddForm(){
var myform=document.getElementById("myform");
var add=myform["addSt"].value;
var city=myform["city"].selectedIndex;
var state=myform["state"].selectedIndex;
var country=myform["country"].selectedIndex;
var zipcode=myform["zipcode"].value;
var validZip=/^\d{6}$/;
var flag=false;

if(add=="" || add==null)
{
flag=false;
document.getElementById('address').innerHTML=" * Please enter Address.";
document.getElementById('addSt').style.borderColor = "#ff4d4d";
}
else if(city=="" || city==null)
{
flag=false;
document.getElementById('address').innerHTML="";
document.getElementById('addSt').style.borderColor = "";
document.getElementById('City').innerHTML=" * Please enter City.";
document.getElementById('city').style.borderColor = "#ff4d4d";
}
else if(state=="" || state==null)
{
flag=false;
document.getElementById('address').innerHTML="";
document.getElementById('addSt').style.borderColor = "";
document.getElementById('City').innerHTML="";
document.getElementById('city').style.borderColor = "";
document.getElementById('State').innerHTML=" * Please enter State.";
document.getElementById('state').style.borderColor = "#ff4d4d";
}
else if(country=="" || country==null)
{
flag=false;
document.getElementById('address').innerHTML="";
document.getElementById('addSt').style.borderColor = "";
document.getElementById('City').innerHTML="";
document.getElementById('city').style.borderColor = "";
document.getElementById('State').innerHTML="";
document.getElementById('state').style.borderColor = "";
document.getElementById('count').innerHTML=" * Please select Country.";
document.getElementById('country').style.borderColor = "#ff4d4d";
}
else if(zipcode=="" || zipcode==null)
{
flag=false;
document.getElementById('address').innerHTML="";
document.getElementById('addSt').style.borderColor = "";
document.getElementById('City').innerHTML="";
document.getElementById('city').style.borderColor = "";
document.getElementById('State').innerHTML="";
document.getElementById('state').style.borderColor = "";
document.getElementById('count').innerHTML="";
document.getElementById('country').style.borderColor = "";
document.getElementById('zipc').innerHTML=" * Please enter Zipcode.";
document.getElementById('zipcode').style.borderColor = "#ff4d4d";
}
else if(validZip.test(zipcode) == false)
{
	flag=false;
	document.getElementById('address').innerHTML="";
	document.getElementById('addSt').style.borderColor = "";
	document.getElementById('City').innerHTML="";
	document.getElementById('city').style.borderColor = "";
	document.getElementById('State').innerHTML="";
	document.getElementById('state').style.borderColor = "";
	document.getElementById('count').innerHTML="";
	document.getElementById('country').style.borderColor = "";
	document.getElementById('zipc').innerHTML=" * Please enter valid Zipcode.";
	document.getElementById('zipcode').style.borderColor = "#ff4d4d";

}
else{
flag=true;
document.getElementById('address').innerHTML="";
document.getElementById('addSt').style.borderColor = "";
document.getElementById('City').innerHTML="";
document.getElementById('city').style.borderColor = "";
document.getElementById('State').innerHTML="";
document.getElementById('state').style.borderColor = "";
document.getElementById('count').innerHTML="";
document.getElementById('country').style.borderColor = "";
document.getElementById('zipc').innerHTML="";
document.getElementById('zipcode').style.borderColor = "";
}
return flag;
}
function closeAltAdd(){
	document.getElementById('altAddress').style.display='none';
	document.getElementById('butptp').style.display='block';
}


function showAltAdd(){
document.getElementById('altAddress').style.display='block';
document.getElementById('butptp').style.display='none';
document.getElementById('curAdd').innerHTML="";
}

function validateAddForm(){
var	flag=false;
	if(document.getElementById('currentAdd').checked){
		document.getElementById('address').innerHTML="";
	document.getElementById('City').innerHTML="";
	document.getElementById('State').innerHTML="";
	document.getElementById('count').innerHTML="";
	document.getElementById('zipc').innerHTML="";
			return true;
	}
	else{
		document.getElementById('curAdd').innerHTML="Select Address or enter alternate address";
		return flag;
	}
		
}
