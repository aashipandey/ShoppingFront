<%@ page language="java" contentType="text/html"%>



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
<div class="nav navbar-nav navbar-right">
      <a href="#">${sessionScope.username}</a>
     
    </div>
<ul class="nav navbar-nav">


	<li><a href="/shopping/logout" style="color:lightpink">Logout</a></li>
</ul>
</nav>

<table cellspacing="3" align="center">
 

	
<tr>
<td><br><br><br><br><br><center style="color:lightblue"><h1>Thank you for Shopping</h1></center></td>
</tr>

</table>

</body>
</html>
