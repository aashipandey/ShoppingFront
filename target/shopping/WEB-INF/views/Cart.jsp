<%@ page language="java" contentType="text/html"%>

<%@include file="Main.jsp" %>
<html>
<body>
<table cellspacing="3" align="center">
 
<tr>
<td colspan="5"><center><h3>Shopping</h3></center></td>
</tr>

<tr bgcolor='pink'>
<td>Product Name</td>
<td>Quantity</td>
<td>SubTotal</td>
<td>Images</td>
<td>Operations</td>
</tr>

<c:forEach items="${cartitems }" var="cartitem">
<tr>
	<form action="<c:url value="/updateCartItem/${cartitem.citemid }"/>"/>
	<td>${cartitem.prodname }</td>
	<td><input type="text" value="${cartitem.quantity }" name="quantity"/></td>
	<td>${cartitem.price * cartitem.quantity }</td>
	
	<td><img src="<c:url value='/resources/images/${cartitem.prodid }.jpg' />"/></td>
	
	<td>
	<input type="submit" value="UPDATE" class="btn-success btn-block" />
	<input value="/deleteCartItem/${cartitem.citemid }"/>">Delete
	</td>
	</form>
</tr>
</c:forEach>
<tr>
	<td><a href="ProductPage">ContinueShopping</a></td>
	<td><a href="CheckOut">CheckOut</a></td>
</tr>

</table>
</body>
</html>