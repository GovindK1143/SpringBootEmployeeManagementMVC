<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" xmlns:th="http://www.thymeleaf.com">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>All Employess</title>
    
    
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
      </li>
       <li class="nav-item active">
        <a class="nav-link" href="/viewemp">View Emp</a>
      </li>
    
      
    </ul>
  </div>
  
</nav>

  <div>
  <h3 align="center" color="red">List Of All Employees</h3>
  </div>
  
  <div class="container my-2">
	<h3>Employees List</h3>
			<table border="1" class="table table-striped table-responsive-md">
				<thead class="thead-dark">
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>GENDER</th>
						<th>MOBILE</th>
						<th>EMAIL</th>
						<th>PWD</th>
						<th>CITY</th>
						<th>SALARY</th>
						<th>COMPANY</th>
						<th>DEGN</th>
						<th colspan="2">Actions</th>	
					</tr>
								
				</thead>
			
			
			<c:forEach var="employee" items="${emplist}">
			
				<tr>
					<td>${employee.id}</td>
					<td>${employee.name}</td>
					<td>${employee.gender}</td>
					<td>${employee.mobile}</td>
					<td>${employee.email}</td>
					<td>${employee.pwd}</td>
					<td>${employee.city}</td>
					<td>${employee.salary}</td>
					<td>${employee.company}</td>
					<td>${employee.desg}</td>
    				<td><a href="editemp/${employee.id}"class="btn btn-primary">UPDATE</a></td>
    				<td><a href="deleteemp/${employee.id}" class="btn btn-danger">DELETE</a></td>
				</tr>
			
				</c:forEach>
			
			</table>
		</div>
  
  
  
  
  
   </div>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  </body>
</html>