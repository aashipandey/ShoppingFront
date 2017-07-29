<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>


<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
  
  body {
    background-color:black;
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



<table width="60%" align="center" cellspacing="2" border="1">
<thead>
	<tr bgcolor="lightpink">
		<td colspan="3" height="40"><center>Product Description</center></td>
	</tr>
	</thead>
	<tr>
	<td rowspan="6" height="30"><img src="<c:url value="/resources/images/${prodinfo.prodid }.jpg" />" width="50%"/></td>
	</tr>

	<tr>
	<td height="30" style="color:lightyellow"> Product Id</td>
	<td height="30" style="color:lightyellow">${prodinfo.prodid }</td>
	</tr>
	
	<tr>
	<td height="30" style="color:lightyellow"> Product Name</td>
	<td height="30" style="color:lightyellow">${prodinfo.prodname }</td>
	</tr>
	
	<tr>
	<td height="30" style="color:lightyellow"> Supplier </td>
	<td height="30" style="color:lightyellow">${prodinfo.suppid }</td>
	</tr>
	
	<tr>
	<td height="30" style="color:lightyellow"> Category</td>
	<td height="30" style="color:lightyellow">${prodinfo.catid }</td>
	</tr>
	
	<tr>
	<td height="30" style="color:lightyellow"> Product Description</td>
	<td height="30" style="color:lightyellow">${prodinfo.proddesc }</td>
	</tr>
	
	<tfoot>
	<tr>
	<td height="30" style="color:lightyellow"> Price</td>
	<td height="30" style="color:lightyellow">${prodinfo.price }</td>
	</tr>
	</tfoot>
	<tr>
	<td><td>
	</td>
	<center>
	<form action="addToCart" method="get">
	<input type="hidden" name="prodid" value="${prodinfo.prodid}" required/>
	<font color="lightyellow" size="5px">Quantity</font><br> <br>
	<input type="text" name="quantity" class="form-inline" required/><br><br>
	<input type="submit" value="addToCart" class="btn btn-info"/><br><br>
	</form>
	</center>
	</td>
	</tr>
	</table>
	
	</body>
</html>