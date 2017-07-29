<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
  <style>
  
  body {
    background-color: black;
}
  
  
    </style> 
</head>

<body>


	<nav class="navbar navbar-inverse">
	 <ul class="nav navbar-nav">

	
		
		<!-- <li class="active"><a href="index" style="color:lightpink">Home</a></li>
		<li><a href="/shopping/ContactUs" style="color:lightpink">ContactUs</a></li>
		<li><a href="/shopping/AboutUs " style="color:lightpink">AboutUs</a></li> -->
		<li><a href="/shopping/logout" style="color:lightpink">Logout</a></li>
		
	</ul>

</nav>





<table cellspacing="3" align="center" width="800">
 <thead>
<tr>
<td colspan="5"><center><h2 style="color:lightyellow">Shopping</h2></center><br></td>
</tr>
</thead>

<tr bgcolor='lightblue' height="40">
<th>Product Name</th>
<th>Quantity</th>
<th>SubTotal </th>
<th>Images</th>
<th>Operations</th>
</tr>


<tr>
<td><br><br></td>
</tr>


<c:forEach items="${cartitems}" var="cartitem">
<tr>
	<form action="<c:url value="/updateCartItem/${cartitem.citemid}"/>"/>
	 <input type='hidden' name='citemid' value='${cartitem.citemid}'/>
	<td style="color:lightyellow">${cartitem.prodname}</td>
	<td><input type="text" value="${cartitem.quantity }" name="quantity"/></td>
	<td style="color:lightyellow">${cartitem.price * cartitem.quantity }</td>
	
	<td width="30"><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg' />" width='50'/></td>
	
	<td><br>
	<input type="submit" value="UPDATE" class="btn btn-success" />
	<a href="<c:url value='deleteCartItem?citemid=${cartitem.citemid}' />" class="btn btn-success">Delete</a>

	</td>
	</form>
	
	
</tr>
</c:forEach>

	<td><br><br><br><br><br><a href="ProductPage" class="btn btn-info btn-lg">ContinueShopping </a></td>
	
</tr>

<tr>
<td></td>
</tr>

<tr>
	<td><br><br><a href="Checkout"  class="btn btn-info btn-lg"> CheckOut</a></td>
	
</tr>


</table>
</body>
</html>