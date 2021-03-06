<html lang="en">
<head>
  <title>My Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Shopping Wizard</a>
    </div>
    
    <c:if test="${session.Scope.loggedIn }">
    
    <ul class="nav navbar-nav">
      <li class="active"><a href="index">Home</a></li>
	<!-- <li><a href="index.jsp">Index</a></li> -->
	
	 <li><a href="Category">Manage Category</a></li>
       <li><a href="Supplier">Manage Supplier</a></li>
      <li><a href="Product">Manage Product</a></li>      
    </ul>
    
    
    
    <div class="nav navbar-nav navbar-right">
      <a href="#">${sessionScope.username}</a>
    </div>
</c:if>
  
   <c:if test="${!session.Scope.loggedIn }">
  
<ul class="nav navbar-nav">

	
	<!-- <li><a href="index.jsp">Index</a></li> -->
		 <security:authorize access="hasRole('ROLE_ADMIN')">
	
		</security:authorize>
		<li class="active"><a href="index">Home</a></li>
		<li><a href="/shopping/ContactUs">ContactUs</a></li>
		<li><a href="/shopping/ProductPage">Product</a></li>
		<li><a href="/shopping/AboutUs">AboutUs</a></li>
		<li><a href="/shopping/Register">Register</a></li>
		<li><a href="/shopping/Login">Login</a></li>
		
	</ul>
	
	
	
	</c:if>
	
	</div>	

</nav>



  
<!-- 
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    Wrapper for slides
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/1.jpg" alt="Gadgets" style="width:100%;">
      </div>

      <div class="item">
        <img src="2.jpg" alt="Clothes" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="3.jpeg" alt="Footwears" style="width:100%;">
      </div>
<div class="item">
        <img src="4.jpg" alt="Bags" style="width:100%;">
      </div>
    </div>

    Left and right controls
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
 -->



</body>
</html>
