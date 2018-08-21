

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>


<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header"></div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
		</ul>

		<div>
			<ul class="nav navbar-nav navbar-right">


				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#">Sort By <span class="caret"></span></a>
					<ul class="dropdown-menu">
						<ul class="list-inline">
							<li><a href="page1.jsp">High to Low</a></li>
							<br>
							<li><a href="#">Low to High</a></li>
							<br>
							<li><a href="#">Best Seller</a></li>
							<br>
							<li><a href="#">Most Viewed</a></li>
						</ul>
					</ul></li>

				<li><a href="#"> My Orders</a></li>
				<li><a href="mycart.com"><span
						class="glyphicon glyphicon-shopping-cart"></span> My Cart</a></li>

				<li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
						LogOut</a></li>

			</ul>
		</div>
</nav>


<div class="container">
<c:if test="${!empty message }">
 <div>
   No product Available
 </div>
</c:if>

	<div class="row">
		<div class="col-md-4">

			<c:forEach items="${inventoryList}" var="inventory">
				<div>
					<img src="..\resources\images1\picture4.jpg" alt="product image"
						class="img-responsive">
				</div>

				<br>
				<i>Product Id: ${inventory.productId}</i>
				<h4>Product Name: ${inventory.productName}</h4>
				<h4>Price: ${inventory.price}</h4>
				<h4>${inventory.description}</h4>

				<hr>


			</c:forEach>
		</div>
	</div>
</div>