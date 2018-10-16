<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<center>
<h1>Welcome Page | <a href="#">Home</a> | <a href="user-list">User List</a></h1>
<hr>
<h3>Add User</h3>
 <form modelAttribute="userform"  action="/add-user" method="post">  
            <table> 
            	<tr>  
                    <td><label for="user-id">User Id</label></td>  
                    <td><input type="text" name="id" value="${id}"></input></td>  
                </tr>  
                <tr>  
                    <td><label for="user-name">User Name</label></td>  
                    <td><input type="text" name="name" value="${userRecord.name}"></input></td>  
                </tr>  
                <tr>  
                    <td><label for="email">Email</label></td>  
                    <td><input type="text" name="email" value="${email}"></input></td>  
                </tr>  
                <tr>  
                    <td></td>  
                    <td><input type="submit" value="Update"></input></td>  
                </tr>  
            </table>  
        </form: form>  

</center>
</body>
</html>