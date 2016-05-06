<!DOCTYPE html>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <link rel="stylesheet" href= "https://cdn.datatables.net/1.10.11/css/dataTables.bootstrap.min.css">
 <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.0.2/css/responsive.bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.2/angular.js"></script>
 
<body>
<table border="1" id="example" class="table table-stripped table-bordered dt-responsive nowrap">
<thead>
<tr>
<td>PROD ID</td>
<td>PROD NAME</td>
<td>MODEL NUMBER</td>
<td>Quantity</td>
<td>Price</td>
<td>Category</td>
</tr>
</thead>
<tbody><c:forEach items="${Parray}" var="prod">
  <tr>
   <td><c:out value="${prod.getProdID()}" /></td>
   <td><c:out value="${prod.getProdName()}" /></td>
   <td><c:out value="${prod.getmodelno()}" /></td>
   <td><c:out value="${prod.getQuantity()}" /></td>
   <td><c:out value="${prod.getPrice()}"/></td>
   <td><c:out value="${prod.getCategory()}"/></td>
  </tr>
 </c:forEach>
 </tbody>
</html>