<html>
<body>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  <link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css"/>">
  <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
  <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>  
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */ 
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
	  background-color: #f2f2f2;
      padding: 25px;
    }
  </style>
</head>
<body>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Online Book Movie</h1> <!--      
    <p>Mission, Vision & Values</p> -->
  </div>
</div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Logo</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li><a href="<c:url value='/ViewMovies'/>">Movies</a></li>
        <li><a href="<c:url value='/Add'/>">Admin</a></li>      
        <li><a href="<c:url value='/contact'/>">ContactUs</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="<c:url value='/login'/>"><span class="glyphicon glyphicon-user"></span> Login</a></li>
        <li><a href="<c:url value='/reg'/>"><span class="glyphicon glyphicon-user"></span>  Register</a></li>
      </ul>
    </div>
  </div>
</nav>
<br/>
<%@include file="Slider1.jsp" %>
<br/>
<%@include file="Contents1.jsp" %>
</body>
</html>