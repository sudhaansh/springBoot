<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<body>
	<center>
		<span> User with Name:</span><h2>${userRecord.name}</h2><span> and Email ID:</span><h2>${userRecord.email}</h2><span> has added successfully</span>  
	<br>
	<br>
	<a href="/"> Home</a>
	</center>
	</body>
</html>