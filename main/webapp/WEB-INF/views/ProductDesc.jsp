<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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



<table width="60%" align="center" cellspacing="2" border="1">
	<tr bgcolor="pink">
		<td colspan="3"><center>Product Description</center></td>
	</tr>
	
	<tr>
	<td rowspan="6"><img src="<c:url value="/resources/images/${prodinfo.prodid }.jpg" />" width="50%"/></td>
	</tr>

	<tr>
	<td> Product Id</td>
	<td>${prodinfo.prodid }</td>
	</tr>
	
	<tr>
	<td> Product Name</td>
	<td>${prodinfo.prodname }</td>
	</tr>
	
	<tr>
	<td> Supplier </td>
	<td>${prodinfo.suppid }</td>
	</tr>
	
	<tr>
	<td> Category</td>
	<td>${prodinfo.catid }</td>
	</tr>
	
	<tr>
	<td> Product Description</td>
	<td>${prodinfo.proddesc }</td>
	</tr>
	
	<tr>
	<td> Price</td>
	<td>${prodinfo.price }</td>
	</tr>
	
	<tr>
	<td><td>
	</td>
	<form action="addToCart" method="get">
	<input type="hidden" name="prodid" value="${prodinfo.prodid}"/>
	Quantity 
	<input type="text" name="quantity" class="form-control btn-block"/>
	<input type="submit" value="addToCart" class="btn-success btn-block"/>
	</form>
	</td>
	</tr>
	</table>
	
	</body>
</html>