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

<!-- Navbar -->

<nav class="navbar navbar-inverse">
   
    <div class="navbar-header">
     
      <a class="navbar-brand" href="#">Audit Control</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.html">Home</a></li>
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
          <li><a href="About.jsp">About Us</a></li>
    </ul>
     <ul class="nav navbar-nav navbar-right">
      <li style=" padding-top:10px;color:green""><p ><%= session.getAttribute("loginId") %><a href="LogoutServlet"><span class="glyphicon glyphicon-user" ></span><input type="submit" value="Logout!!"></a></p></li>
     
    </ul>
  </div>
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

<br><br>

<!-- The Band Section -->
  <div class="w3-container w3-content w3-center w3-padding-64" style="max-width:2000px;background-color:red" id="band">
    <h2 class="w3-wide">Manager</h2>
    <p class="w3-opacity"><i>We love Programming</i></p>
    <p class="w3-justify"> Project Managers who manage the projects that fall in their Line of Business (LOB). A line manager, also called the reporting manager, is a person responsible for administrative part of the resources.</p>
    <div class="w3-row w3-padding-32">
      <div class="w3-third">
        <p>Pankaj</p>
        <img src="img/shiva.jpg" class="w3-round w3-margin-bottom" alt="Pankaj " style="width:60%">
      </div>
      <div class="w3-third">
        <p>Shiva</p>
        <img src="img/Shivam.jpg" class="w3-round w3-margin-bottom" alt="Pankaj" style="width:60%">
      </div>
      <div class="w3-third">
        <p>Pankaj</p>
        <img src="img/shiva.jpg" class="w3-round" alt="Pankaj" style="width:60%">
      </div>
    </div>
  </div>


<!-- Second Container -->
<!-- The Electronic Section -->
  <div class="w3-black" id="tour">
    <div class="w3-container w3-content w3-padding-64" style="max-width:2000px">
      <h2 class="w3-wide w3-center">Electronics Site</h2>
      <p class="w3-opacity w3-center"><i>Remember to buy your Electronics!</i></p><br>

      <ul class="w3-ul w3-border w3-white w3-text-grey">
        <li class="w3-padding">September <span class="w3-tag w3-red w3-margin-left">Sold out</span></li>
        <li class="w3-padding">October <span class="w3-tag w3-red w3-margin-left">Sold out</span></li>
        <li class="w3-padding">November <span class="w3-badge w3-black w3-margin-left">3</span></li>
      </ul>

      <!-- <div class="w3-row-padding w3-padding-32" style="margin:0 -16px">
        <div class="w3-third w3-margin-bottom">
          <img src="img/porche.jpg" alt="New York" style="width:100%" class="img-circle">
          <div class="w3-container w3-white">
            <p><b>New York</b></p>
            <p class="w3-opacity">Fri 27 Nov 2016</p>
            <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">About</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="img/porche.jpg" alt="Paris" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>Paris</b></p>
            <p class="w3-opacity">Sat 28 Nov 2016</p>
            <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">About</button>
          </div>
        </div>
        <div class="w3-third w3-margin-bottom">
          <img src="img/porche.jpg" alt="San Francisco" style="width:100%" class="w3-hover-opacity">
          <div class="w3-container w3-white">
            <p><b>San Francisco</b></p>
            <p class="w3-opacity">Sun 29 Nov 2016</p>
            <p>Praesent tincidunt sed tellus ut rutrum sed vitae justo.</p>
            <button class="w3-button w3-black w3-margin-bottom" onclick="document.getElementById('ticketModal').style.display='block'">About</button>
          </div>
        </div>
      </div>
    </div>
  </div>-->









<!-- Third Container (Grid) -->
<!-- start main content --> 
 <div class="main-content">   
  <div class="container">     
   <div class="row">        <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">       
      <h3>News &amp; Events <i class="fa fa-play"></i></h3>          <div class="vticker">            <ul>              <div class="dbox">                <h5>   Send Mail&nbsp;&nbsp; </h5>                <small><a href="2dec-news.html" >Two week ISTE Main Workshop on Control...</a></small> </div>           
         <div class="dbox">                <h5>    Services&nbsp;&nbsp; </h5>                <small><a href="15dec-news.html" > International Symposium on Signal...</a></small> </div>              <div class="dbox">                <h5>     Process of Educational Verification &nbsp;&nbsp;</h5> <small><a href="6jan.html" > International Symposium on Emerging...</a></small> </div>              
<div class="dbox">                <h5>      Products&nbsp;&nbsp; </h5>                <small><a href="16mar.html" >2015 International Conference...</a></small> </div>            </ul>          </div>       
   <a href="news-and-events.html" class="btn btn-primary btn-md margin-top10">MORE <i class="fa fa-angle-right"></i></a> </div>   
     <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">          <h3>Manager <i class="fa fa-play"></i></h3>          <p><img src="img/shiva.jpg"  width=20%  class="imgResponsive"></p>          <p> Providing technical education   </p>          <a href="#" class="btn btn-primary btn-md">MORE <i class="fa fa-angle-right"></i></a> </div>        
     <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">          <h3>CEO <i class="fa fa-play"></i></h3>          <p><img src="img/shivam.jpg" class="imgResponsive0" width=20% height=125 ></p>          <p>Globalization  and liberalization...</p>          <a href="#" class="btn btn-primary btn-md">MORE <i class="fa fa-angle-right"></i></a> </div>      
       <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">          <h3>Important Links <i class="fa fa-play"></i></h3>          
       <a href="send.jsp" class="btn btn-success btn-block" role="button"><i class="fa fa-check"></i>  &nbsp;  Send Mail</a> <a href="services.jsp" class="btn btn-success btn-block" role="button"><i class="fa fa-check"></i> &nbsp; Services</a> 
       
<a href="mba-admission-procedure.html" class="btn btn-success btn-block" role="button"><i class="fa fa-check"></i>&nbsp; Product Specification</a><a href="#" class="btn btn-success btn-block" role="button">MORE <i class="fa fa-angle-right"></i></a> </div>      </div>  
</div></div>
<!-- Footer -->
<br><br>

 <%@include file="footer.jsp"%> 
</body>
</html>
