<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Insert Movie Records</h1>
<form:form method="POST" action="SaveMovies" modelAttribute="mov">
<table>
<tr>
<td>Movie Category</td>
<td><form:input path="moviecat1"/></td>
</tr>
<tr>
<td>Movie Name</td>
<td><form:input path="movienm"/></td>
</tr>
<tr>
<td>Ticket Quantity</td>
<td><form:input path="qty"/></td>
</tr>
<tr>
<td>Ticket Price</td>
<td><form:input path="price"/></td>
</tr>
<tr>
<td>Upload Image</td>
<td><input type="file" path="file1"/></td>
</tr>
<tr><td colspan="2"><input type="submit" value="SUBMIT"/></td>
</tr>
</table>
</form:form>
</body>
</html>