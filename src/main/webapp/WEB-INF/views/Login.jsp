<%@ page language="java" contentType="text/html"%>

<%@include file="Main.jsp" %>

<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

.submitbtn {
    color:green;
    width: 50%;
}

</style>

</head>
<body>

<h2>Login Form</h2>

<form action="LoginProcess" method="post">
<table align="center">
	<thead >
		<th colspan="2" color="black" ><center>Login</center></th>

	</thead>

	<tr >
			
		<td color="gray">Username</td>
		<td><input type="text" name="uname" required /> </td>
	</tr>

	<tr>
		<td  color="gray">Password</td>
		<td><input type="password" name="passwd" required /> </td>
	</tr>
	
	<tr>
		<td colspan="2" color="black">
	
		<center>
			<button type="submit" class="submitbtn">SUBMIT</button>
		</center>
		
		</td>
		
	
		
		
	</tr>
	</table>
	
	
	</form>
  </body>
</html>
