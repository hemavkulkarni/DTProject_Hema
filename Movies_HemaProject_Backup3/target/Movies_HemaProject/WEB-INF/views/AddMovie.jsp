<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" href="<%=request.getContextPath() %>/css/bootstrap.css" rel="stylesheet"/>
</head>
</head>
<body>
<form class="form-inline" role="form" method="post" action='addMoviess.htm' name="MoviesForm" id="moviesForm">
<div class="form-group">
    <label for="mid">Movie ID:</label>
    <input type="text" class="form-control" id="mid" value="${getMovieid}"/>
  </div>
<div class="form-group">
    <label for="mnm">Movie Name:</label>
    <input type="text" class="form-control" id="mnm" value="${getMovienm}"/>
  </div> 
  <div class="form-group">
    <label for="mcat">Enter Category:</label>
    <input type="text" class="form-control" id="mcat" value="${getMoviecat}"/>
  </div>
   <div class="form-group">
    <label for="mqty">Ticket Quantity:</label>
    <input type="text" class="form-control" id="mqty" value="${getQty}"/>
  </div>
  <div class="form-group">
    <label for="mprice">Ticket Price:</label>
    <input type="text" class="form-control" id="mprice" value="${getPrice}"/>
  </div>
</body>
</html>