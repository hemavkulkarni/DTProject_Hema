<%@ page language="java" contentType="text/html; charset=UTF-8"  
    pageEncoding="UTF-8"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
<title></title>  
</head>  
<body>  
<center>  
  
<div style="color: teal;font-size: 30px">Being Java Guys | User Details</div>  
  
  
  
<c:if test="${!empty user}">  
<table border="1" bgcolor="black" width="600px">  
<tr style="background-color: teal;color: white;text-align: center;" height="40px">  
<td>MovieId</td>  
<td>MovieName</td>  
<td>Category</td>  
<td>Quantity</td>  
<td>Price</td>  
</tr>  
<c:forEach items="${user}" var="user">  
<tr style="background-color:white;color: black;text-align: center;" height="30px" >  
<td><c:out value="${user.getMovieid}"/></td>  
<td><c:out value="${user.getMovienm}"/></td>  
<td><c:out value="${user.getMoviecat}"/></td>  
<td><c:out value="${user.getQty}"/></td>  
<td><c:out value="${user.getPrice}"/></td>  
</tr>  
</c:forEach>  
</table>  
</c:if>  
  
  
<a href="register.html" >Click Here to add new User</a>  
</center>  
</body>  
</html>  