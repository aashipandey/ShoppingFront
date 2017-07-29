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
  
  
/* Full-width input fields */
input[type=text] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/


}

/* Add padding to container elements */
.container {
    padding: 16px;
}




}
</style>
</head>
<body>


<nav class="navbar navbar-inverse">
	 <ul class="nav navbar-nav">

	
		
		<!-- <li class="active"><a href="index" style="color:lightpink">Home</a></li>
		<li><a href="/shopping/ContactUs" style="color:lightpink">ContactUs</a></li>
		<li><a href="/shopping/AboutUs " style="color:lightpink">AboutUs</a></li>
 -->		<li><a href="/shopping/logout" style="color:lightpink">Logout</a></li>
		
	</ul>

</nav>

<h2 style="color:lightyellow">Shipping Address</h2>

<form action="/shopping/InsertShippingDetails" style="border:1px solid #ccc" method="post">
  <div class="container">

     <label style="color:lightblue"><b> Username</b></label>
     <input type="text" placeholder="Name" name="username" required>
     
     <label style="color:lightblue"><b>Address</b></label>
    <input type="text" placeholder="address" name="address" required>
     
  

   
    
    <div class="clearfix">
      
      <button type="submit" class="btn btn-info">Submit</button>
     
    </div>
  </div>
</form>

</body>
</html>
