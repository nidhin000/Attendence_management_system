<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attendance Table</title>
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
<br>
<br>
<br>
<table border="1">
    <tr>
        <th>Student Name</th>
        <th>Student Regno</th>
        <th>
            <select id="departmentFilter">
                <option value="">All Departments</option>
                <option value="MCA">MCA</option>
                <option value="MBA">MBA</option>
                <option value="MSC">MSC</option>
            </select>
        </th>
        <th>Subject</th>
        <th>Attendance status</th>
        <th>Date</th>
    </tr>
    <c:forEach var="A" items="${AList}">
        <tr class="attendanceRow" data-department="${A.dname}">
            <td>${A.sname}</td>
            <td>${A.sregno}</td>
            <td>${A.dname}</td>
            <td>${A.subject}</td>
            <td style="color:blue">${A.attendence}</td>
            <td>${A.doc}</td>
        </tr>
    </c:forEach>
</table>

<script>
    document.getElementById('departmentFilter').addEventListener('change', function() {
        var department = this.value;
        var rows = document.getElementsByClassName('attendanceRow');
        for (var i = 0; i < rows.length; i++) {
            var row = rows[i];
            if (department === '' || row.getAttribute('data-department') === department) {
                row.style.display = '';
            } else {
                row.style.display = 'none';
            }
        }
    });
</script>






</body>
</html>
