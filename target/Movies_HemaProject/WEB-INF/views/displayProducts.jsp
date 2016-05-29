<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title>Accept Movie Details</title>  
</head>  
<body>  
<h2>Add Movies Data
<form:form method="POST" action="/sdnext/save.html">  
      <table>  
       <tr>  
           <td><form:label path="id">Movie ID:</form:label></td>  
           <td><form:input path="id" value="${movie.id}" readonly="true"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="mnm">Movie Name:</form:label></td>  
           <td><form:input path="mnm" value="${movie.movienm}"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="cat">Movie Category:</form:label></td>  
           <td><form:input path="cat" value="${movie.cat}"/></td>  
       </tr>  
       <tr>  
           <td><form:label path="">Employee Salary:</form:label></td>  
           <td><form:input path="salary" value="${employee.salary}"/></td>  
       </tr>  
         
       <tr>  
           <td><form:label path="address">Employee Address:</form:label></td>  
                    <td><form:input path="address" value="${employee.address}"/></td>  
       </tr>  
          <tr>  
         <td colspan="2"><input type="submit" value="Submit"/></td>  
        </tr>  
   </table>   
  </form:form>  
    
  <c:if test="${!empty employees}">  
  <h2>List Employees</h2>  
 <table align="left" border="1">  
  <tr>  
   <th>Employee ID</th>  
   <th>Employee Name</th>  
   <th>Employee Age</th>  
   <th>Employee Salary</th>  
   <th>Employee Address</th>  
           <th>Actions on Row</th>  
  </tr>  
  
  <c:forEach items="${employees}" var="employee">  
   <tr>  
    <td><c:out value="${employee.id}"/></td>  
    <td><c:out value="${employee.name}"/></td>  
    <td><c:out value="${employee.age}"/></td>  
    <td><c:out value="${employee.salary}"/></td>  
    <td><c:out value="${employee.address}"/></td>  
    <td align="center"><a href="edit.html?id=${employee.id}">Edit</a> | <a href="delete.html?id=${employee.id}">Delete</a></td>  
   </tr>  
  </c:forEach>  
 </table>  
</c:if>  
 </body>  
</html>  