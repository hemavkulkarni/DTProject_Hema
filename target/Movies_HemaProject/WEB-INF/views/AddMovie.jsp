<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
 <head>  	
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
  <title>Spring MVC Form Handling</title>  
 </head>  
 <body>  
  <h2>Add Movie Details</h2>  
  <form:form method="POST" action="SaveMovies" modelAttribute="mov" enctype="multipart/form-data">  
      <table>  
       <tr>  
           <td>Movie Category:</td>  
           <td><form:input path="moviecat1"/></td>  
       </tr>  
       <tr>  
           <td>Movie Name:</td>  
           <td><form:input path="movienm"/></td>  
       </tr> 
               
       <tr>  
           <td>Ticket price:</td>  
           <td><form:input path="price"/></td>  
       </tr>  
       <tr>  
           <td>Quantity:</td>  
           <td><form:input path="qty"/></td>  
       </tr>     
       <tr>  
           <td>Movie Image :</td>  
          <td> Upload File :
           <form:input type="file" path="file1"/></td>
       </tr> 
         <tr>
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form>  