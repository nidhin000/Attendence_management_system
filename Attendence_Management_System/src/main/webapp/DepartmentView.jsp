<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Department Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('teacher2.jpg'); 
        background-size: cover;
         
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        margin: 0;
        padding: 0;
    }
    a {
        color: #333;
        text-decoration: none;
        font-weight: bold;
    }
    a:hover {
        text-decoration: underline;
    }
    table {
        width: 80%;
        margin: 20px auto;
        border-collapse: collapse;
        border: 2px solid #333;
        border-radius: 10px;
        background-color: #fff;
    }
    th, td {
        padding: 10px;
        border: 1px solid #ccc;
        text-align: center;
    }
    th {
        background-color: #4CAF50;
        color: white;
    }
    tr:nth-child(even) {
        background-color: #f2f2f2;
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
<table>
    <tr>
        <th>Department Name</th>
        <th>Department Strength</th>
    </tr>
    <c:forEach var="D" items="${DList}">
        <tr>
            <td>${D.dname}</td>
            <td>${D.dstrength}</td>
        </tr>
    </c:forEach>
</table>
<div class="container">
    <form action="AttendenceServlet" >
        <input type="submit" value="Attendence List" name="action"/>
    </form><br>
    </div>
</body>
</html>
