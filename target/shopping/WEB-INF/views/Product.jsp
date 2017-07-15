<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="Main.jsp" %>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<c:set value="${product }" var="myprod">
</c:set>
<!-- Product Form Started -->
<form :form action="/shopping/InsertProduct" modelAttribute="product" enctype="multipart/form-data">

<table align="center" cellspacing="2">
	<tr>
		<td colspan="2">Product Details</td>
	</tr>
	<tr>
	<td>Product Id</td>
	<td><form:input path="prodid" value="${myprod.prodid}"/></td>
	</tr>
	<tr>
	<td>Product Name</td>
	<td><form:input path="prodname" value="${myprod.prodname}"/></td>
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
	<%-- <td><form:input path="suppid" value="${myprod.suppid}"/></td> --%>
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
	<td> Product Desc </td>
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
</form>
<!-- Displaying the product data using table -->

<table cellspacing="2" align="center" border="1">

	<tr bgcolor="pink">
		<td>Product ID</td>
		<td>Product Name</td>
		<td>Price</td>
		<td>Quantity</td>
		<td>Category Id</td>
		<td>Supplier Id</td>
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
			<td><a href="<c:url value="deleteProduct/${product.prodid}"/>">Delete</a>
				<a href="<c:url value="updateProduct/${product.prodid}"/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>