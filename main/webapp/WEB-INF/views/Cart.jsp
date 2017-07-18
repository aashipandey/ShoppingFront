<%@ page language="java" contentType="text/html"%>
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





<table cellspacing="3" align="center">
 
<tr>
<td colspan="5"><center><h3>Shopping</h3></center></td>
</tr>

<tr bgcolor='pink'>
<td>Product Name</td>
<td>Quantity</td>
<td>SubTotal </td>
<td>Images</td>
<td>Operations</td>
</tr>

<c:forEach items="${cartitems}" var="cartitem">
<tr>
	<form action="<c:url value="/updateCartItem"/>"/>
	<input type='hidden' name='citemid' value='${cartitem.citemid}'/>
	<td>${cartitem.prodname}</td>
	<td><input type="text" value="${cartitem.quantity }" name="quantity"/></td>
	<td>${cartitem.price * cartitem.quantity }</td>
	
	<td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg' />" width='50'/></td>
	
	<td><br>
	<input type="submit" value="UPDATE" class="btn-success btn-block" />
	<a href="<c:url value='deleteCartItem?citemid=${cartitem.citemid}'/>">Delete</a>

	</td>
	</form>
</tr>
</c:forEach>

	<td><a href="index">ContinueShopping </a></td>
	
</tr>

<tr>
<td></td>
</tr>

<tr>
	<td><a href="Checkout"> CheckOut</a></td>
	
</tr>
</table>
</body>
</html>