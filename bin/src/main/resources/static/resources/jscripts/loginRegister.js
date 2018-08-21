function selectLView()
{
    if (document.getElementById('admin').checked)
	{	
    	document.getElementById('loginAdmin').style.display="inline-block";
    	document.getElementById('loginMerchant').style.display="none";
    	document.getElementById('loginCustomer').style.display="none";
    	document.getElementById('loginAdminLink').href = "somePage";
    	document.getElementById('id01').style.display="none";
	}
    
    else if (document.getElementById('merchant').checked)
	{
    	document.getElementById('loginAdmin').style.display="none";
    	document.getElementById('loginMerchant').style.display="inline-block";
    	document.getElementById('loginCustomer').style.display="none";
    	document.getElementById('loginMerchantLink').href = "hello";
    	document.getElementById('id01').style.display="none";
	}
    
    else if (document.getElementById('customer').checked)
	{
    	document.getElementById('loginAdmin').style.display="none";
    	document.getElementById('loginMerchant').style.display="none";
    	document.getElementById('loginCustomer').style.display="inline-block";
    	document.getElementById('loginCustomerLink').href = "byee";
    	document.getElementById('id01').style.display="none";
	}
    
}

function selectRView()
{
   if (document.getElementById('merchantreg').checked)
	{
    	document.getElementById('regMerchant').style.display="inline-block";
    	document.getElementById('regCustomer').style.display="none";
    	document.getElementById('loginMerchantLink').href = "hello";
    	document.getElementById('id02').style.display="none";
	}

    else if (document.getElementById('customerreg').checked)
	{
    	document.getElementById('regMerchant').style.display="none";
    	document.getElementById('regCustomer').style.display="inline-block";
    	document.getElementById('loginCustomerLink').href = "byee";
    	document.getElementById('id02').style.display="none";
	}

}

var modal = document.getElementById('id03'); 

window.onclick = function(event) {
	 if (event.target == modal) {
	     modal.style.display = "none";
	 }
}

var modal1 = document.getElementById('id02');
window.onclick = function(event) {
    if (event.target == modal1) {
        modal1.style.display = "none";
    }
}

var modal2 = document.getElementById('id01');
window.onclick = function(event) {
	 if (event.target == modal2) {
	     modal.style.display = "none";
	 }
}



