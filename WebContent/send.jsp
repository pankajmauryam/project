<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>send</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="input.css">
<style>
  body {
      
      
      color: black;
      font-family: Verdana,sans-serif;margin:0
      width:100%;
height:100%;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  . { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      
      margin-bottom: 0;
      border-radius: 0;
    
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
 
  </style>
</head>
<body>

<nav class="navbar navbar-inverse">
   
    <div class="navbar-header">
     
      <a class="navbar-brand" href="#">Audit Control</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <!--   <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Supplier<span class="caret"></span></a>
        <ul class="dropdown-menu">
    
          <li><a href="register.jsp">Registration</a></li>
        
          <li><a href="signup_servlet">View Details</a></li>
          <li><a href="signup_servlet">Update Details</a></li>
		   <li><a href="signup_servlet">Delete Details</a></li>
        </ul>
      </li>-->
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Users<span class="caret"></span></a>
        <ul class="dropdown-menu">
              <li><a href="AdminLogin.jsp">Admin</a></li>
          <li><a href="AdminLogin.jsp">Audit</a></li>
		   <li><a href="AdminLogin.jsp">Branch manager</a></li>
		     <li><a href="AdminLogin.jspt">Management Executive</a></li>
           </ul>
           </li>
      <li><a href="services.jsp">Services</a></li>
        <li><a href="#">Support</a></li>
        <li><a href="send.jsp">Contact Us</a></li>
          <li><a href="#">About Us</a></li>
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  
</nav>

<br><br><br>
<h1>Contact Us:</h1><p>pankajmauryam@gmail.com</p>
<div class="Container">
<form action="SendingMail">  
<table border=0 align="center"  class="table">
<tr>
<td>
To:</td><td><input type="text" name="to"/><br/>  </td></tr>
<tr><td>Subject:</td><td><input type="text" name="subject"><br/>  </td></tr>
<tr><td>Text:</td><td><textarea rows="10" cols="30" name="msg"></textarea><br/> </td></tr> 
<tr><td><input type="submit" value="send"/></td></tr>
</table>  
</form> 
</div>
<%@include file="footer.jsp"%>  
</body>
</html>