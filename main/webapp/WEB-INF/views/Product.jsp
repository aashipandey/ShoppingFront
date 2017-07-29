<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%-- <%@include file="Main.jsp" %> --%>
<head>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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



<c:set value="${product}" var="myprod">
</c:set>
<!-- Product Form Started -->
<form:form action="/shopping/InsertProduct" modelAttribute="product" enctype="multipart/form-data" method="POST">
<br>

<%-- <c:if test="${flag}">
<form action="/shopping/updateProduct" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddProduct" method="post">
</c:if>

 --%>

<table align="center" cellspacing="2" width="700">
	<tr>
		<h2 colspan="2"><center>Product Details</center></h2>
	</tr>
	<tr>
	<td width="30">Product Id</td>
				<c:if test="${flag}">
<td><form:input path="prodid" value="${myprod.prodid}" readonly="true"/></td>
				</c:if>
			<c:if test="${!flag}">
<td width="30"><form:input path="prodid" value="0" readonly="true"/></td>
				</c:if>
			
	
	</tr>

	<tr>
	<td width="30">Product Name</td>
	<c:if test="${flag}">
				<td width="30"><form:input path="prodname" value="${myprod.prodname}"/></td>
				</c:if>
				<c:if test="${!flag}">
				<td width="30"><form:input path="prodname" cssClass="error"/></td>
				</c:if>
				
	</tr>
	<tr>
		<td width="30">Category</td>
		<td width="30"><form:select path="catid">
			<form:option value="0" label="-----select-------"/>
			<form:options items="${catlist }" />
			</form:select>
		</td>
	</tr>
	<tr>
	<td width="30"> Supplier </td>
	<td width="30"><form:select path="suppid">
			<form:option value="0" label="-----select-------"/>
			<form:options items="${supplist }" />
			</form:select>
		</td>
	
	</tr>
	
	<tr>
	<td width="30"> Price </td>
	<td width="30"><form:input path="price" value="${myprod.price}"/></td>
	</tr>
	
	<tr>
	<td width="30"> Stock </td>
	<td width="30"><form:input path="quantity" value="${myprod.quantity}"/></td>
	</tr>
	
	<tr>
	<td width="30"> Product Description </td>
	<td width="30"><form:textarea path="proddesc" value="${myprod.proddesc}"/></td>
	</tr>
	
	<tr>
	<td width="30"> Product Image </td>
	<td width="30"><form:input type="file" path="pimage"/></td>
	</tr>
	
	<tr><br>
	<td colspan="2"><center><input type="submit" class="btn btn-info"/></center></td>
	</tr>
</table><br>
</form:form>
<!-- Displaying the product data using table -->

<table cellspacing="2" align="center" border="1" width="700">

	<tr bgcolor="lightblue">
		<th width="30">Product ID</th>
		<th width="30">Product Name</th>
		<th width="30">Product Image</th> 
		<th width="30">Price</th>
		<th width="30">Quantity</th>
		<th width="30">Category Id</th>
		<th width="30">Supplier Id</th>
		<th width="30">Product Description</th>
		<th width="30">Operation</th>
	</tr>
	<c:forEach items="${prodlist}" var="product">
		<tr>
			<td width="30">${product.prodid}</td>
			<td width="30">${product.prodname}</td>
			<td><img src="<c:url value='/resources/images/${product.prodid}.jpg'/>" width="100"/></td> 
			<td width="30">${product.price}</td>
			<td width="30">${product.quantity}</td>
			<td width="30">${product.catid}</td>
			<td width="30">${product.suppid}</td>
			<td width="30">${product.proddesc}</td>
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