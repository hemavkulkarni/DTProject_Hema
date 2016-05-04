<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title> 
  <link rel="stylesheet" href="<c:url value='resources/BootstrapFiles/bootstrap.min.css'/>"/>  
   <script src="<c:url value='resources/BootstrapFiles/jquery.min.js'/>"></script>
  <script src="<c:url value='resources/BootstrapFiles/bootstrap.min.js'/>"></script>
</head>
<body leftmargin="100" topmargin="100" rightmargin="100" text="blue">
<form id="myFrm">
<table width="60%">
<tr>
<th>First Name</th>
<td> <input type="text" size="20"></td>
</tr>
<tr>
<th>Last Name </th>
<td> <input type="text" size="20"></td>
</tr>
<tr>
<th>UserName </th>
<td><input type="text" size="20"></td>
</tr>
<tr>
<th>Address </th>
<td> <textarea rows="3" cols="50"></textarea></td>
</tr>
<tr>
<th>Gender </th>
<td>
<input type="radio" value="Male" checked name="r1"/>Male 
<input type="radio" value="Female" name="r1"/>Female
</td>
</tr>
<tr>
<th colspan="2">
<input type="submit" value="SUBMIT">
</th></tr>
</table>
</form>
</body>
</html>