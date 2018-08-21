
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<nav class="navbar navbar-inverse">

  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
   <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop By Category <span class="caret"></span></a>
         <ul class="dropdown-menu">
        
          <li><a href="admininventory1/{category1}">Electronics</a></li>
          <li><a href="admininventory2/{category2}">Clothing</a></li>
          <li><a href="admininventory3/{category3}">Books</a></li>
        </ul>
        </ul>

    <form class="navbar-form navbar-left" action="/action_page.php">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
       <a href="admininventory" id="searchMerch">
							<button class="btn btn-default" type="button"
								onclick="document.getElementById('searchMerch').href='admininventory/' + document.getElementById('searchTerm1').value;">
								<i class="glyphicon glyphicon-search"></i>

							</button>
						</a>
    </div>
  </div>
 </form>
 
    <ul class="nav navbar-nav navbar-right">

 
    <li><a href="#"> My Orders</a></li>
      <li><a href="mycart.com"><span class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
    
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
 
    </ul>
  </div>
</nav>


<div class="container-fluid">
    <div class="content-wrapper">	
		<div class="item-container">	
			<div class="container">	
				<div class="col-md-12">
					<div class="product col-md-3 service-image-left">
                    

							<div class="primeimage">
							<img id="item-display" src=".\resources\images1\prakashfinal.jpg" alt="" style="width:150px;height:290px;"></img>
							</div>
			
					</div>
					
					<div class="container service1-items col-sm-2 col-md-2 pull-left">
						<center>
							<a   id="item-1" class="service1-item">
								<img src=".\resources\images1\productimage2.jpg" alt=""></img>
							</a>
							<a
							 id="item-2" class="service1-item">
								<img src=".\resources\images1\productimage3.png" alt="hi"></img>
							</a>
							<a  id="item-3" class="service1-item">
								<img src=".\resources\images1\productimage4.jpg" alt="" style="height:100px;"></img>
							</a>
						</center>
					</div>
					 <c:forEach items="${inventoryList}" var="inventory">
					
        <tr>
							<div class="col-md-7 pull-right">
					<div class="product-title">
					 ${inventory.productId}
					</div>
					<div class="product name">
					${inventory.productName}
					</div>
					<div class="product-desc">
					  ${inventory.description}
					
					</div>
					
					
					
					<div class="product-rating">
							<i class="fa fa-star gold"></i> 
							<i class="fa fa-star gold"></i> 
							<i class="fa fa-star gold"></i> 
							<i class="fa fa-star gold"></i> 
							<i class="fa fa-star-o"></i>
					 </div>
					
					<div class="btn-group wishlist">
					
						<a href="Wishlist_full" ><button type="button" class="btn btn-danger">
					
							Add to wishlist 
						</button></a>
					</div>
					<br>
					<br>
					<div class="product-price"> ${inventory.price}
								&nbsp;&nbsp;
								$ Discount</div>
					<div class="product-stock">In Stock</div>
					<hr>
					<div class="btn-group cart">
						<button type="button" class="btn btn-success">
							Add to cart 
						</button>
					</div>
				 
                      
								<div class="btn-group cart">
								<a href="#" >
								<button type="button" class="btn btn-success">
										Apply Discount</button>
						</a>   &nbsp;&nbsp;
						<div class="btn-group cart">
				
							<a href="shippingAddressCap" ><button type="button" class="btn btn-success">
							Buy Now 
						</button></a>
					</div>
					</div> 
					</div>
					 </c:forEach>
					
					
					
				</div>
				</div>
					
			</div> 
		</div>
	
    
	<!-- div class="container-fluid">		
			<div class="col-md-12 product-info">
					<ul id="myTab" class="nav nav-tabs nav_tabs">
						
						<li class="active"><a href="#service-one" data-toggle="tab">DESCRIPTION</a></li>
						<li><a href="#service-two" data-toggle="tab">PRODUCT INFO</a></li>
						<li><a href="#service-three" data-toggle="tab">REVIEWS</a></li>
						
						
						<li><a href="#service-four" data-toggle="tab">FEEDBACK</a></li>
	
					</ul>
					<h3>Description</h3>
				<div id="myTabContent" class="tab-content">
						<div class="tab-pane fade in active" id="service-one">
						 
							<section class="container product-info">
							

								<h3>Apple iPhone 6  Features:</h3>
								<p>	11.93 centimeters (4.7-inch) capacitive touchscreen with 1334 x 750 pixels resolution
										iOS v8 operating system with 1.4GHz Apple A8, 1GB RAM, 32GB internal memory and single 
										SI 1810mAH lithium-ion battery1 year manufacturer warranty for device and in-box accessories
										 including batteries from the date of purchase
								</p>
								<ul>
								<li>It supports the latest ATX12V v2.3 standard and is backward compatible with ATX12V 2.2 and ATX12V 2.01 systems</li>
								<li>An ultra-quiet 140mm double ball-bearing fan delivers great airflow at an very low noise level by varying fan speed in response to temperature</li>
								<li>80Plus certified to deliver 80% efficiency or higher at normal load conditions (20% to 100% load)</li>
								<li>0.99 Active Power Factor Correction provides clean and reliable power</li>
								<li>Universal AC input from 90~264V â€” no more hassle of flipping that tiny red switch to select the voltage input!</li>
								<li>Extra long fully-sleeved cables support full tower chassis</li>
								<li>A three year warranty and lifetime access to Corsairâ€™s legendary technical support and customer service</li>
								<li>Over Current/Voltage/Power Protection, Under Voltage Protection and Short Circuit Protection provide complete component safety</li>
								<li>Dimensions: 150mm(W) x 86mm(H) x 160mm(L)</li>
								<li>MTBF: 100,000 hours</li>
								<li>Safety Approvals: UL, CUL, CE, CB, FCC Class B, TÃœV, CCC, C-tick</li>
								</ul>
							</section>
										  
						</div>									
				</div>
			</div> -->
			
							
			
