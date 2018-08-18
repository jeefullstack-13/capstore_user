  <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
   <ul class="nav navbar-nav">
      <li class="active"><a href="mainPage.jsp" target="cntFrame">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Shop By Category <span class="caret"></span></a>
        <ul class="dropdown-menu">
         <ul class="list-inline">
          <li><a href="Page1_full">Electronics</a></li><br>
          <li><a href="#">Clothing</a></li><br>
          <li><a href="#">Books</a></li>
        </ul>
        </ul>
      </li>
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

 
    <li><a href="customerorder.jsp" target="cntFrame"> My Orders</a></li>
      <li><a href="customercart.jsp" target="cntFrame"><span class="glyphicon glyphicon-shopping-cart ">MyCart</span></a>
     </li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> LogOut</a></li>
     </ul>
  </div>
</nav>
 <div class="container-fluid text-center">    
  <div class="row content">
    <div class="col-sm-3 sidenav">
    <p><img src="./resources/images/profile.png" class="img-circle" width="100px" height="100px"></p>
      <div class="well"><a href="customerProfile.jsp" target="cntFrame">My Profile</a></div>
      <div class="well">
       <p><a href="inbox.jsp" target="cntFrame">Inbox</a></p></div>
         <div class="well">
       <p><a href="chat.jsp" target="cntFrame">Chat</a></p></div>
       
       
    </div>
     
     <div class="col-sm-9 text-left">
    <iframe name="cntFrame" id="frm" src="mainPage.jsp"  width="900px" height="440px" style="border:none" >
	</iframe>
    </div>
     </div>
</div>


