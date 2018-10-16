<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<center>
	<h1>User List | <a href="/">Home</a></h1>
	<hr>
	<br>
  <table class="table table-striped" border="solid">
   <thead>
    <tr>
     <th scope="row">User Id</th>
     
     <th scope="row">Name</th>
     <th scope="row">Email</th>
     
     <th scope="row">Edit</th>
     <th scope="row">Delete</th>
    </tr>
   </thead>
   <tbody>
    <c:forEach items="${user_list}" var="list" >
     <tr>
      <td>${list.id}</td>
      <td>${list.name}</td>
      <td>${list.email}</td>
      <td>
       <spring:url value="/update_user/${list.id }" var="updateURL" />
       <a class="btn btn-primary" href="${updateURL }" role="button">Update</a>
      </td>
      <td>
       <spring:url value="/delete_user/${list.id }" var="deleteURL" />
       <a class="btn btn-primary" href="${deleteURL }" role="button">Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>
  </table>
		  
		  
	</center>
	</body>
</html>