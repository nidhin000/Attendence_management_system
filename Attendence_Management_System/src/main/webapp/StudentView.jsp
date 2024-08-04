<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-image: url('class.jpg'); /* Replace 'background_image.jpg' with your image path */
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    a {
        color: #fff; /* Link color */
        text-decoration: none;
    }
    table {
        margin-top: 20px;
        border-collapse: collapse;
        width: 80%;
        margin-left: auto;
        margin-right: auto;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    th {
        background-color: green;
        color: white;
    }
    .container {
        text-align: center;
        margin-top: 20px;
    }
    .container input[type="submit"] {
        background-color: #4CAF50; /* Submit button color */
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    .container input[type="submit"]:hover {
        background-color: #45a049; /* Hover color */
    }
</style>
</head>
<body>
<br>
<br>
<a href="Home.jsp" class="button">Home</a>
<br>
<br>
<br>
<table border="1">
<tr>
    <th>Student Name</th>
    <th>Student Regno</th>
    <th>Dname</th>
    <th>Student phone no</th>
    <th>Gender</th>
</tr>
<c:forEach var="S" items="${SList}">
    <tr>
        <td>${S.name}</td>
        <td>${S.regno}</td>
        <td>${S.dname}</td>
        <td>${S.phone}</td>
        <td>${S.gender}</td>
    </tr>
</c:forEach>
</table>

  
<div class="container">
    <form action="http://localhost:9090/Attendence_Management_System/AddStudent.jsp" method="get">
        <input type="submit" value="Add Student" name="action"/>
    </form><br>
    <form action="http://localhost:9090/Attendence_Management_System/DeleteStudent.jsp">
        <input type="submit" value="Delete Student" name="action"/>
    </form>
</div>
</body>
</html>
