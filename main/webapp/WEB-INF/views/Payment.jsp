<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<title>Payment</title>

<style>
  
  body 
 	 {
   		 background-color:gray;
	}

</style>

</head>
<body>
<center>
	<br><br><br><br><br><br>
      <form action="Payment?citemid=${cart.citemid}" method="post"> 
   
 
   
   
<!-- <form action="/shopping/Shipping" method="post">  -->
 
    <select name="ptype" id="menu" >
    
    <option>cash on delivery</option>
	<option>card</option>
    <br><br><br>
     
	
	
</select>
<br><br><br>
<input type="text" name="cardnumber" id="cardfield" value='0'  /><br><br><br>
	
    <input type="hidden" name="cardnumber"  value="0"  /><br><br><br>
		
<br><br>
	<input type="submit" value= "Go ahead" class="btn btn-info">

    </form>
</center>
<script type="text/javascript">
var selectmenu=document.getElementById("menu")
selectmenu.onchange=function(){ //run some code when "onchange" event fires
 var chosenoption=this.options[this.selectedIndex] //this refers to "selectmenu"
 if (chosenoption.value=="cash on delivery"){
	  document.getElementById("cardfield").disabled = true; 
	 //open target site (based on option's value attr) in new window
 }
 if (chosenoption.value=="card"){
	  document.getElementById("cardfield").disabled = false; 
	 //open target site (based on option's value attr) in new window
}
}
</script>

</body>
</html>