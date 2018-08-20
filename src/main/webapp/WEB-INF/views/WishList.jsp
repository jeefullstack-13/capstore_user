

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
   <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop By Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
        
          <li><a href="page1.jsp">Electronics</a></li>
          <li><a href="#">Clothing</a></li>
          <li><a href="#">Books</a></li>
        </ul>
        </ul>

    <form class="navbar-form navbar-left" action="/action_page.php">
    <div class="input-group">
    <input type="text" class="form-control" placeholder="Search">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
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
<div class="container">
	<h1 align = "center">Your WishList</h1>
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table table-hover">
                    <tr>
                        <th>Product</th>
                        <th></th>
                        <th class="text-center">Price</th>
                        <th></th>
                        <th></th>
                        <th></th>
                    </tr>
                <tbody>
                <c:forEach items="${inventoryList}" var="inventory">
                    <tr>
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> 
                            <img class="media-object" src="./resources/images1/IIT Five point.jpg" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                               <div class="caption">
               			   <h4 class="pull-right"> ${inventory.price}</h4>
               			  	<h4>${inventory.productName}</h4>
               		   </div>
                            <div class="product-rating">
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star-o"></i> 
                            </div> 
                            
                            </div>
                            
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>${inventory.price}</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <td>
                        <a href="shippingAddressCap">
                        <button type="button" class="btn btn-success">
                            <span class="glyphicon glyphico-default"></span>Buy Now
                        </button>
                        </a>
                        </td>
                        <td>
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span>Remove
                        </button></td>
                    </tr>
                   </c:forEach>
                    <tr>
                        <td class="col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src=".\resources\images1\IIT Five point.jpg" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading">Product name</h4>
                                 <div class="product-rating">
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star gold"></i> 
                            	<i class="fa fa-star-o"></i> 
                            </div> 
                            </div>
                        </div></td>
                        <td class="col-md-1" style="text-align: center">
                        </td>
                        <td class="col-md-1 text-center"><strong>$100</strong></td>
                        <td class="col-md-1">
                        <td>
                        <a href="shippingAddressCap">
                        <button type="button" class="btn btn-success">
                            <span class="glyphicon glyphico-default"></span>Buy Now
                        </button></a>
                        </td>
                        <td>
                        <button type="button" class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span>Remove
                        </button></td>
                    </tr>
                   
                    <tr>
                        <td>
                        <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span>Continue Shopping
                        </button></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>
                        <button type="button" class="btn btn-success">Checkout<span class="glyphicon"></span>
                        </button></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div>

