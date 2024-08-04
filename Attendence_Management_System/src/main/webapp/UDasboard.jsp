<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('class.jpg'); 
        background-size: cover;
        background-position: center;
        background-repeat: no-repeat;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 0 auto;
        padding-top: 50px;
    }
    .form-container {
        background-color: rgba(255, 255, 255, 0.8); /* Semi-transparent white background */
        padding: 20px;
        border-radius: 10px;
    }
    input[type="submit"] {
        padding: 10px 20px;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<br>
<a href="http://localhost:9090/Attendence_Management_System/login.html" class="close-btn">logout</a>
<div class="container">
    <div class="form-container">
        <h2>Student Attendence Details</h2>
        <form action="TeacherServlet">
            <input type="submit" value="Attendence Lists" name="action"/>
            
            
        </form>
    </div>
</div>
</body>
</html>
    