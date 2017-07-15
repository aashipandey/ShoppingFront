<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<%@include file="Main.jsp" %>


<html>
<head>
  <title>Admin Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<body>
<ul class="nav navbar-nav">
	<li class="active"><a href="AdminHome">Home</a></li>
	<li><a href="Category">Manage Category</a></li>
	<li><a href="Supplier">Manage Supplier</a></li>
	<li><a href="Product">Manage Product</a></li>
	
</ul>
</body>
</html>