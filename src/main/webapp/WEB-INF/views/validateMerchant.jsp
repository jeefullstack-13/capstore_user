<%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-1.11.1.min.js"></script>
<!---- Include the above in your HEAD tag -------->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<script src=".\resources\jscripts\validateMerchant"></script>
<div class="container">
	<div class="row">
		
       
       <c:if test="${!empty merchantList}">
        <div class="col-md-12">
       
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   
                   <th>Merchant Id</th>
                    <th>Name</th>
                     <th>Company Name</th>
                     <th>Phone Number</th>
                     <th>Email Id</th>
                     <th>Address</th>
                      <th></th>
                       <th></th>
                   </thead>
    <tbody>
    
    <c:forEach items="${merchantList}" var="merchants">
    <tr>
    
    <td>${merchants.merchantId}</td>
    <td>${merchants.name}</td>
    <td>${merchants.companyName}</td>
    <td>${merchants.phoneNo}</td>
    <td>${merchants.emailId}</td>
    <td>${merchants.password}</td>
   
    <td><a href="approved/${merchants.merchantId}">Approve</a></td>
    <td><a href="declined/${merchants.merchantId}">Decline</a></td>
    </tr>
    </c:forEach>
    
   
    </tbody>
        
</table>         
            </div>
            
        </div>
        </c:if>
        
        <c:if test="${empty merchantList}">
        	No new merchants waiting for approval.
        </c:if>
	</div>
</div>
