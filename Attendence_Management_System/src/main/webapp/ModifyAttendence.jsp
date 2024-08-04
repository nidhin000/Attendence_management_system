<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modify Student Attendance</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('teacher1.jpg'); 
        background-size: cover;
        background-color: #f8f8f8;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 50%;
        margin: 50px auto;
        background-color: #fff;
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h2 {
        text-align: center;
        color: #333;
    }

    form {
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    input[type="text"],
    select {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    input[type="submit"] {
        width: 50%;
        padding: 10px;
        background-color: #4CAF50;
        border: none;
        color: #fff;
        font-size: 16px;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Modify Student Attendance</h2>
    <form action="AttendenceServlet" method="get">
        Student Name: <input type="text" name="sname"><br>
        Student Reg No: <input type="text" name="sregno"><br>
        Department:
        <select name="dname">
            <option value="MCA">MCA</option>
            <option value="MBA">MBA</option>
            <option value="MSC">MSC</option>
        </select><br><br>
        Subject: <input type="text" name="subject"><br>
        Attendance:
        <select name="attendance">
            <option value="p">Present</option>
            <option value="a">Absent</option>
        </select><br><br>
        Date: <input type="date" name="doc"><br><br>
        
    </form>
</div>

</body>
</html>
