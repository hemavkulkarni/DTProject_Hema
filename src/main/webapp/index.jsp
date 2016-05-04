<html>
<head>
  <title>Bootstrap Demo</title>
  <link rel="stylesheet" href="./BootstrapFiles/bootstrap.min.css">
   <script src="./BootstrapFiles/jquery.min.js"></script>
  <script src="./BootstrapFiles/bootstrap.min.js"></script>
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
<nav class="navbar navbar-fixed-default">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><font size="20" face="impact"><h1>MusicCollections.com</h1></font></a>
    </div>
    <ul class="nav navbar-nav">
    <li><img src="./Images/Logo.jpg" alt="Logo"></li>
      <li class="active"><a href="#">Home</a></li>
      <li><a href="Reg.html">Click Here to Register</a></li>
      <li><a href="Login.html">Click Here To Login</a></li>
      <li><a href="About.html">About Us</a></li>
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
        <img src="Images/1.jpg" alt="Image1" width="460" height="345">
      </div>

      <div class="item">
        <img src="Images/2.jpg" alt="Image2" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="Images/3.jpg" alt="Image3" width="460" height="345">
      </div>

      <div class="item">
        <img src="Images/4.jpg" alt="Image4" width="460" height="345">
      </div>
      <div class="item">
        <img src="Images/5.jpg" alt="Image5" width="460" height="345">
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
  
  
 <!--    <div class="row">
  <div class="col-sm-4"><img src="Images/1.jpg" ></div>
  <div class="col-sm-8"><img src="Images/2.jpg" ></div>
</div>-->
<div class="nav-collase collase navbar-responsive-collase">
<div class="row col-sm-12">
<div class="row col-sm-4">
<img src="./Images/4.jpg" height="400" width="550">
</div>
<div class="row col-sm-4">
<img src="./Images/5.jpg" height="400" width="550">
</div>
<div class="row col-sm-4">
<img src="./Images/2.jpg" height="400" width="550">
</div>
</div>
</div>    
</body>
</html>
