<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<title>Registration</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<link href="${contextPath}/resource/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <a class="navbar-brand" href="#">Employee Management System</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="/registerform">Add Emp</a>
    
      
    </ul>
  </div>
  
</nav>


 <div class="container">
  <h2>Login</h2>
  <div class="card">
   <div class="card-body">
    <form action="<%=request.getContextPath()%>/loginValidation" method="post">
    
 
     
     <div class=" form-group row">
      <label for="email" class="col-sm-2 col-form-label">Email:</label>
      <div class="col-sm-7">
       <input type="email" class="form-control" name="email" placeholder="Enter Email">
      </div>
     </div>
     
     <div class=" form-group row">
      <label for="pwd" class="col-sm-2 col-form-label">Password:</label>
      <div class="col-sm-7">
       <input type="password" class="form-control" name="pwd" placeholder="Enter Password">
      </div>
     </div>
  
     
     
     

     <button type="submit" class="btn btn-success">Login</button>&emsp;&emsp;&emsp;&emsp;
 
  <label align="center">Not Registered.? Register here....</label>&emsp;
  <a class="btn btn-primary" href="/registerform" role="button">Register</a>
  
  
    </form>
   </div>
  </div>
 </div>
</body>
</html>