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
/* Full-width input fields */
input[type=text], input[type=password] {
    width: 100%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

/* Set a style for all buttons */
button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 50%;
}

/* Extra styles for the cancel button */
.cancelbtn {
    padding: 14px 20px;
    background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn,.signupbtn {
    float: left;
    width: 50%;
}

/* Add padding to container elements */
.container {
    padding: 16px;
}

/* Clear floats */
.clearfix::after {
    content: "";
    clear: both;
    display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
    .cancelbtn, .signupbtn {
       width: 50%;
    }
}
</style>
</head>
<body>

<h2>Signup Form</h2>

<form action="/shopping/InsertUserDetails" style="border:1px solid #ccc" method="post">
  <div class="container">

     <label><b> User Name</b></label>
     <input type="text" placeholder="Name" name="username" required>
     
     <label><b>Full name</b></label>
    <input type="text" placeholder="custname" name="custname" required>
     
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required>

 <label><b>Contact Number</b></label>
     <input type="text" placeholder="Mobile Number" name="mobile" required>

     <label><b>Address</b></label>
     <input type="text" placeholder="Address" name="address" required>


    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required>

 <!--    <label><b>Repeat Password</b></label>
    <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
 -->
 
 <!-- <label><b>Role</b></label>
    <input type="text" placeholder="role" name="role" required> -->


    <input type="checkbox" checked="checked"> Remember me
    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

    
    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
  </div>
</form>

</body>
</html>
