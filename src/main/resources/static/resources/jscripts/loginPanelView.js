function selectView()
{
    if (document.getElementById('admin').checked)
	{	
    	document.getElementById('loginAdmin').style.display="inline-block";
    	document.getElementById('loginMerchant').style.display="none";
    	document.getElementById('loginCustomer').style.display="none";
    	document.getElementById('loginAdminLink').href = "somePage";
	}
    
    else if (document.getElementById('merchant').checked)
	{
    	document.getElementById('loginAdmin').style.display="none";
    	document.getElementById('loginMerchant').style.display="inline-block";
    	document.getElementById('loginCustomer').style.display="none";
    	document.getElementById('loginMerchantLink').href = "hello";
	}
    
    else if (document.getElementById('customer').checked)
	{
    	document.getElementById('loginAdmin').style.display="none";
    	document.getElementById('loginMerchant').style.display="none";
    	document.getElementById('loginCustomer').style.display="inline-block";
    	document.getElementById('loginCustomerLink').href = "byee";
	}
    
}