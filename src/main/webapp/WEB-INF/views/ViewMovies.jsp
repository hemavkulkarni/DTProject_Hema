<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
</head>
<body>
<table align="left" border="1">  
  <tr>  
   <th>Movie Id</th>   
   <th>Category</th>  
   <th>Movie Name</th>  
   <th>Quantity</th>  
   <th>Price</th>
   <th>Movie IMAGE</th>
   <td>Edit</td>  
   <td>Delete</td>   
   <td>View Record</td>
  </tr>  
  <c:forEach items="${movieList}" var="movie">  
   <tr>  
    <td><c:out value="${movie.movieid}"/></td>       
    <td><c:out value="${movie.moviecat1}"/></td>
    <td><c:out value="${movie.movienm}"/></td>    
    <td><c:out value="${movie.qty}"/></td>  
    <td><c:out value="${movie.price}"/></td>  
    <td><img src="${movie.fpath}" height="50" width="50"/></td>    
     <%-- <td><a href="<c:url value='/AddMovie?movieid=${movie.movieid}'/>">EDIT</a> | <a href="<c:url value='/DeleteMovie?movieid=${movie.movieid}'/>">DELETE</a></td> --%>
     <td width="50"><a href="<c:url value="/editMovies?id=${movie.movieid}"/>" >Edit </a></td>  
          <td width="50"><a href="<c:url value="/delete?id=${movie.movieid}"/>">Delete</a></td>
            <td width="50"><a href="<c:url value="/ViewRecord?id=${movie.movieid}"/>">View Record</a></td>            
   </tr>  
  </c:forEach>  
 </table> 
 </body> 