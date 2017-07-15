<%@ page language="java" contentType="text/html" %>;
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<%@include file="Main.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Page</title>
</head>
<body>

	<div id="container">
	
	<div class="row">
	
	<div class="col-sm-6 col-md-3">
	<c:forEach items="${prodlist}" var="product">
	<a href="ProductDesc/${product.prodid }" class="thumbnail">
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