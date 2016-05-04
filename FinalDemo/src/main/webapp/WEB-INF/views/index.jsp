<html>
<head>
  <title>Bootstrap Demo</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
  <link rel="stylesheet" href="<c:url value='resources/BootstrapFiles/bootstrap.min.css'/>"/>  
   <script src="<c:url value='resources/BootstrapFiles/jquery.min.js'/>"></script>
  <script src="<c:url value='resources/BootstrapFiles/bootstrap.min.js'/>"></script>
  <style>  
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      height:60%;
      margin: auto;
  }  </style>
</head>
<body bgcolor="gray" leftmargin="50" rightmargin="50">
<!--  
<jsp:include page="BootstrapDemo.html"/>
-->
<nav class="navbar navbar-fixed-top">
  <div class="container-fluid">
   
    <div class="navbar-header">
      <font size="20" face="impact">MusicCollections.com</font>
    </div>
  
    
    <ul class="nav navbar-nav">
    <li><img src="resources/Images/Logo.jpg" alt="Logo" height="50" width="50" ></li>
      <li class="active"><a href="<c:url value='/index'/>">Home</a></li>
      <li><a href="<c:url value='/Reg'/>">Click Here to Register</a></li>
      <li><a href="<c:url value='/Login'/>">Click Here To Login</a></li>
      <li><a href="<c:url value='/Products1'/>">Visit Products</a></li>
      <li><a href="<c:url value='/About'/>">About Us</a></li>
    </ul>    	
  </div>
</nav>  
<div class="container">
<!--
  <h3>Basic Navbar Example</h3>
  <p>A navigation bar is a navigation header that is placed at the top of the page.</p>
  -->
</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>
      <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/Images/1.jpg" alt="Image1" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/Images/2.jpg" alt="Image2" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="resources/Images/3.jpg" alt="Image3" width="460" height="345">
      </div>

      <div class="item">
        <img src="resources/Images/4.jpg" alt="Image4" width="460" height="345">
      </div>
      <div class="item">
        <img src="resources/Images/5.jpg" alt="Image5" width="460" height="345">
      </div>
    </div>
    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>  
<div class="nav-collase collase navbar-responsive-collase">
<div class="row col-sm-12">
<div class="row col-sm-4">
<img src="resources/Images/4.jpg" height="400" width="550">
</div>
<div class="row col-sm-4">
<img src="resources/Images/5.jpg" height="400" width="550">
</div>
<div class="row col-sm-4">
<img src="resources/Images/2.jpg" height="400" width="550">
</div>
</div>
</div>    
</body>
</html>