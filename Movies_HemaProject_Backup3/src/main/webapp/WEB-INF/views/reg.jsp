<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration page</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<form class="form-inline" role="form">
<div class="form-group">
    <label for="fnm">First Name:</label>
    <input type="text" class="form-control" id="fnm">
  </div>
  <div class="form-group">
    <label for="lnm">Last Name:</label>
    <input type="text" class="form-control" id="Last Name">
  </div>
  <div class="form-group">
    <label for="usernm">User Name:</label>
    <input type="text" class="form-control" id="UserName">
  </div>
  <div class="form-group">
    <label for="email">Email address:</label>
    <input type="email" class="form-control" id="email">
  </div>
  <div class="form-group">
    <label for="pwd">Password:</label>
    <input type="password" class="form-control" id="pwd">
  </div>
  <div class="form-group">
    <label for="pwd1">Confirm Password:</label>
    <input type="password" class="form-control" id="pwd1">
  </div>
  <div class="checkbox">
    <label><input type="checkbox">I Agree</label>
  </div>
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</body>
</html>