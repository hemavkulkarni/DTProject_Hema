<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
 <!--  -->
<form:form method="POST" action="saveUser" modelAttribute="userData">
<table>
<tr><td>User ID</td><td><form:input path="userId" placeholder="userId"/></td></tr>
 <tr><td><form:errors path="userId" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>User Name</td><td><form:input path="username" placeholder="username"/></td></tr>
<tr><td><form:errors path="username" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>Enter Password</td><td><form:password path="password" placeholder="password"/></td></tr>
<tr><td><form:errors path="password" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>Contact Number</td><td><form:input path="mobno" placeholder="mob"/></td></tr>
<tr><td><form:errors path="mobno" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>Email ID</td><td><form:input path="email" placeholder="email"/></td></tr>
<tr><td><form:errors path="email" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>Address</td><td><form:input path="address" placeholder="address"/></td></tr>
<tr><td><form:errors path="address" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>City</td><td><form:input path="city" placeholder="city"/></td></tr>
 <tr><td><form:errors path="city" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td>Country</td><td><form:input path="country" placeholder="country"/></td></tr>
<tr><td><form:errors path="country" cssStyle="color: #ff0000;"></form:errors></td></tr>
<tr><td colspan="2"><button>Register</button></td></tr>
</table>
</form:form>
</body>
</html>