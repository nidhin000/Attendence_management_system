<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teachers List</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('teacher.jpg'); 
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
        margin: 0;
        padding: 0;
    }
    a {
        color: #fff;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
    .container {
        text-align: center;
        margin-top: 20px;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: seperate;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }
    th {
        background-color: green;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
    }
    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        font-size: 16px;
        margin-top: 30px;
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>
<br>
<br>
<a href="Home.jsp">Home</a>
<br>
<br>
<br>



<table border="1">

    <tr>
        <th>Teacher Name</th>
        <th>Phone no</th>
        <th>Dob</th>
        <th>Email</th>
        <th>Subject</th>
        <th>Dept</th>
    </tr>
    <c:forEach var="T" items="${TList}">
        <tr>
            <td>${T.tname}</td>
            <td>${T.tphone}</td>
            <td>${T.dob}</td>
            <td>${T.temail}</td>
            <td>${T.subject}</td>
            <td>${T.dname}</td>
        </tr>
    </c:forEach>
</table>

<form action="AttendenceServlet">
    <div class="container">
        <input type="submit" value="Add Teacher" name="action"/>
    </div>
</form>

</body>
</html>
