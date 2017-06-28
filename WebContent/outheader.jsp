<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Audit Control</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
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
      
      
      color:black;
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
     
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->

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
		     <li><a href="AdminLogin.jsp">Management Executive</a></li>
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
    <div class="jumbotron">
  <div class="container text-center" style="background-color:grey;width:100%">
      <h1 style="color:red">Audit Control</h1> 
    
<p>Creating and managing Audit Controls electronically. The system will help the Bank in reducing
the cycle time in closing the Audit Irregularities non-compliance of various accounts. The system
will be a web portal where the Audit Executives would enter compliance / discrepancy details for
each application form. The Branch Managers would get the Audit report online, followup the sales
Executive to comply with the set rules and close the audit Irregularities online. The system will help
the management in assessing the performance of Sales Executives, Branch Managers and Audit
Executives with the help of various Analytical reports. The system will also help the management in
awarding Internal Audit grades to the Branches.</p> 
  </div>
</div>

  
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
 <div class="carousel-inner" >
    <div class="item active">
      <img src="img/sam.jpg" alt="samsung">
    </div>

    <div class="item">
      <img src="img/download.jpg" alt="htc">
    </div>

    <div class="item">
      <img src="img/all.jpg" alt="wash">
    </div>
  </div>
    <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
 
    </body></html>
 