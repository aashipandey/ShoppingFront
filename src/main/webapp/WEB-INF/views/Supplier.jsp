<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Main.jsp" %>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Category</title>
  </head>
  <body>
<!-- Supplier Form Started -->

<c:if test="${flag}">
<form action="/shopping/UpdateSupplier" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddSupplier" method="post">
</c:if>


<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Supplier Details</td>
		<c:if test="${flag}">
		<input type="text" name="suppid" value="${supplier.Suppid }"/>
		</c:if>
	</tr>
	<tr>
	<td>Supplier Id</td>
	
	<c:if test="${flag}">
		<td><input type="text" name="suppid" value="${supplier.Suppid }"/></td>
		</c:if>
		
		
		<c:if test="${!flag}">
		<td><input type="text" name="suppid"/></td>
		</c:if>
		
	</tr>
	<tr>
	<td>Supplier Name</td>
	
	<c:if test="${flag}">
		<td><input type="text" name="suppname" value="${supplier.Suppname }"/></td>
		</c:if>
		
		
		<c:if test="${!flag}">
		<td><input type="text" name="suppname"/></td>
		</c:if>

	</tr>
	<tr>
	<td>Address</td>
	<c:if test="${flag}">
		<td><input type="text" name="address" value="${supplier.Address}"/></td>
		</c:if>
		<c:if test="${!flag}">
		<td><input type="text" name="address"/></td>
		</c:if>
	</tr>
	<tr>
	<td colspan="2">
		<input type="submit" value="AddSupplier"/>
	</td>
	</tr>
</table>
</form>
<!-- Supplier Form Completed -->


<!-- -- Displaying the Supplier data using Table -->
<table cellspacing="2" align="center" border="1">
<tr bgcolor="pink">
	<td>Supplier Id</td>
	<td>Supplier Name</td>
	<td>Address</td>
	<td>Operation</td>
	
</tr>
<c:forEach items="${catdetail }" var="category">
	<tr bgcolor="cyan">
	<td>${supplier.Suppid }</td>
	<td>${supplier.Suppname }</td>
	<td>${supplier.Address }</td>
	<td><a href="<c:url value="/deleteSupplier/${supplier.Suppid }"/>">Delete</a>
	<a href="<c:url value="/updateSupplier/${supplier.Suppid }"/>">Update</a>
	</td>
	</tr>
</c:forEach>

<!-- Completed Displaying Table -->
</table>

</body>
</html>