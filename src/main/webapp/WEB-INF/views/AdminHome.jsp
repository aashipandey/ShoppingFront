<%@ page language="java" contentType="text/html"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>

<%-- <%@include file="Main.jsp" %> --%>


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


<nav class="navbar navbar-inverse">
<div class="nav navbar-nav navbar-right">
      <a href="#">${sessionScope.username}</a>
     
    </div>
<ul class="nav navbar-nav">


 
    

<security:authorize access="hasRole('ROLE_ADMIN')">
	
		</security:authorize>

	<li class="active"><a href="index">Home</a></li>
	<li><a href="Category">Manage Category</a></li>
	<li><a href="Supplier">Manage Supplier</a></li>
	<li><a href="Product">Manage Product</a></li>
	<li><a href="/shopping/logout">Logout</a></li>
</ul>
</nav>
</body>
</html>