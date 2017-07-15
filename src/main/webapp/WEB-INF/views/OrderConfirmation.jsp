<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>


	<nav class="navbar navbar-inverse">
	 <ul class="nav navbar-nav">

	
		
		<li class="active"><a href="index">Home</a></li>
		<li><a href="/shopping/ContactUs">ContactUs</a></li>
		<li><a href="/shopping/AboutUs ">AboutUs</a></li>
		<li><a href="/shopping/logout">Logout</a></li>
		
	</ul>

</nav>


<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Order Confirmation</title>
</head>

<body>
    <table cellspacing="3" align="center">
       <tr>
            <td colspan="5"><center><h3>Shopping Cart</h3></center></td>
       </tr>
       <tr bgcolor='blue'>
         <td>Product Name</td>
         <td>Quantity</td>
         <td>Images</td>
         <td>SubTotal</td>
        <!--  <td>Operation</td> -->
        </tr>
  <c:forEach items="${cartitems}" var="cartitem">
  
  <tr>
    <td>${cartitem.prodname}</td>
    <td>${cartitem.quantity}</td>
    <td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg'/>" width="100"/></td> 
    <td>${cartitem.price * cartitem.quantity}</td>
  </tr>
  
  </c:forEach>
  <tr>
      <td colspan="3"> Grand total </td>
      <td>${grandtotal}</td>
  </tr>
  
  <tr>
    <td> <br><br><br><a href="/shopping/Payment/"+${cartitem.citemid}> Make Payment</a></td>
  </tr>
 
</body>
</html>