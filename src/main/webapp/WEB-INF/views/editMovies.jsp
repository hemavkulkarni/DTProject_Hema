<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  
</head>
<body>
<h3>Edit Movie </h3>
    <c:if test="${!empty mObject}"> 
  <%--   <form:form class="login-form"  method="POST" action="update?${_csrf.parameterName}=${_csrf.token}"  modelAttribute="mov" enctype="multipart/form-data"> --%>
  <form:form class="login-form"  method="POST" action="update"  modelAttribute="mObject" enctype="multipart/form-data">
      <form:input path="movieid" value="${mObject.movieid}" />
      <form:input path="moviecat1" value="${mObject.moviecat1}" />
      <form:input path="movienm" value="${mObject.movienm}"/>
      <form:input path="price" value="${mObject.price}"/>
      <form:input path="qty" value="${mObject.qty}"/>  
         
         Add Image: <form:input type="file"  path="file1" name="file1" id="file1"/>         
           <br /> <br/>
      <input type="submit" value="Update">
     
    </form:form>
    </c:if>
</body>
</html>