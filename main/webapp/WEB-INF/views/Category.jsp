<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%-- <%@include file="Main.jsp"%> --%>

<html>
<head>
 <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
   <title>Category</title>
   
   <style>
  
  body {
    background-color: lightyellow;
}
  
  
    </style> 
</head>
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



<c:set value="${category}" var="category">
</c:set>
<!-- Category Form Started -->
<c:if test="${flag}">
	<form action="/shopping/updateCategory" method="post">
</c:if>
<c:if test="${!flag}">
<form action="AddCategory" method="post">
</c:if>
<br>
	<table align="center" cellspacing="2" width="700">
	<thead>
		<tr>
			<h3 colspan="2" height="30">
			<center>Category Details</center></h3>
			<c:if test="${flag}">
			<input type="text" name="catid" value="${category.catid} " />
			</c:if>
		</tr>
		</thead><br><br>
		<tr>
			<td height="30">Category Name</td>
			<c:if test="${flag}">
				<td height="30"><input type="text" name="catname" value="${category.catname}" /></td>
			</c:if>
			<c:if test="${!flag}">
				<td height="30"><input type="text" name="catname" required /></td>
			</c:if>
		</tr>
		<tr>
			<td height="30">Category Description</td>
			<c:if test="${flag}">
				<td height="30"><input type="text" name="catdesc" value="${category.catdesc}" /></td>
			</c:if>
			<c:if test="${!flag}">
			<td height="30"><input type="text" name="catdesc" required/></td>
			</c:if>
		</tr>
		<tr>
			<td colspan="2"><br><br>
			<center>
			<input type="submit" value="AddCategory" class="btn btn-info"/></td>
			</center>
		</tr>
	</table>
</form>
<!-- Category Form Completed -->

<!-- Displaying the Category data using Table -->
<table cellspacing="2" align="center" border="1" width="700">
<thead>
	<tr bgcolor="lightblue">
		<th height="40">Category ID</th>
		<th>Category Name</th>
		<th>Category Desc</th>
		<th>Operation</td>
	</tr>
</thead>
	<c:forEach items="${catdetail}" var="category">
		<tr>
			<td height="30">${category.catid}</td>
			<td height="30">${category.catname}</td>
			<td height="30">${category.catdesc}</td>
			<td height="30"><a href="<c:url value='deleteCategory?catid=${category.catid}'/>">Delete</a>
				
				<a href="<c:url value='updateCategory?catid=${category.catid}'/>">Update</a>
			</td>
		</tr>
	</c:forEach>
</table>
<!-- Completed Displaying Table -->

</body>
</html>