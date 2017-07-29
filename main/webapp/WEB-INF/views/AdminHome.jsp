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

<style>
  
  body {
    background-color:black;
}
  
  
    </style> 

</head>

<body>


<nav class="navbar navbar-inverse">
<div class="nav navbar-nav navbar-right">
      <a href="#">${sessionScope.username}</a>
     
    </div>
<ul class="nav navbar-nav">


 
    

<security:authorize access="hasRole('ROLE_ADMIN')">
	
		</security:authorize>

	<li class="active"><a href="index" style="color:lightpink">Home</a></li>
	
	<li><a href="/shopping/logout" style="color:lightpink">Logout</a></li>
</ul>
</nav>
	<center><br><br><br><br><br>
	<a href="Category" class="btn btn-info btn-lg">Manage Category</a>
	<br><br><br><br>
	<a href="Supplier" class="btn btn-info btn-lg">Manage Supplier</a>
	<br><br><br><br>
	<a href="Product" class="btn btn-info btn-lg">Manage Product</a>
	</center>
<%-- <img src="<c:url value="resources/images/20.jpg"/>" /> --%>

</body>
</html>