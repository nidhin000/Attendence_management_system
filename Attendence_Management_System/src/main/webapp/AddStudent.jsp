<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add Student Details</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('A.jpg'); 
        background-size: cover;
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
    .container {
        max-width: 500px;
        margin: 50px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.4); /* Adjust the background color opacity */
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h2 {
        text-align: center;
        color: rgb(12, 12, 12);
    }
    form {
        margin-top: 20px;
    }
    label {
        display: block;
        margin-bottom: 5px;
        color: rgb(12, 12, 12);
    }
    input[type="text"],
    input[type="number"],
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
</style>
</head>
<body>

<div class="container">
    <h2>Add Student Details</h2>
    <form action="AttendenceServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required>

        <label for="regno">Registration Number:</label>
        <input type="text" id="regno" name="regno" required>

        <label for="department">Department:</label>
        <input type="text" id="department" name="dname" required>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" required>

        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
            <option value="">Select Gender</option>
            <option value="male">Male</option>
            <option value="female">Female</option>
        </select>

        <input type="submit" value="Insert Student" name="action">
    </form>
</div>

</body>
</html>
