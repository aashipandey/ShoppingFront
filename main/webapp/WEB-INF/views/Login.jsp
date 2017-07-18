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

.btn btn-default {
    color:green;
    width: 50%;
}
 .login{
 	background-color:#F4F9A3;
 	height: 100%;
 	width: 100%;
 }
 
 .table {
  border-collapse: separate;
  border-spacing: 50px 0;
}

.table .tr .td {
  padding: 10px 0;
}


</style>

</head>

<body>

	<div class="login">


<form action="loginProcess" method="post">
<input type="hidden" name="${_csrf.parameterName }" value="${_csrf.token }" class="form-control"/>
<table align="center">
	<thead >
		<th colspan="2"  ><br/> <center style="font-size:30px; color:green">  Login </center><br/> </th>
<br/> 
	</thead>
<br/> 
	<tr >
		<br/> 	
	 <td color="black">Username  </td>
		<td><input type="text" class="form-control" name="j_username"  required /> </td>
	</tr>

	<tr>
		<td  color="black">Password  </td>
		<td><input type="password" class="form-control" name="j_password" required /> </td>
	</tr>
	
	<tr>
		<td colspan="2" color="black">
		<br/>
		<center>
			<button type="submit" class="btn btn-success">SUBMIT</button>
		</center>
		
		</td>
		
	
		
		
	</tr>
	</table>
	
	
	</form>
	</div>
	
	 </body>
	
 
</html>
