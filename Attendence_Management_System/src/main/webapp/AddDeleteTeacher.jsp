<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    
    
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Manage Teachers</title>
<style>
    body {
        font-family: Arial, sans-serif;
         background-image: url('teacher1.jpg'); 
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
       
    }
    .container {
        max-width: 800px;
        margin: 50px auto;
        padding: 20px;
        background-color: rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        box-shadow: 0 
    }
    h2 {
        text-align: center;
        color: #333;
    }
    form {
        margin-top: 20px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        color: #666;
    }
    input[type="text"],
    input[type="tel"],
    input[type="date"],
    input[type="email"],
    input[type="password"],
    select {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
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
    }
    input[type="submit"]:hover {
        background-color: #45a049;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
    }
    th, td {
        padding: 8px;
        text-align: left;
        border-bottom: 1px solid #ddd;
    }
    th {
        background-color: #f2f2f2;
    }
</style>
</head>
<body>

<div class="container">

    <h2>Add Teachers</h2>
    <form Action="AttendenceServlet">
        <label for="teacherName">Name:</label>
        <input type="text" id="teacherName" name="tname" required>

        <label for="teacherPhone">Phone:</label>
        <input type="tel" id="teacherPhone" name="tPhone" required>

        <label for="teacherDOB">Date of Birth:</label>
        <input type="text" id="teacherDOB" name="dob" required>

        <label for="teacherEmail">Email:</label>
        <input type="email" id="teacherEmail" name="temail" required>

        <label for="teacherSubject">Subject:</label>
        <input type="text" id="teacherSubject" name="subject" required>

        <label for="teacherDepartment">Department:</label>
        <select id="teacherDepartment" name="dname" required>
            <option value="">Select Department</option>
            <option value="MCA">MCA</option>
            <option value="MBA">MBA</option>
            <option value="MSC">MSC</option>
            <!-- Add more options as needed -->
        </select>

        <input type="submit" value="Insert Teacher" name="action">
    </form>

    
      <c:forEach var="teacher" items="${TList}">
        <tr>
                <th>${teacher.tname}</th>
                <th>${teacher.tphone}</th>
                <th>${teacher.dob}</th>
                <th>${teacher.temail}</th>
                <th>${teacher.subject}</th>
                <th>${teacher.dname}</th>
              
                      
            </tr>
            </c:forEach>
        <tbody>
           
        </tbody>
    </table>
</div>

<script>
    document.getElementById('teacherForm').addEventListener('submit', function(e) {
        e.preventDefault();
        var formData = new FormData(this);
        var teacherDetails = {};
        formData.forEach(function(value, key){
            teacherDetails[key] = value;
        });

        // Add teacher details to the table
        addTeacherRow(teacherDetails);

        // Clear the form fields
        document.getElementById('teacherForm').reset();
    });

    function addTeacherRow(teacherDetails) {
        var tableBody = document.getElementById('teacherTable').getElementsByTagName('tbody')[0];
        var newRow = tableBody.insertRow(tableBody.rows.length);
        newRow.innerHTML = `
            <td>${teacherDetails.tname}</td>
            <td>${teacherDetails.tphone}</td>
            <td>${teacherDetails.dob}</td>
            <td>${teacherDetails.temail}</td>
            <td>${teacherDetails.subject}</td>
            <td>${teacherDetails.dname}</td>
            <td><button onclick="delete Teacher(this)">Delete</button></td>
        
    }

    function deleteTeacher(btn) {
        var row = btn.parentNode.parentNode;
        row.parentNode.removeChild(row);
    }
</script>

</body>
</html>
