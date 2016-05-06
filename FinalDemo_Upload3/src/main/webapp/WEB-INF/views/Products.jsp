<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='resources/BootstrapFiles/bootstrap.min.css'/>"/>  
   <script src="<c:url value='resources/BootstrapFiles/jquery.min.js'/>"></script>
  <script src="<c:url value='resources/BootstrapFiles/bootstrap.min.js'/>"></script>
</head>
<body>
<div class="container">
<h2>Table</h2>
<div class="table-responsive">
<table class="table">
    <thead>
      <tr>
        <th>Product ID</th>
        <th>Product Name</th>
        <th>Quantity</th>
        <th>Price</th>
        <th>Details</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>1</td>
        <td>SG Musical Dholak</td>
        <td>10</td>
        <td>2900.00</td>
        <th><a href="<c:url value='Details'/>">Click to know more</th>
      </tr>
       <tr>
        <td>1</td>
        <td>Morchang</td>
        <td>17</td>
        <td>699.00</td>
        <th><a href="<c:url value='Details'/>">Click to know more</th>
      </tr>
    </tbody>
  </table>
  </div>
</div>
</body>
</html>