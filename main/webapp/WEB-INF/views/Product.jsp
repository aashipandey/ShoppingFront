<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%-- <%@include file="Main.jsp" %> --%>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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



<c:set value="${product}" var="myprod">
</c:set>
<!-- Product Form Started -->
<form:form action="/shopping/InsertProduct" modelAttribute="product" enctype="multipart/form-data" method="POST">

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Details</td>
	</tr>
	<tr>
	<td>Product Id</td>
				<c:if test="${flag}">
<td><form:input path="prodid" value="${myprod.prodid}" readonly="true"/></td>
				</c:if>
			<c:if test="${!flag}">
<td><form:input path="prodid" value="0" readonly="true"/></td>
				</c:if>
			
	
	</tr>
	<tr>
	<td>Product Name</td>
	<c:if test="${flag}">
				<td><form:input path="prodname" value="${myprod.prodname}"/></td>
				</c:if>
				<c:if test="${!flag}">
				<td><form:input path="prodname"/></td>
				</c:if>
	</tr>
	<tr>
		<td>Category</td>
		<td><form:select path="catid">
			<form:option value="0" label="-----select-------"/>
			<form:options items="${catlist }" />
			</form:select>
		</td>
	</tr>
	<tr>
	<td> Supplier </td>
	<td><form:select path="suppid">
			<form:option value="0" label="-----select-------"/>
			<form:options items="${supplist }" />
			</form:select>
		</td>
	
	</tr>
	
	<tr>
	<td> Price </td>
	<td><form:input path="price" value="${myprod.price}"/></td>
	</tr>
	
	<tr>
	<td> Stock </td>
	<td><form:input path="quantity" value="${myprod.quantity}"/></td>
	</tr>
	
	<tr>
	<td> Product Description </td>
	<td><form:textarea path="proddesc" value="${myprod.proddesc}"/></td>
	</tr>
	
	<tr>
	<td> Product Image </td>
	<td><form:input type="file" path="pimage"/></td>
	</tr>
	
	<tr>
	<td colspan="2"><input type="submit"/></td>
	</tr>
</table>
</form:form>
<!-- Displaying the product data using table -->

<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>Category Id</td>
		<td>Supplier Id</td>
		<td>Product Description</td>
		<td>Operation</td>
	</tr>
	<c:forEach items="${prodlist}" var="product">
		<tr bgcolor="cyan">
			<td>${product.prodid}</td>
			<td>${product.prodname}</td>
			<td>${product.price}</td>
			<td>${product.quantity}</td>
			<td>${product.catid}</td>
			<td>${product.suppid}</td>
			<td>${product.proddesc}</td>
			<td>
			<%-- <a href="<c:url value="deleteProduct/${product.prodid}"/>">Delete</a> --%>
			<a href="<c:url value='deleteProduct?prodid=${product.prodid}'/>">Delete</a>
				<a href="<c:url value='updateProduct?prodid=${product.prodid}'/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>