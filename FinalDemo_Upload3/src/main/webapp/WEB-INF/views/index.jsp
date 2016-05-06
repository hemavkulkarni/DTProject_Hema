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
      width: 60%; height:50%;
      margin: auto;  
  } 
   </style>
</head>
<body bgcolor="gray" leftmargin="100" rightmargin="100">
    <ul class="nav navbar-nav">
      <li class="active"><a href="#">Home</a></li>
      <li><a href="#">Page 1</a></li>
      <li><a href="#">Page 2</a></li> 
      <li><a href="#">Page 3</a></li> 
    </ul>
    <div>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
    <a class="navbar-brand" ><font size="20" face="impact">MusicCollections.com</font></a>
    </div>    
    <ul class="nav navbar-nav">
    <li><img src="resources/Images/Logo.jpg" alt="Logo" height="50" width="50" ></li>    
      <li class="active"><a href="<c:url value='/index'/>">Home</a></li>
      <li><a href="<c:url value='/Reg'/>">Register</a></li>
      <li><a href="<c:url value='/Login'/>">To Login</a></li>
      <li><a href="<c:url value='/Products1?category=all'/>">Visit Products</a></li>
      <li><a href="<c:url value='/About'/>">About Us</a></li>
    </ul>            	
  </div>
</nav>  
</div>
<div class="container">
</div>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>
      <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="resources/Images/ElectronicItems.jpg" alt="Image1" class="img-rounded" height="200" width="250">
      </div>

      <div class="item">
        <img src="resources/Images/b.jpg" alt="Image2" class="img-rounded"  height="200" width="250">
      </div>
    
      <div class="item">
        <img src="resources/Images/c.jpg" alt="Image3" class="img-rounded"  height="200" width="250">
      </div>

      <div class="item">
        <img src="resources/Images/a.jpg" alt="Image4" class="img-rounded"  height="200" width="250">
      </div>
      <div class="item">
        <img src="resources/Images/b.jpg" alt="Image5" class="img-rounded"  height="200" width="250">
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
<a href="<c:url value='/Products1?category=1'/>">
<img src="resources/Images/tv.jpg" height="400" width="570">
</a>
</div>
<div class="row col-sm-4">
<a href="<c:url value='/Products1?category=2'/>">
<img src="resources/Images/wm.jpg" height="400" width="570">
</a>
</div>
<div class="row col-sm-4">
<a href="<c:url value='/Products1?category=3'/>">
<img src="resources/Images/fri.jpg" height="400" width="570">
</a>
</div>
</div>
</div>    
</body>
</html>