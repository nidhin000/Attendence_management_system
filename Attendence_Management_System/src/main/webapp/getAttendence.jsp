<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     
     
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Attendance Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }
    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    label {
        display: block;
        margin-bottom: 10px;
    }
    select, input[type="date"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
    }
    button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 5px;
        cursor: pointer;
    }
    button:hover {
        background-color: #0056b3;
    }
    table {
        width: 100%;
        border-collapse: collapse;
    }
    th, td {
        padding: 8px;
        border-bottom: 1px solid #ddd;
        text-align: left;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<div class="container" action="AttendenceServlet">
    <h2>Student Attendance Details</h2>
    <form id="attendanceForm">
        <label for="department">Select Department:</label>
        <select id="department">
            <option value="MCA">MCA</option>
            <option value="MBA">MBA</option>
            <option value="MSC">MSC</option>
            <!-- Add more options as needed -->
        </select>
        <label for="date">Select Date:</label>
        <input type="date" id="date" required>
        <button type="button" onclick="getAttendance()">Get Attendance</button>
    </form>

    <div id="attendanceDetails">
        <!-- Attendance details will be displayed here -->
    </div>
</div>

<script>
function getAttendance() {
    var department = document.getElementById("department").value;
    var date = document.getElementById("date").value;

    // You can send the department and date to the server via AJAX to retrieve student attendance details
    // For demonstration purposes, let's assume we have some hardcoded data

    var studentsAttendance = [
        { name: "John ", regno: "123", department: "MCA", attendanceStatus: "Present" },
        { name: " Doe", regno: "456", department: "MCA", attendanceStatus: "Present" },
        { name: "Jane Smith", regno: "789", department: "MBA", attendanceStatus: "Absent" },
        { name: "Alice ", regno: "101", department: "MSC", attendanceStatus: "Present" },
        { name: "Johnson", regno: "102", department: "MSC", attendanceStatus: "Present" }
        // Add more student data as needed
    ];

    var filteredStudents = studentsAttendance.filter(function(student) {
        return student.department === department;
    });

    var attendanceHTML = "<table><tr><th>Name</th><th>Registration Number</th><th>Department</th><th>Attendance Status</th></tr>";

    filteredStudents.forEach(function(student) {
        attendanceHTML += "<tr>";
        attendanceHTML += "<td>" + student.Sname + "</td>";
        attendanceHTML += "<td>" + student.Sregno + "</td>";
        attendanceHTML += "<td>" + student.Dname + "</td>";
        attendanceHTML += "<td>" + student.attendanceStatus + "</td>";
        attendanceHTML += "</tr>";
    });

    attendanceHTML += "</table>";

    document.getElementById("attendanceDetails").innerHTML = attendanceHTML;
}
</script>

</body>
</html>