<div>

<h3>Customer Reviews</h3>
<form:form action="saveComments" method="post" modelAttribute="feedback">
<textarea name="comments" rows="3" cols="50" placeholder="Enter your message here">
</textarea> 
<br><br>
  <span class="fa fa-star" id="star1" onclick="add(this,1)"></span>	<input type="radio"  id="stars1" name="rati" value="1" hidden="true">
  <span class="fa fa-star" id="star2" onclick="add(this,2)"></span>	<input type="radio"  id="stars2" name="rati" value="2" hidden="true">
  <span class="fa fa-star" id="star3" onclick="add(this,3)"></span>	<input type="radio"  id="stars3" name="rati" value="3" hidden="true">
  <span class="fa fa-star" id="star4" onclick="add(this,4)"></span>	<input type="radio"  id="stars4" name="rati" value="4" hidden="true">
  <span class="fa fa-star" id="star5" onclick="add(this,5)"></span>	<input type="radio"  id="stars5" name="rati" value="5" hidden="true">
	<br>
  <input type="button" class="btn btn-info" value="Post The Review">
 </form:form >
</div>
<div>
<c:if test="${!empty feedback}">
<table>
		<tr>
			<th><h3>Reviews:</h3></th>
		</tr>
		
		<c:forEach items="${fd}" var="cmt">
			<tr>
			<td>${cmt.customer.customerName }</td></tr>
			<tr>	<td>${cmt.comments}</td></tr>
			<br><br>
</c:forEach></table></c:if>	
</div>
						
		
						<div>
						<h3>Similar Products</h3>
						<br>
						<br>
						
							<section class="sections random-product">
							    <div class="container-fluid">
							        <div class="container">
							            <div class="row">
							                <div class="col-md-4">
							                    <div class="card">
							                        <img class="card-img-top" src=".\resources\images1\prakashfinal.jpg" alt="Card image cap">
							                        <div class="card-body">
							                            <h5 class="card-title">
							                                <a href="#" class="text-dark">IPHONE 2</a>
							                            </h5>
							                        </div>
							                        <div class="card-footer">
							                            <div class="badge badge-danger float-right">30%</div>
							                            <div class="float-left">
							                                <a href="#" class="text-danger">IPHONE 3</a>
							                                <br>
							                                <small class="text-muted"><del>2000 /-</del></small>
							                            </div>
							                        </div>
							                    </div>
							                </div>.col
							                <div class="col-md-4">
							                    <div class="card">
							                        <img class="card-img-top" src=".\resources\images1\prakashfinal.jpg" alt="Card image cap">
							                        <div class="card-body">
							                            <h5 class="card-title">
							                                <a href="#" class="text-dark"> 4000/-  MTC</a>
							                            </h5>
							                        </div>
							                        <div class="card-footer">
							                            <div class="badge badge-danger float-right">30%</div>
							                            <div class="float-left">
							                                <a href="#" class="text-danger">1900 /-</a>
							                                <br>
							                                <small class="text-muted"><del>2000 /-</del></small>
							                            </div>
							                        </div>
							                    </div>
							                </div>.col
							                <div class="col-md-4">
							                    <div class="card">
							                        <img class="card-img-top" src=".\resources\images1\prakashfinal.jpg" alt="Card image cap">
							                        <div class="card-body">
							                            <h5 class="card-title">
							                                <a href="#" class="text-dark"> 40000/-    MTC</a>
							                            </h5>
							                        </div>
							                        <div class="card-footer">
							                            <div class="badge badge-danger float-right">30%</div>
							                            <div class="float-left">
							                                <a href="#" class="text-danger">1900 IPHONE6</a>
							                                <br>
							                                <small class="text-muted"><del>2000 /-</del></small>
							                            </div>
							                        </div>
							                    </div>
							                </div><!-- .col -->
							            </div><!-- .row -->
							        </div><!-- .container -->
							    </div><!-- .container-fluid -->
							</section>
						</div>
			
</div>
</div>
</div>