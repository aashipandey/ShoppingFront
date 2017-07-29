<%@ page language="java" contentType="text/html" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  <style>
body {
    background-color: black;
}
</style>
</head>

<body>


	<nav class="navbar navbar-inverse">
	 <ul class="nav navbar-nav">

	
		
		<!-- <li class="active"><a href="index" style="color:lightpink">Home</a></li>
		<li><a href="/shopping/ContactUs" style="color:lightpink">ContactUs</a></li>
		<li><a href="/shopping/AboutUs " style="color:lightpink">AboutUs</a></li> -->
		<li><a href="/shopping/logout" style="color:lightpink">Logout</a></li>
		
	</ul>

</nav>


<head>
   <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <title>Order Confirmation</title>
</head>

<body>

	

    <table cellspacing="3" align="center" width="700">
    <thead >
       <tr>
            <td colspan="5"><center><h2 style="color:lightyellow">Shopping Cart</h2></center><br></td>
       </tr>
      </thead> 
       <tr bgcolor='lightblue' height="40">
         <th>Product Name</th>
         <th>Quantity</th>
         <th>Images</th>
         <th>SubTotal</th>
        <!--  <td>Operation</td> -->
        </tr>
       
  <c:forEach items="${cartitems}" var="cartitem">
  
  <tr>
    <td style="color:lightyellow">${cartitem.prodname}</td>
    <td style="color:lightyellow">${cartitem.quantity}</td>
    <td><img src="<c:url value='/resources/images/${cartitem.prodid}.jpg'/>" width="100"/></td> 
    <td style="color:lightyellow">${cartitem.price * cartitem.quantity}</td>
  </tr>
  
 
  <tfoot>
  
  <c:set var="pid" value="${cartitem.citemid}"/>
<%-- <font color='pink'> item id ${cartitem.citemid }</font> --%>

  </c:forEach> 
  
  
  <tfoot>
  
  <%-- <tr>
      <td colspan="3" style="color:lightyellow"> Grand total </td>
      <td style="color:lightyellow">${grandtotal}<br><br></td>
  </tr> --%>
</tfoot>
 

 </table>
 <center><br><br>
 			 <font color="lightyellow" size="5">Grand total : </font>
 			 <font color="lightyellow" size="5">${grandtotal}</font>
 			 
 		</center>
 		
 <br><br><br><center><a href="/shopping/Payment?citemid=${pid}" class="btn btn-info"> Make Payment</a></center>
 
 
 
 
</body>
</html>