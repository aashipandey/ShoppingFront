<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
</head>
<body>
    <form action="/shopping/Payment" method="post">
    
    <select name="ptype">
    <option>cash on delivery</option>
    <option>card</option>
    
    

</select>
<input type="submit" value= "Go ahead">
    </form>

</body>
</html>