<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  
    pageEncoding="ISO-8859-1"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>
<h2>Add User Details</h2>  
      <c:out value="${message}"/>
    <form class="login-form" action="<c:url value='j_spring_security_check'/>" method="POST">
      <input type="text" placeholder="username" name="j_username"/>
      <input type="password" placeholder="password" name="j_password"/>
      <input type="submit" value="login">
     <input type="hidden" 
                     name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</body>
</html>