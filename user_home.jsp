<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<center>
	<h1>Welcome ${user.name} | <a href="/">Home</a> </h1>
	<hr>
	<h3>Your Unique id is ${user.id} </h3>
	<h3>Your email id is ${user.email} </h3>
 
	</center>
	</body>
</html>