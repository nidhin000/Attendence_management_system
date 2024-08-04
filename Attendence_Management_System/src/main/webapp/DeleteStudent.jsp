<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Student</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('class.jpg'); 
        background-size: cover;
        background-repeat: no-repeat;
       
        margin: 0;
        padding: 0;
    }
    .container {
        width: 400px;
        margin: 100px auto;
        padding: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
        text-align: center;
        color: #333;
    }
    form {
        text-align: center;
    }
    input[type="text"] {
        width: 200px;
        padding: 10px;
        margin-top: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 10px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<div class="container">
    <h1>Delete Student</h1>
    <form action="AttendenceServlet">
        <input type="text" name="regno" placeholder="Enter Student Regno" /><br><br>
        <input type="submit" value="Remove Student" name="action" />
    </form>
</div>
</body>
</html>

