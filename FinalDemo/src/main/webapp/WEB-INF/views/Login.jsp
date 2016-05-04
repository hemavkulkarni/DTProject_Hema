<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  <link rel="stylesheet" href="<c:url value='resources/BootstrapFiles/bootstrap.min.css'/>"/>  
   <script src="<c:url value='resources/BootstrapFiles/jquery.min.js'/>"></script>
  <script src="<c:url value='resources/BootstrapFiles/bootstrap.min.js'/>"></script>
</head>
<body leftmargin="100" topmargin="100" rightmargin="100" text="blue" bgcolor="gray">
<nav class="navbar navbar-inverse">
<div>
	<ul class="nav navbar-nav">
    <li><a href="/index">Home</a></li>
    </ul>
    </div>
<table border="0" bgcolor="cyan" width="50%">
<tr>
<th>User name</th>
<td><input type="text" value="" maxlength="12" size="20"></td>
</tr>
<tr>
<th>Password</th>
<td><input type="password" maxlength="8" size="20"></td>
</tr>
<tr>
<td colspan="2" align="center">
<input type="submit" value="SUBMIT">
</td>
</tr>
</table>
</body>
</html>