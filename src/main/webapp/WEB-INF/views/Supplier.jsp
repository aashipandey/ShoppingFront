<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%-- <%@include file="Main.jsp" %> --%>

<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <title>Supplier</title>
  </head>
  <body>
  
  
  
  <nav class="navbar navbar-inverse">
<ul class="nav navbar-nav">

	<li class="active"><a href="index">Home</a></li>
	<li><a href="Category">Manage Category</a></li>
	<li><a href="Supplier">Manage Supplier</a></li>
	<li><a href="Product">Manage Product</a></li>
	<li><a href="/shopping/logout">Logout</a></li>
</ul>
</nav>
  
  
  
  
  <c:set value="${supplier}" var="supplier">
</c:set>
<!-- Supplier Form Started -->

<c:if test="${flag}">
<form action="/shopping/updateSupplier" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddSupplier" method="post">
</c:if>


<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Supplier Details</td>
		<c:if test="${flag}">
		<input type="text" name="Suppid" value="${supplier.suppid }"/>
		</c:if>
	</tr>
	<tr>
	<td>Supplier Id</td>
	
	<c:if test="${flag}">
		<td><input type="text" name="suppid" value="${supplier.suppid }"/></td>
		</c:if>
		
		
		<c:if test="${!flag}">
		<td><input type="text" name="suppid"/></td>
		</c:if>
		
	</tr>
	<tr>
	<td>Supplier Name</td>
	
	<c:if test="${flag}">
		<td><input type="text" name="suppname" value="${supplier.suppname }"/></td>
		</c:if>
		
		
		<c:if test="${!flag}">
		<td><input type="text" name="suppname"/></td>
		</c:if>

	</tr>
	<tr>
	<td>Address</td>
	<c:if test="${flag}">
		<td><input type="text" name="address" value="${supplier.address}"/></td>
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
<c:forEach items="${suppdetail }" var="supplier">
	<tr bgcolor="cyan">
	<td>${supplier.suppid }</td>
	<td>${supplier.suppname }</td>
	<td>${supplier.address }</td>
	
	
	<td><a href="<c:url value='deleteSupplier?suppid=${supplier.suppid}'/>">Delete</a>
	<a href="<c:url value='updateSupplier?suppid=${supplier.suppid}'/>">Update</a>
	</td>
	</tr>
</c:forEach>

<!-- Completed Displaying Table -->
</table>

</body>
</html>