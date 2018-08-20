
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
         <ul class="list-inline">
          <li><a href="admininventory1/electronics">Electronics</a></li><br>
          <li><a href="admininventory2/{category2}">Clothing</a></li><br>
          <li><a href="admininventory3/{category3}">Books</a></li>
        </ul>
        </ul>
      </li>
    
    </ul> 
    <form class="navbar-form navbar-left" action="/action_page.php">
    <div class="input-group">	
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
    <!--   <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button> -->
   
    <a href="Product_full" id="searchMerch" >
							<button class="btn btn-default" type="button"
								onclick="document.getElementById('searchMerch').href='admininventory/' + document.getElementById('searchTerm1').value;">
								<i class="glyphicon glyphicon-search"></i>

							</button>
						</a>
						 </div>
  </div>
 </form>
 <div>
  <ul class="nav navbar-nav navbar-right">

     
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Sort By <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <ul class="list-inline">
          <li><a href="page1.jsp">High to Low</a></li><br>
          <li><a href="#">Low to High</a></li><br>
          <li><a href="#">Best Seller</a></li><br>
            <li><a href="#">Most Viewed</a></li>
        </ul>
        </ul>
     
      </li>
  
   <li><a href="#"> My Orders</a></li>
      <li><a href="mycart.com"><span class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>
     
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
 
    </ul>
  </div>
</nav>


  
   
<div class="container">
    <div class="row">
        <div class="col-md-4">
       
              <!-- <div class="thumbnail"> -->
               <c:forEach items="${inventoryList}" var="inventory">
               
             
                   
                   <div class="product-title">
					 
					</div>
               		 <div class="caption">
               			   <h4 class="pull-right"> Rs ${inventory.price}</h4>
               			  	<h4>${inventory.productName}</h4>
               		   </div>
            			
						<div>
              
               <a href="Product_full"> <img src="..\resources\images1\picture4.jpg" alt="phone image" class="img-responsive"> </a>
                   </div>
                   <div class="product-desc">
					 		 ${inventory.description}
					
						</div>
					</c:forEach>
                </div>
                
                <!-- </div> -->
                
             
              
               </div>
               </div>
               
               
               
               <!--  <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy now</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <img src=".\resources\images1\picture4.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right">$600.99</h4>
                  <h4><a href="#">Mobile Product</a></h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
                    <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy now</button>
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="thumbnail">
                <img src=".\resources\images1\picture4.jpg" alt="" class="img-responsive">
                <div class="caption">
                  <h4 class="pull-right">$599.99</h4>
                  <h4><a href=  "#">Mobile Product</a></h4>
                  <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                </div>
                <div class="ratings">
                  <p>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    <span class="glyphicon glyphicon-star"></span>
                    
                  </p>
                </div>
                <div class="space-ten"></div>
                <div class="btn-ground text-center">
                   
 <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add To Cart</button>
 <button type="button" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Buy now</button>
 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#product_view"><i class="fa fa-search"></i> Quick View</button>
                    
                </div>
                <div class="space-ten"></div>
              </div>
            </div>
    </div>
</div>
<div class="modal fade product_view" id="product_view">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <a href="#" data-dismiss="modal" class="class pull-right"><span class="glyphicon glyphicon-remove"></span></a>
          
            </div>
            <div class="modal-body">
                <div class="row">
                    <div class="col-md-6 product_img">
                        <img src=".\resources\images1\picture4.jpg" class="img-responsive">
                    </div>
                    <div class="col-md-6 product_content">
                        <h4>Product Id: <span>51526</span></h4>
                        <div class="rating">
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            <span class="glyphicon glyphicon-star"></span>
                            (10 reviews)
                        </div>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                        <h3 class="cost"><span class="glyphicon glyphicon-usd"></span> 75.00 <small class="pre-cost"><span class="glyphicon glyphicon-usd"></span> 60.00</small></h3>
                        <div class="row">
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="select">
                                    <option value="" selected="">Color</option>
                                    <option value="black">Black</option>
                                    <option value="white">White</option>
                                    <option value="gold">Gold</option>
                                    <option value="rose gold">Rose Gold</option>
                                </select>
                            </div>
                            end col
                            <div class="col-md-4 col-sm-6 col-xs-12">
                                <select class="form-control" name="select">
                                    <option value="">Capacity</option>
                                    <option value="">16GB</option>
                                    <option value="">32GB</option>
                                    <option value="">64GB</option>
                                    <option value="">128GB</option>
                                </select>
                            </div>
                            end col
                            <div class="col-md-4 col-sm-12">
                                <select class="form-control" name="select">
                                    <option value="" selected="">QTY</option>
                                    <option value="">1</option>
                                    <option value="">2</option>
                                    <option value="">3</option>
                                </select>
                            </div>
                            end col
                       
                       -->
                      
              <!--       
                </div>
            </div> -->
       