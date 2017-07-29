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
  
  <style>
 body {
    background-color: lightyellow;
}
  
  
    </style> 
  <body>
  
  
  
  <nav class="navbar navbar-inverse">
<ul class="nav navbar-nav">

	<!-- <li class="active"><a href="index" style="color:lightpink">Home</a></li> -->
	<li><a href="Category" style="color:lightpink">Manage Category</a></li>
	<li><a href="Supplier" style="color:lightpink">Manage Supplier</a></li>
	<li><a href="Product" style="color:lightpink">Manage Product</a></li>
	<li><a href="/shopping/logout" style="color:lightpink">Logout</a></li>
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


<table align="center" cellspacing="2" width="700">
	<tr>
		<h2 colspan="2"><center>Supplier Details</center></h2>
		<c:if test="${flag}">
		<input type="text" name="Suppid" value="${supplier.suppid }" />
		</c:if>
	</tr><br>
	<tr>
	<td height="30">Supplier Id</td>
	
	<c:if test="${flag}">
		<td><input type="text" name="suppid" value="${supplier.suppid }" /></td>
		</c:if>
		
		
		<c:if test="${!flag}">
		<td><input type="text" name="suppid" required/></td>
		</c:if>
		
	</tr>
	<tr>
	<td height="30">Supplier Name</td>
	
	<c:if test="${flag}">
		<td><input type="text" name="suppname" value="${supplier.suppname }" /></td>
		</c:if>
		
		
		<c:if test="${!flag}">
		<td><input type="text" name="suppname" required/></td>
		</c:if>

	</tr>
	<tr>
	<td height="30">Address</td>
	<c:if test="${flag}">
		<td><input type="text" name="address" value="${supplier.address}" /></td>
		</c:if>
		<c:if test="${!flag}">
		<td><input type="text" name="address" required/></td>
		</c:if>
	</tr>
	
	<tr>
	<td colspan="2"><br>
		<center><input type="submit" value="AddSupplier" class="btn btn-info" required/></center>
	</td>
	</tr>
</table>
</form>
<!-- Supplier Form Completed -->

<br><br>
<!-- -- Displaying the Supplier data using Table -->
<table cellspacing="2" align="center" border="1" width="700">
<tr bgcolor="lightblue">
	<th height="40">Supplier Id</th>
	<th height="40">Supplier Name</th>
	<th height="40">Address</th>
	
	<th height="40">Operation</th>
	
</tr>
<c:forEach items="${suppdetail }" var="supplier">
	<tr>
	<td height="30">${supplier.suppid }</td>
	<td height="30">${supplier.suppname }</td>
	<td height="30">${supplier.address }</td>
	
	
	<td height="30"><a href="<c:url value='deleteSupplier?suppid=${supplier.suppid}'/>">Delete</a>
	<a href="<c:url value='updateSupplier?suppid=${supplier.suppid}'/>">Update</a>
	</td>
	</tr>
</c:forEach>

<!-- Completed Displaying Table -->
</table>

</body>
</html>