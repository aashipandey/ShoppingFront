<%@ page language="java" contentType="text/html" %>;

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%-- <%@include file="Main.jsp" %>
 --%>
 <html>
<head>
  <title>User Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-inverse">
	  <div id="container">
<ul class="nav navbar-nav">

	
	
		 <security:authorize access="hasRole('ROLE_ADMIN')">
	
		</security:authorize>
		<li class="active"><a href="index">Home</a></li>
		<li><a href="/shopping/ContactUs">ContactUs</a></li>
		<li><a href="/shopping/AboutUs ">AboutUs</a></li>
		<li><a href="/shopping/logout">Logout</a></li>
		
	</ul>
	</div>
	
	







</nav>




	<div id="container">
	
	<div class="row">
	
	<div class="col-sm-6 col-md-3">
	<c:forEach items="${prodlist}" var="product">
	<a href="ProductDesc?prodid=${product.prodid}" class="thumbnail">
	<img src="<c:url value="/resources/images/${product.prodid}.jpg "/>"> 
	</a>
	<div class="caption">
	
		<h4>${product.prodname }</h4>
		<p> ${product.price }</p>
		
	</div>
	</c:forEach>
	</div>
	</div>
</div>


</body>
</html>