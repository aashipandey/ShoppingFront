<%@ page language="java" contentType="text/html"%>



<html>
<body>

<nav class="navbar navbar-inverse">
<div class="nav navbar-nav navbar-right">
      <a href="#">${sessionScope.username}</a>
     
    </div>
<ul class="nav navbar-nav">


 
    

<security:authorize access="hasRole('ROLE_ADMIN')">
	
		</security:authorize>

	<li class="active"><a href="index">Home</a></li>
	
	<li><a href="/shopping/logout">Logout</a></li>
</ul>
</nav>

<table cellspacing="3" align="center">
 

	
<tr>
<td><center><h1 color="cyan">Payment Successfull</h1></center></td>
</tr>

</table>

</body>
</html>
